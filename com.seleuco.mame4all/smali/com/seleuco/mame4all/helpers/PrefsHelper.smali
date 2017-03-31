.class public Lcom/seleuco/mame4all/helpers/PrefsHelper;
.super Ljava/lang/Object;
.source "PrefsHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final PREF_15X:I = 0x2

.field public static final PREF_20X:I = 0x3

.field public static final PREF_25X:I = 0x4

.field public static final PREF_ANALOG_DZ:Ljava/lang/String; = "PREF_ANALOG_DZ"

.field public static final PREF_ANALOG_FAST:I = 0x2

.field public static final PREF_ANALOG_PRETTY:I = 0x3

.field public static final PREF_ANIMATED_INPUT:Ljava/lang/String; = "PREF_ANIMATED_INPUT"

.field public static final PREF_CONTROLLER_TYPE:Ljava/lang/String; = "PREF_CONTROLLER_TYPE"

.field public static final PREF_CRT_1:I = 0x4

.field public static final PREF_CRT_2:I = 0x5

.field public static final PREF_DEFINED_CONTROL_LAYOUT:Ljava/lang/String; = "PREF_DEFINED_CONTROL_LAYOUT"

.field public static final PREF_DEFINED_KEYS:Ljava/lang/String; = "PREF_DEFINED_KEYS"

.field public static final PREF_DIGITAL:I = 0x1

.field public static final PREF_FILTER_NONE:I = 0x1

.field public static final PREF_FILTER_SCANLINE_1:I = 0x2

.field public static final PREF_FILTER_SCANLINE_2:I = 0x3

.field public static final PREF_GLOBAL_ASMCORES:Ljava/lang/String; = "PREF_GLOBAL_ASMCORES"

.field public static final PREF_GLOBAL_DEBUG:Ljava/lang/String; = "PREF_GLOBAL_DEBUG"

.field public static final PREF_GLOBAL_IDLE_WAIT:Ljava/lang/String; = "PREF_GLOBAL_IDLE_WAIT"

.field public static final PREF_GLOBAL_SHOW_FPS:Ljava/lang/String; = "PREF_GLOBAL_SHOW_FPS"

.field public static final PREF_GLOBAL_SHOW_INFOWARNINGS:Ljava/lang/String; = "PREF_GLOBAL_SHOW_INFOWARNINGS"

.field public static final PREF_GLOBAL_SOUND_THREADED:Ljava/lang/String; = "PREF_GLOBAL_SOUND_THREADED"

.field public static final PREF_GLOBAL_VIDEO_RENDER_MODE:Ljava/lang/String; = "PREF_GLOBAL_VIDEO_RENDER_MODE"

.field public static final PREF_INPUT_DEFAULT:I = 0x1

.field public static final PREF_INPUT_EXTERNAL:Ljava/lang/String; = "PREF_INPUT_EXTERNAL"

.field public static final PREF_INPUT_ICADE:I = 0x2

.field public static final PREF_INPUT_ICP:I = 0x3

.field public static final PREF_LANDSCAPE_BITMAP_FILTERING:Ljava/lang/String; = "PREF_LANDSCAPE_BITMAP_FILTERING"

.field public static final PREF_LANDSCAPE_CONTROLLER_TYPE:Ljava/lang/String; = "PREF_LANDSCAPE_CONTROLLER_TYPE"

.field public static final PREF_LANDSCAPE_FILTER_TYPE:Ljava/lang/String; = "PREF_LANDSCAPE_FILTER_2"

.field public static final PREF_LANDSCAPE_SCALING_MODE:Ljava/lang/String; = "PREF_LANDSCAPE_SCALING_MODE_2"

.field public static final PREF_LANDSCAPE_TOUCH_CONTROLLER:Ljava/lang/String; = "PREF_LANDSCAPE_TOUCH_CONTROLLER"

.field public static final PREF_ORIGINAL:I = 0x1

.field public static final PREF_PORTRAIT_BITMAP_FILTERING:Ljava/lang/String; = "PREF_PORTRAIT_BITMAP_FILTERING"

.field public static final PREF_PORTRAIT_FILTER_TYPE:Ljava/lang/String; = "PREF_PORTRAIT_FILTER_2"

.field public static final PREF_PORTRAIT_SCALING_MODE:Ljava/lang/String; = "PREF_PORTRAIT_SCALING_MODE_2"

