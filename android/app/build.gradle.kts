import java.util.Properties
import java.io.FileInputStream
import java.util.Base64

plugins {
    id("com.android.application")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
    id("com.google.firebase.crashlytics")
    id("com.google.firebase.firebase-perf")
}

android {
    namespace = "br.com.curujatech.listaplus"
    compileSdk = 36
    ndkVersion = "28.2.13676358"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "br.com.curujatech.listaplus"
        minSdk = 24
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName

        ndk {
            abiFilters.addAll(listOf("armeabi-v7a", "arm64-v8a", "x86_64"))
        }
    }

    signingConfigs {
        create("release") {
            val keyPropsFile = rootProject.file("key.properties")
            if (keyPropsFile.exists()) {
                val keyProps = Properties()
                keyProps.load(FileInputStream(keyPropsFile))
                storeFile = file(keyProps.getProperty("storeFile"))
                storePassword = keyProps.getProperty("storePassword")
                keyAlias = keyProps.getProperty("keyAlias")
                keyPassword = keyProps.getProperty("keyPassword")
            }
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true
            isShrinkResources = true
            isDebuggable = false
            ndk {
                // "NONE" desabilita upload de símbolos para Crashlytics,
                // mas NÃO desabilita o strip do Gradle.
                // Com NDK 28 + AGP 8.11 no macOS ARM64, o llvm-strip
                // via Rosetta pode falhar — desabilitamos aqui também.
                debugSymbolLevel = "NONE"
            }
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }

    packaging {
        resources {
            merges += "META-INF/AL2.0"
            merges += "META-INF/LGPL2.1"
        }
    }
}

flutter {
    source = "../.."
}
