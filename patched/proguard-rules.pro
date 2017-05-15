# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\Lin\AppData\Local\Android\Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-obfuscationdictionary keywords.txt

#-classobfuscationdictionary keywords.txt
#-packageobfuscationdictionary keywords.txt

# Unity
-keep class bitter.jnibridge.** {*;}
-keep class com.unity3d.player.** {*;}
-keep class org.fmod.** {*;}

# Umeng
-keep class com.umeng.** {*;}
-keep class a.a.a.** {*;}
-keep class u.aly.** {*;}

-dontwarn com.google.**
-keep class com.google.** {*;}

# 当贝
-dontwarn com.db.android.api.**
-keep class com.db.android.api.** {*;}

-dontwarn com.nostalgiaemulators.**

-dontwarn com.seleuco.mame4all.**

-keep class *  implements java.io.Serializable {*;}

#-keep class com.sinyee.babybus.** {
#    public *;
#}
#
#-keep class com.babybus.bbmodule.system.jni.PlatformSystem
#-keepclassmembers class com.babybus.bbmodule.system.jni.PlatformSystem {
#    public *;
#}
#
#-keep class * extends com.babybus.plugins.BBPlugin
#-keepclassmembers class * extends com.babybus.plugins.BBPlugin {
#    public *;
#}