.field public static final PREF_PORTRAIT_TOUCH_CONTROLLER:Ljava/lang/String; = "PREF_PORTRAIT_TOUCH_CONTROLLER"

.field public static final PREF_RENDER_GL:I = 0x3

.field public static final PREF_RENDER_HW:I = 0x4

.field public static final PREF_RENDER_NORMAL:I = 0x1

.field public static final PREF_RENDER_THREADED:I = 0x2

.field public static final PREF_ROMsDIR:Ljava/lang/String; = "PREF_ROMsDIR"

.field public static final PREF_SCALE:I = 0x5

.field public static final PREF_STRETCH:I = 0x6

.field public static final PREF_TILT_DZ:Ljava/lang/String; = "PREF_TILT_DZ"

.field public static final PREF_TILT_SENSITIVITY:Ljava/lang/String; = "PREF_TILT_SENSITIVITY"

.field public static final PREF_TILT_SENSOR:Ljava/lang/String; = "PREF_TILT_SENSOR"

.field public static final PREF_TOUCH_DZ:Ljava/lang/String; = "PREF_TOUCH_DZ"

.field public static final PREF_TRACKBALL_NOMOVE:Ljava/lang/String; = "PREF_TRACKBALL_NOMOVE"

.field public static final PREF_TRACKBALL_SENSITIVITY:Ljava/lang/String; = "PREF_TRACKBALL_SENSITIVITY"

.field public static final PREF_VIBRATE:Ljava/lang/String; = "PREF_VIBRATE"


# instance fields
.field protected mm:Lcom/seleuco/mame4all/MAME4all;


# direct methods
.method public constructor <init>(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 1
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/helpers/PrefsHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 110
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/PrefsHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 111
    return-void
.end method


# virtual methods
.method public getAnalogDZ()I
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_ANALOG_DZ"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getControllerType()I
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_CONTROLLER_TYPE"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefinedControlLayout()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_DEFINED_CONTROL_LAYOUT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedKeys()Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 173
    .local v2, "p":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    .local v0, "defaultKeys":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->defaultKeyMapping:[I

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 178
    const-string v3, "PREF_DEFINED_KEYS"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 176
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/seleuco/mame4all/input/InputHandler;->defaultKeyMapping:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getInputExternal()I
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_INPUT_EXTERNAL"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLandscapeOverlayFilterType()I
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_LANDSCAPE_FILTER_2"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLandscapeScaleMode()I
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_LANDSCAPE_SCALING_MODE_2"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPortraitOverlayFilterType()I
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_PORTRAIT_FILTER_2"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPortraitScaleMode()I
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_PORTRAIT_SCALING_MODE_2"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getROMsDIR()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_ROMsDIR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/PrefsHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public getTiltDZ()I
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_TILT_DZ"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTiltSensitivity()I
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_TILT_SENSITIVITY"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTrackballSensitivity()I
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_TRACKBALL_SENSITIVITY"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoRenderMode()I
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_VIDEO_RENDER_MODE"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isASMCores()Z
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_ASMCORES"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAnimatedInput()Z
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_ANIMATED_INPUT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_DEBUG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFPSShowed()Z
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_SHOW_FPS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isIdleWait()Z
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_IDLE_WAIT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLandscapeBitmapFiltering()Z
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_LANDSCAPE_BITMAP_FILTERING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLandscapeTouchController()Z
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_LANDSCAPE_TOUCH_CONTROLLER"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPortraitBitmapFiltering()Z
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_PORTRAIT_BITMAP_FILTERING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPortraitTouchController()Z
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_PORTRAIT_TOUCH_CONTROLLER"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowInfoWarnings()Z
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_SHOW_INFOWARNINGS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSoundfThreaded()Z
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_SOUND_THREADED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTiltSensor()Z
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_TILT_SENSOR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTouchDZ()Z
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_TOUCH_DZ"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTrackballNoMove()Z
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_TRACKBALL_NOMOVE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVibrate()Z
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_VIBRATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 126
    iget-object v2, p0, Lcom/seleuco/mame4all/helpers/PrefsHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 130
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 118
    iget-object v2, p0, Lcom/seleuco/mame4all/helpers/PrefsHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 122
    return-void
.end method

.method public setDefinedControlLayout(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PREF_DEFINED_CONTROL_LAYOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method public setROMsDIR(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PREF_ROMsDIR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    return-void
.end method
