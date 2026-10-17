# Octomil SDK ProGuard Rules

# Keep public API classes
-keep class ai.octomil.client.OctomilClient { *; }
-keep class ai.octomil.client.OctomilClient$* { *; }
-keep class ai.octomil.config.OctomilConfig { *; }
-keep class ai.octomil.config.OctomilConfig$* { *; }

# Keep model classes
-keep class ai.octomil.models.** { *; }
-keep class ai.octomil.api.dto.** { *; }

# Keep training interfaces
-keep interface ai.octomil.training.** { *; }
-keep class ai.octomil.training.TFLiteTrainer { *; }

# Keep WorkManager workers
-keep class ai.octomil.sync.** { *; }

# TensorFlow Lite
-keep class org.tensorflow.lite.** { *; }
-keep class org.tensorflow.lite.support.** { *; }

# OkHttp
-dontwarn okhttp3.internal.platform.**
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**
