.class Lcom/seleuco/mame4all/input/TiltSensor$1;
.super Ljava/lang/Object;
.source "TiltSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seleuco/mame4all/input/TiltSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/input/TiltSensor;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/input/TiltSensor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/Sensor;
    .param p2, "res"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 108
    const v0, 0x3dcccccd    # 0.1f

    .line 110
    .local v0, "alpha":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v9

    neg-float v3, v4

    .line 113
    .local v3, "value":F
    :try_start_0
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 115
    .local v2, "r":I
    if-nez v2, :cond_4

    .line 116
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    neg-float v3, v4

    .line 125
    .end local v2    # "r":I
    :goto_0
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    const v5, 0x3dcccccd    # 0.1f

    iget-object v6, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F
    invoke-static {v6}, Lcom/seleuco/mame4all/input/TiltSensor;->access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v6

    mul-float/2addr v5, v6

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/seleuco/mame4all/input/TiltSensor;->access$1(Lcom/seleuco/mame4all/input/TiltSensor;F)V

    .line 127
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/TiltSensor;->getDZ()F

    move-result v1

    .line 129
    .local v1, "deadZone":F
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 131
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F
    invoke-static {v4}, Lcom/seleuco/mame4all/input/TiltSensor;->access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_7

    .line 133
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    and-int/lit8 v5, v5, -0x5

    aput v5, v4, v9

    .line 134
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    and-int/lit8 v5, v5, -0x41

    aput v5, v4, v9

    .line 135
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iput v9, v4, Lcom/seleuco/mame4all/input/TiltSensor;->old:I

    .line 150
    :goto_1
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v4, v4, v9

    int-to-long v4, v4

    invoke-static {v9, v4, v5}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 151
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->handleImageStates()V

    .line 162
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F
    invoke-static {v4}, Lcom/seleuco/mame4all/input/TiltSensor;->access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_a

    .line 164
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F
    invoke-static {v4}, Lcom/seleuco/mame4all/input/TiltSensor;->access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v4

    sub-float/2addr v4, v10

    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/TiltSensor;->getSensitivity()F

    move-result v5

    sub-float/2addr v5, v10

    div-float/2addr v4, v5

    sput v4, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    .line 165
    sget v4, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_1

    sput v11, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    .line 166
    :cond_1
    sget v4, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    sput v8, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    .line 172
    :cond_2
    :goto_3
    sget v4, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    invoke-static {v9, v4, v10}, Lcom/seleuco/mame4all/Emulator;->setAnalogData(IFF)V

    .line 174
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    const v5, 0x411cf5c3    # 9.81f

    iget-object v6, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F
    invoke-static {v6}, Lcom/seleuco/mame4all/input/TiltSensor;->access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v4, v5}, Lcom/seleuco/mame4all/input/TiltSensor;->access$2(Lcom/seleuco/mame4all/input/TiltSensor;F)V

    .line 177
    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->ang:F
    invoke-static {v4}, Lcom/seleuco/mame4all/input/TiltSensor;->access$3(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_b

    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->ang:F
    invoke-static {v4}, Lcom/seleuco/mame4all/input/TiltSensor;->access$3(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v4

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v4, v6

    neg-float v4, v4

    :goto_4
    invoke-static {v5, v4}, Lcom/seleuco/mame4all/input/TiltSensor;->access$2(Lcom/seleuco/mame4all/input/TiltSensor;F)V

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v5, v5, Lcom/seleuco/mame4all/input/TiltSensor;->df:Ljava/text/DecimalFormat;

    sget v6, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v5, v5, Lcom/seleuco/mame4all/input/TiltSensor;->df:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F
    invoke-static {v6}, Lcom/seleuco/mame4all/input/TiltSensor;->access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v5, v5, Lcom/seleuco/mame4all/input/TiltSensor;->df:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->ang:F
    invoke-static {v6}, Lcom/seleuco/mame4all/input/TiltSensor;->access$3(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/TiltSensor;->getDZ()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/TiltSensor;->getSensitivity()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v5, v5, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    iget-object v5, v5, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/seleuco/mame4all/input/TiltSensor;->str:Ljava/lang/String;

    .line 179
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    .line 181
    :cond_3
    return-void

    .line 117
    .end local v1    # "deadZone":F
    .restart local v2    # "r":I
    :cond_4
    if-ne v2, v7, :cond_5

    .line 118
    :try_start_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v3, v4, v5

    goto/16 :goto_0

    .line 119
    :cond_5
    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 120
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v3, v4, v5

    goto/16 :goto_0

    .line 122
    :cond_6
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    neg-float v3, v4

    goto/16 :goto_0

    .line 137
    .end local v2    # "r":I
    .restart local v1    # "deadZone":F
    :cond_7
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->tilt:F
    invoke-static {v4}, Lcom/seleuco/mame4all/input/TiltSensor;->access$0(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_8

    .line 139
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    or-int/lit8 v5, v5, 0x4

    aput v5, v4, v9

    .line 140
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    and-int/lit8 v5, v5, -0x41

    aput v5, v4, v9

    .line 141
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iput v7, v4, Lcom/seleuco/mame4all/input/TiltSensor;->old:I

    goto/16 :goto_1

    .line 145
    :cond_8
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    and-int/lit8 v5, v5, -0x5

    aput v5, v4, v9

    .line 146
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    or-int/lit8 v5, v5, 0x40

    aput v5, v4, v9

    .line 147
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    const/4 v5, 0x2

    iput v5, v4, Lcom/seleuco/mame4all/input/TiltSensor;->old:I

    goto/16 :goto_1

    .line 153
    :cond_9
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->old:I

    if-eqz v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    and-int/lit8 v5, v5, -0x5

    aput v5, v4, v9

    .line 156
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v4, v9

    and-int/lit8 v5, v5, -0x41

    aput v5, v4, v9

    .line 157
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iput v9, v4, Lcom/seleuco/mame4all/input/TiltSensor;->old:I

    .line 158
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v4, v4, v9

    int-to-long v4, v4

    invoke-static {v9, v4, v5}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 159
    iget-object v4, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v4, v4, Lcom/seleuco/mame4all/input/TiltSensor;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->handleImageStates()V

    goto/16 :goto_2

    .line 170
    :cond_a
    sput v10, Lcom/seleuco/mame4all/input/TiltSensor;->rx:F

    goto/16 :goto_3

    .line 177
    :cond_b
    const/high16 v4, 0x43340000    # 180.0f

    iget-object v6, p0, Lcom/seleuco/mame4all/input/TiltSensor$1;->this$0:Lcom/seleuco/mame4all/input/TiltSensor;

    # getter for: Lcom/seleuco/mame4all/input/TiltSensor;->ang:F
    invoke-static {v6}, Lcom/seleuco/mame4all/input/TiltSensor;->access$3(Lcom/seleuco/mame4all/input/TiltSensor;)F

    move-result v6

    sub-float/2addr v4, v6

    goto/16 :goto_4

    .line 123
    .end local v1    # "deadZone":F
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method
