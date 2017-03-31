.class public Lcom/seleuco/mame4all/input/TiltSensor;
.super Ljava/lang/Object;
.source "TiltSensor.java"


# static fields
.field private static final delay:I = 0x1

.field private static enabled:Z

.field public static rx:F

.field public static str:Ljava/lang/String;


# instance fields
.field private ang:F

.field df:Ljava/text/DecimalFormat;

.field private final listen:Landroid/hardware/SensorEventListener;

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field old:I

.field private tilt:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/seleuco/mame4all/input/TiltSensor;->enabled:Z

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "000.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/TiltSensor;->df:Ljava/text/DecimalFormat;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/seleuco/mame4all/input/TiltSensor;->old:I

    .line 105
    new-instance v0, Lcom/seleuco/mame4all/input/TiltSensor$1;

    invoke-direct {v0, p0}, Lcom/seleuco/mame4all/input/TiltSensor$1;-><init>(Lcom/seleuco/mame4all/input/TiltSensor;)V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/TiltSensor;->listen:Landroid/hardware/SensorEventListener;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F

    return v0
.end method

.method static synthetic access$1(Lcom/seleuco/mame4all/input/TiltSensor;F)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F

    return-void
.end method

.method static synthetic access$2(Lcom/seleuco/mame4all/input/TiltSensor;F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/seleuco/mame4all/input/TiltSensor;->ang:F

    return-void
.end method

.method static synthetic access$3(Lcom/seleuco/mame4all/input/TiltSensor;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/seleuco/mame4all/input/TiltSensor;->ang:F

    return v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/seleuco/mame4all/input/TiltSensor;->enabled:Z

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 95
    sget-boolean v1, Lcom/seleuco/mame4all/input/TiltSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 97
    .local v0, "man":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/seleuco/mame4all/input/TiltSensor;->listen:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 98
    const/4 v1, 0x0

    sput-boolean v1, Lcom/seleuco/mame4all/input/TiltSensor;->enabled:Z

    .line 100
    .end local v0    # "man":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 82
    sget-boolean v2, Lcom/seleuco/mame4all/input/TiltSensor;->enabled:Z

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    if-nez v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isTiltSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 88
    .local v1, "man":Landroid/hardware/SensorManager;
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 89
    .local v0, "acc_sensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/seleuco/mame4all/input/TiltSensor;->listen:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    sput-boolean v2, Lcom/seleuco/mame4all/input/TiltSensor;->enabled:Z

    goto :goto_0
.end method

.method protected getDZ()F
    .locals 2

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "v":F
    iget-object v1, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getTiltDZ()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 196
    :goto_0
    return v0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :pswitch_1
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    .line 192
    :pswitch_2
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    .line 193
    :pswitch_3
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 194
    :pswitch_4
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getSensitivity()F
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "v":F
    iget-object v1, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getTiltSensitivity()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_0
    return v0

    .line 203
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 204
    :pswitch_1
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 205
    :pswitch_2
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 206
    :pswitch_3
    const/high16 v0, 0x40200000    # 2.5f

    goto :goto_0

    .line 207
    :pswitch_4
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_0

    .line 208
    :pswitch_5
    const/high16 v0, 0x40600000    # 3.5f

    goto :goto_0

    .line 209
    :pswitch_6
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    .line 210
    :pswitch_7
    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_0

    .line 211
    :pswitch_8
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_0

    .line 212
    :pswitch_9
    const/high16 v0, 0x40b00000    # 5.5f

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 0
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 58
    return-void
.end method
