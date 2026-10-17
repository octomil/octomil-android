package ai.octomil.api

import okhttp3.CertificatePinner
import okhttp3.OkHttpClient

/** Single source for SDK OkHttp clients so certificate pinning applies uniformly. */
internal object OctomilHttp {
    @Volatile
    private var certificatePinner: CertificatePinner? = null

    fun configure(pinner: CertificatePinner?) {
        certificatePinner = pinner
    }

    // Clients built before configure() will not be pinned.
    fun newBuilder(): OkHttpClient.Builder =
        OkHttpClient.Builder().apply { certificatePinner?.let { certificatePinner(it) } }
}
