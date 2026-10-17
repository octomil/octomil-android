# Consumer ProGuard rules for Octomil SDK
# These rules are applied to apps that use this library

-keep class ai.octomil.client.OctomilClient { *; }
-keep class ai.octomil.config.OctomilConfig { *; }
-keep class ai.octomil.models.** { *; }
-keep class ai.octomil.training.** { *; }

# Engine JNI — keep all native method bindings
-keep class ai.octomil.runtime.nativebridge.** { *; }
-keep class com.k2fsa.sherpa.onnx.** { *; }
-keep class com.arm.aichat.** { *; }

# Keep Kotlin Serialization
-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.AnnotationsKt

-keepclassmembers class kotlinx.serialization.json.** {
    *** Companion;
}
-keepclasseswithmembers class kotlinx.serialization.json.** {
    kotlinx.serialization.KSerializer serializer(...);
}
-keep,includedescriptorclasses class ai.octomil.**$$serializer { *; }
-keepclassmembers class ai.octomil.** {
    *** Companion;
}
-keepclasseswithmembers class ai.octomil.** {
    kotlinx.serialization.KSerializer serializer(...);
}

# Retrofit
-keepattributes Signature, Exceptions
-keepclasseswithmembers class * {
    @retrofit2.http.* <methods>;
}
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
