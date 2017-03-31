.class public Lcom/seleuco/mame4all/input/InputHandler;
.super Ljava/lang/Object;
.source "InputHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/seleuco/mame4all/input/IController;


# static fields
.field public static final STATE_SHOWING_CONTROLLER:I = 0x1

.field public static final STATE_SHOWING_NONE:I = 0x3

.field public static final TYPE_ANALOG_RECT:I = 0x8

.field public static final TYPE_BUTTON_IMG:I = 0x5

.field public static final TYPE_BUTTON_RECT:I = 0x3

.field public static final TYPE_MAIN_RECT:I = 0x1

.field public static final TYPE_OPACITY:I = 0x7

.field public static final TYPE_STICK_IMG:I = 0x4

.field public static final TYPE_STICK_RECT:I = 0x2

.field public static final TYPE_SWITCH:I = 0x6

.field public static defaultKeyMapping:[I

.field protected static final emulatorInputValues:[I

.field public static keyMapping:[I


# instance fields
.field protected analogStick:Lcom/seleuco/mame4all/input/AnalogStick;

.field protected ax:I

.field protected ay:I

.field protected btnStates:[I

.field protected controlCustomizer:Lcom/seleuco/mame4all/input/ControlCustomizer;

.field private down_icade:Z

.field protected dx:F

.field protected dy:F

.field protected finishTrackBallMove:Ljava/lang/Runnable;

.field protected handler:Landroid/os/Handler;

.field private left_icade:Z

.field protected lock:Ljava/lang/Object;

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected newtouch:I

.field protected old_btnStates:[I

.field protected old_stick_state:I

.field protected oldtouch:I

.field protected pad_data:[I

.field private right_icade:Z

.field protected state:I

.field protected stick_state:I

.field protected tiltSensor:Lcom/seleuco/mame4all/input/TiltSensor;

.field protected touchstate:Z

.field protected trackballEnabled:Z

.field protected trackballSensitivity:I

.field private up_icade:Z

.field protected values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/seleuco/mame4all/input/InputValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/seleuco/mame4all/input/InputHandler;->emulatorInputValues:[I

    .line 100
    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/seleuco/mame4all/input/InputHandler;->defaultKeyMapping:[I

    .line 162
    sget-object v0, Lcom/seleuco/mame4all/input/InputHandler;->emulatorInputValues:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    .line 199
    return-void

    .line 71
    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x40
        0x2000
        0x4000
        0x1000
        0x8000
        0x400
        0x800
        0x200
        0x100
        0x10000
        0x20000
    .end array-data

    .line 100
    :array_1
    .array-data 4
        0x13
        0x14
        0x15
        0x16
        0x17
        0x4
        0x8
        0x1f
        0x36
        -0x1
        0x2c
        0x29
        0x24
        -0x1
        0x25
        0x27
        0x26
        0x2b
        0x11
        0x4c
        0x37
        0x38
        -0x1
        -0x1
        0x51
        0x45
        0x49
        -0x1
        0x5c
        0x5d
        0x59
        0x5a
        0x42
        0x43
        0x1
        0x2
        -0x1
        -0x1
        0x6b
        0x6a
        0x6e
        -0x1
        0x2a
        0x2d
        0x30
        0x4b
        0x5e
        0x5f
        0x53
        0x5b
        -0x1
        -0x1
        0x6c
        0x6d
        0x1c
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 7
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    const/4 v1, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v6, 0xa

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v3, Lcom/seleuco/mame4all/input/AnalogStick;

    invoke-direct {v3}, Lcom/seleuco/mame4all/input/AnalogStick;-><init>()V

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->analogStick:Lcom/seleuco/mame4all/input/AnalogStick;

    .line 60
    new-instance v3, Lcom/seleuco/mame4all/input/TiltSensor;

    invoke-direct {v3}, Lcom/seleuco/mame4all/input/TiltSensor;-><init>()V

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->tiltSensor:Lcom/seleuco/mame4all/input/TiltSensor;

    .line 61
    new-instance v3, Lcom/seleuco/mame4all/input/ControlCustomizer;

    invoke-direct {v3}, Lcom/seleuco/mame4all/input/ControlCustomizer;-><init>()V

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->controlCustomizer:Lcom/seleuco/mame4all/input/ControlCustomizer;

    .line 164
    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->ax:I

    .line 165
    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->ay:I

    .line 166
    iput v4, p0, Lcom/seleuco/mame4all/input/InputHandler;->dx:F

    .line 167
    iput v4, p0, Lcom/seleuco/mame4all/input/InputHandler;->dy:F

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    .line 171
    const/4 v3, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    .line 177
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->up_icade:Z

    .line 178
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->down_icade:Z

    .line 179
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->left_icade:Z

    .line 180
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->right_icade:Z

    .line 182
    const/16 v3, 0x1e

    iput v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->trackballSensitivity:I

    .line 183
    iput-boolean v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->trackballEnabled:Z

    .line 190
    iput v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    .line 209
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->btnStates:[I

    .line 214
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_btnStates:[I

    .line 216
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 220
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->handler:Landroid/os/Handler;

    .line 222
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->lock:Ljava/lang/Object;

    .line 224
    new-instance v3, Lcom/seleuco/mame4all/input/InputHandler$1;

    invoke-direct {v3, p0}, Lcom/seleuco/mame4all/input/InputHandler$1;-><init>(Lcom/seleuco/mame4all/input/InputHandler;)V

    iput-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->finishTrackBallMove:Ljava/lang/Runnable;

    .line 244
    iput-object p1, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 246
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 248
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isLandscapeTouchController()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    .line 255
    :goto_0
    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_stick_state:I

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v6, :cond_3

    .line 259
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->analogStick:Lcom/seleuco/mame4all/input/AnalogStick;

    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/AnalogStick;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 266
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->tiltSensor:Lcom/seleuco/mame4all/input/TiltSensor;

    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/TiltSensor;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 267
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->controlCustomizer:Lcom/seleuco/mame4all/input/ControlCustomizer;

    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/ControlCustomizer;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 268
    return-void

    .line 252
    .end local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isPortraitTouchController()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    iput v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    goto :goto_0

    .line 257
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->btnStates:[I

    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_btnStates:[I

    aput v2, v3, v0

    aput v2, v1, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aput v5, v1, v0

    .line 262
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v1, v0

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public changeState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 280
    iget v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    if-ne v1, v2, :cond_1

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 288
    const/4 v1, 0x3

    iput v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    .line 294
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 284
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 285
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v1, v0

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_1
    iput v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    goto :goto_1
.end method

.method protected dumpEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 889
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    .line 890
    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 891
    .local v3, "names":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 893
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 894
    .local v1, "actionCode":I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    if-eq v1, v7, :cond_0

    .line 896
    if-ne v1, v8, :cond_1

    .line 897
    :cond_0
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 899
    const v6, 0xff00

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x8

    .line 897
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_1
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 911
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v5, "touch"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void

    .line 904
    :cond_2
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 906
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 907
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 908
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 909
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected fixControllerCoords(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/seleuco/mame4all/input/InputValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    if-eqz p1, :cond_0

    .line 724
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 732
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 726
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    iget v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->dx:F

    iget v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->dy:F

    iget v4, p0, Lcom/seleuco/mame4all/input/InputHandler;->ax:I

    iget v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->ay:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/seleuco/mame4all/input/InputValue;->setFixData(FFII)V

    .line 728
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 729
    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->analogStick:Lcom/seleuco/mame4all/input/AnalogStick;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/seleuco/mame4all/input/AnalogStick;->setStickArea(Landroid/graphics/Rect;)V

    .line 724
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAllInputData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/seleuco/mame4all/input/InputValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnalogStick()Lcom/seleuco/mame4all/input/AnalogStick;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->analogStick:Lcom/seleuco/mame4all/input/AnalogStick;

    return-object v0
.end method

.method public getBtnStates()[I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->btnStates:[I

    return-object v0
.end method

.method getButtonValue(IZ)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "b"    # Z

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 851
    packed-switch p1, :pswitch_data_0

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 852
    :pswitch_0
    const v0, 0x8000

    goto :goto_0

    .line 854
    :pswitch_1
    invoke-static {v1}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 856
    const/16 v0, 0x7000

    goto :goto_0

    .line 860
    :cond_1
    const/16 v0, 0x1000

    goto :goto_0

    .line 862
    :pswitch_2
    const/16 v0, 0x2000

    goto :goto_0

    .line 863
    :pswitch_3
    const/16 v0, 0x4000

    goto :goto_0

    .line 865
    :pswitch_4
    const/16 v0, 0x400

    goto :goto_0

    .line 866
    :pswitch_5
    const/16 v0, 0x800

    goto :goto_0

    .line 867
    :pswitch_6
    const/high16 v0, 0x10000

    goto :goto_0

    .line 868
    :pswitch_7
    const/high16 v0, 0x20000

    goto :goto_0

    .line 870
    :pswitch_8
    const/16 v0, 0x200

    goto :goto_0

    .line 871
    :pswitch_9
    const/16 v0, 0x100

    goto :goto_0

    .line 873
    :pswitch_a
    const/16 v0, 0x5000

    goto :goto_0

    .line 875
    :pswitch_b
    invoke-static {v1}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 877
    const/16 v0, 0x6000

    goto :goto_0

    .line 882
    :pswitch_c
    const v0, 0x9000

    goto :goto_0

    .line 883
    :pswitch_d
    const v0, 0xa000

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getControlCustomizer()Lcom/seleuco/mame4all/input/ControlCustomizer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->controlCustomizer:Lcom/seleuco/mame4all/input/ControlCustomizer;

    return-object v0
.end method

.method public getInputHandlerState()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    return v0
.end method

.method public getMainRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 417
    :goto_0
    return-object v1

    .line 412
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    move-object v1, v2

    .line 417
    goto :goto_0

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 415
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getOrigRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 412
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    iget v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 742
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    .line 746
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 751
    :cond_1
    :goto_0
    return v2

    .line 746
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    .line 748
    .local v1, "v":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 749
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v2

    goto :goto_0
.end method

.method getStickValue(I)I
    .locals 7
    .param p1, "i"    # I

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x40

    const/4 v2, 0x4

    .line 807
    const/4 v6, 0x6

    invoke-static {v6}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v1

    .line 808
    .local v1, "ways":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v0

    .line 810
    .local v0, "b":Z
    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    if-eqz v0, :cond_0

    .line 812
    packed-switch p1, :pswitch_data_0

    .line 847
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    :goto_1
    :pswitch_1
    return v2

    :pswitch_2
    move v2, v3

    .line 814
    goto :goto_1

    :pswitch_3
    move v2, v3

    .line 816
    goto :goto_1

    :pswitch_4
    move v2, v3

    .line 818
    goto :goto_1

    .line 821
    :cond_0
    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 823
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v2, v4

    .line 825
    goto :goto_1

    :pswitch_6
    move v2, v3

    .line 826
    goto :goto_1

    :pswitch_7
    move v2, v3

    .line 828
    goto :goto_1

    :pswitch_8
    move v2, v5

    .line 830
    goto :goto_1

    :pswitch_9
    move v2, v3

    .line 831
    goto :goto_1

    .line 836
    :cond_1
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 837
    :pswitch_a
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_b
    move v2, v4

    .line 838
    goto :goto_1

    .line 839
    :pswitch_c
    const/16 v2, 0x41

    goto :goto_1

    :pswitch_d
    move v2, v3

    .line 841
    goto :goto_1

    .line 842
    :pswitch_e
    const/16 v2, 0x14

    goto :goto_1

    :pswitch_f
    move v2, v5

    .line 843
    goto :goto_1

    .line 844
    :pswitch_10
    const/16 v2, 0x50

    goto :goto_1

    .line 812
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 823
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 836
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getStick_state()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    return v0
.end method

.method public getTiltSensor()Lcom/seleuco/mame4all/input/TiltSensor;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->tiltSensor:Lcom/seleuco/mame4all/input/TiltSensor;

    return-object v0
.end method

.method protected handleIcade(Landroid/view/KeyEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x4

    const/4 v6, 0x0

    .line 918
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 919
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1098
    :goto_0
    return-void

    .line 922
    :cond_0
    const/4 v7, 0x6

    invoke-static {v7}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v4

    .line 923
    .local v4, "ways":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v1

    .line 925
    .local v1, "b":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 927
    .local v3, "keyCode":I
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getInputExternal()I

    move-result v7

    if-ne v7, v9, :cond_1

    move v2, v5

    .line 929
    .local v2, "bCadeLayout":Z
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 1097
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v5, v6

    int-to-long v7, v5

    invoke-static {v6, v7, v8}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    goto :goto_0

    .end local v2    # "bCadeLayout":Z
    :cond_1
    move v2, v6

    .line 927
    goto :goto_1

    .line 933
    .restart local v2    # "bCadeLayout":Z
    :pswitch_1
    if-ne v4, v8, :cond_2

    if-eqz v1, :cond_2

    .line 935
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x5

    aput v8, v7, v6

    .line 936
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x41

    aput v8, v7, v6

    .line 938
    :cond_2
    if-ne v4, v9, :cond_3

    if-nez v1, :cond_4

    .line 939
    :cond_3
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    or-int/lit8 v8, v8, 0x1

    aput v8, v7, v6

    .line 940
    :cond_4
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->up_icade:Z

    goto :goto_2

    .line 943
    :pswitch_2
    if-ne v4, v8, :cond_6

    if-eqz v1, :cond_6

    .line 945
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->left_icade:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x4

    aput v7, v5, v6

    .line 946
    :cond_5
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->right_icade:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x40

    aput v7, v5, v6

    .line 948
    :cond_6
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit8 v7, v7, -0x2

    aput v7, v5, v6

    .line 949
    iput-boolean v6, p0, Lcom/seleuco/mame4all/input/InputHandler;->up_icade:Z

    goto :goto_2

    .line 954
    :pswitch_3
    if-ne v4, v8, :cond_7

    if-eqz v1, :cond_7

    .line 956
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x5

    aput v8, v7, v6

    .line 957
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x41

    aput v8, v7, v6

    .line 959
    :cond_7
    if-ne v4, v9, :cond_8

    if-nez v1, :cond_9

    .line 960
    :cond_8
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    or-int/lit8 v8, v8, 0x10

    aput v8, v7, v6

    .line 961
    :cond_9
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->down_icade:Z

    goto :goto_2

    .line 964
    :pswitch_4
    if-ne v4, v8, :cond_b

    if-eqz v1, :cond_b

    .line 966
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->left_icade:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x4

    aput v7, v5, v6

    .line 967
    :cond_a
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->right_icade:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x40

    aput v7, v5, v6

    .line 969
    :cond_b
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit8 v7, v7, -0x11

    aput v7, v5, v6

    .line 970
    iput-boolean v6, p0, Lcom/seleuco/mame4all/input/InputHandler;->down_icade:Z

    goto/16 :goto_2

    .line 975
    :pswitch_5
    if-ne v4, v8, :cond_c

    if-eqz v1, :cond_c

    .line 977
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x2

    aput v8, v7, v6

    .line 978
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x11

    aput v8, v7, v6

    .line 980
    :cond_c
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    or-int/lit8 v8, v8, 0x40

    aput v8, v7, v6

    .line 981
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->right_icade:Z

    goto/16 :goto_2

    .line 984
    :pswitch_6
    if-ne v4, v8, :cond_e

    if-eqz v1, :cond_e

    .line 986
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->up_icade:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 987
    :cond_d
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->down_icade:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x10

    aput v7, v5, v6

    .line 989
    :cond_e
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit8 v7, v7, -0x41

    aput v7, v5, v6

    .line 990
    iput-boolean v6, p0, Lcom/seleuco/mame4all/input/InputHandler;->right_icade:Z

    goto/16 :goto_2

    .line 995
    :pswitch_7
    if-ne v4, v8, :cond_f

    if-eqz v1, :cond_f

    .line 997
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x2

    aput v8, v7, v6

    .line 998
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    and-int/lit8 v8, v8, -0x11

    aput v8, v7, v6

    .line 1000
    :cond_f
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v6

    or-int/lit8 v8, v8, 0x4

    aput v8, v7, v6

    .line 1001
    iput-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->left_icade:Z

    goto/16 :goto_2

    .line 1004
    :pswitch_8
    if-ne v4, v8, :cond_11

    if-eqz v1, :cond_11

    .line 1006
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->up_icade:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 1007
    :cond_10
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->down_icade:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit8 v7, v7, 0x10

    aput v7, v5, v6

    .line 1009
    :cond_11
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit8 v7, v7, -0x5

    aput v7, v5, v6

    .line 1010
    iput-boolean v6, p0, Lcom/seleuco/mame4all/input/InputHandler;->left_icade:Z

    goto/16 :goto_2

    .line 1015
    :pswitch_9
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    const v8, 0x8000

    or-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1018
    :pswitch_a
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    const v8, -0x8001

    and-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1023
    :pswitch_b
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x4000

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1026
    :pswitch_c
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x4001

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1031
    :pswitch_d
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x1000

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1034
    :pswitch_e
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x1001

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1039
    :pswitch_f
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x2000

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1042
    :pswitch_10
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x2001

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1047
    :pswitch_11
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x200

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1050
    :pswitch_12
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x201

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1055
    :pswitch_13
    if-eqz v2, :cond_12

    .line 1056
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x400

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1059
    :cond_12
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x100

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1063
    :pswitch_14
    if-eqz v2, :cond_13

    .line 1064
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x401

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1067
    :cond_13
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x101

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1073
    :pswitch_15
    if-eqz v2, :cond_14

    .line 1074
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x100

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1077
    :cond_14
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x400

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1081
    :pswitch_16
    if-eqz v2, :cond_15

    .line 1082
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x101

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1085
    :cond_15
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x401

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1091
    :pswitch_17
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    or-int/lit16 v7, v7, 0x800

    aput v7, v5, v6

    goto/16 :goto_2

    .line 1094
    :pswitch_18
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v5, v6

    and-int/lit16 v7, v7, -0x801

    aput v7, v5, v6

    goto/16 :goto_2

    .line 929
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_14
        :pswitch_10
        :pswitch_15
        :pswitch_9
        :pswitch_17
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_18
        :pswitch_f
        :pswitch_e
        :pswitch_8
        :pswitch_16
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_c
        :pswitch_1
        :pswitch_3
        :pswitch_11
        :pswitch_4
    .end packed-switch
.end method

.method protected handleImageStates()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const-wide/16 v11, 0xf

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 467
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v3

    .line 469
    .local v3, "pH":Lcom/seleuco/mame4all/helpers/PrefsHelper;
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isAnimatedInput()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isVibrate()Z

    move-result v5

    if-nez v5, :cond_1

    .line 541
    :cond_0
    return-void

    .line 472
    :cond_1
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x55

    sparse-switch v5, :sswitch_data_0

    .line 484
    iput v6, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    .line 487
    :goto_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 488
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    .line 489
    .local v1, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    if-ne v5, v14, :cond_5

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 491
    iget v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    iget v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_stick_state:I

    if-eq v5, v8, :cond_4

    .line 493
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isAnimatedInput()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/views/InputView;->invalidate(Landroid/graphics/Rect;)V

    .line 495
    :cond_2
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isVibrate()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 497
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/MAME4all;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 498
    .local v4, "v":Landroid/os/Vibrator;
    if-eqz v4, :cond_3

    invoke-virtual {v4, v11, v12}, Landroid/os/Vibrator;->vibrate(J)V

    .line 500
    .end local v4    # "v":Landroid/os/Vibrator;
    :cond_3
    iget v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_stick_state:I

    .line 487
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 474
    .end local v1    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .end local v2    # "j":I
    :sswitch_0
    iput v13, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 475
    :sswitch_1
    const/4 v5, 0x7

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 476
    :sswitch_2
    iput v14, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 477
    :sswitch_3
    const/4 v5, 0x5

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 479
    :sswitch_4
    iput v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 480
    :sswitch_5
    const/4 v5, 0x3

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 481
    :sswitch_6
    const/4 v5, 0x6

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 482
    :sswitch_7
    const/16 v5, 0x8

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    goto :goto_0

    .line 503
    .restart local v1    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v2    # "j":I
    :cond_5
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_9

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v5

    if-eq v5, v7, :cond_9

    .line 505
    iget v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    iget v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_stick_state:I

    if-eq v5, v8, :cond_4

    .line 507
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isAnimatedInput()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v5

    if-ne v5, v13, :cond_6

    .line 509
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 510
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    .line 514
    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isVibrate()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 516
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/MAME4all;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 517
    .restart local v4    # "v":Landroid/os/Vibrator;
    if-eqz v4, :cond_7

    invoke-virtual {v4, v11, v12}, Landroid/os/Vibrator;->vibrate(J)V

    .line 519
    .end local v4    # "v":Landroid/os/Vibrator;
    :cond_7
    iget v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->stick_state:I

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_stick_state:I

    goto :goto_2

    .line 512
    :cond_8
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/views/InputView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 522
    :cond_9
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_4

    .line 524
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v0

    .line 526
    .local v0, "i":I
    iget-object v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->btnStates:[I

    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v5, v6

    invoke-virtual {p0, v0, v6}, Lcom/seleuco/mame4all/input/InputHandler;->getButtonValue(IZ)I

    move-result v9

    and-int/2addr v5, v9

    if-eqz v5, :cond_c

    move v5, v6

    :goto_4
    aput v5, v8, v0

    .line 528
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->btnStates:[I

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v8

    aget v5, v5, v8

    iget-object v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_btnStates:[I

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v9

    aget v8, v8, v9

    if-eq v5, v8, :cond_4

    .line 530
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isAnimatedInput()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 531
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/views/InputView;->invalidate(Landroid/graphics/Rect;)V

    .line 532
    :cond_a
    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isVibrate()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 534
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/MAME4all;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 535
    .restart local v4    # "v":Landroid/os/Vibrator;
    if-eqz v4, :cond_b

    invoke-virtual {v4, v11, v12}, Landroid/os/Vibrator;->vibrate(J)V

    .line 537
    .end local v4    # "v":Landroid/os/Vibrator;
    :cond_b
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->old_btnStates:[I

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v8

    iget-object v9, p0, Lcom/seleuco/mame4all/input/InputHandler;->btnStates:[I

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v10

    aget v9, v9, v10

    aput v9, v5, v8

    goto/16 :goto_2

    :cond_c
    move v5, v7

    .line 526
    goto :goto_4

    .line 472
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x10 -> :sswitch_1
        0x14 -> :sswitch_6
        0x40 -> :sswitch_3
        0x41 -> :sswitch_5
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method protected handlePADKey(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "value"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 323
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->emulatorInputValues:[I

    sget-object v4, Lcom/seleuco/mame4all/input/InputHandler;->emulatorInputValues:[I

    array-length v4, v4

    rem-int v4, p1, v4

    aget v2, v3, v4

    .line 325
    .local v2, "v":I
    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_1

    .line 327
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3, v5}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 353
    :goto_0
    return v5

    .line 333
    :cond_0
    invoke-static {v6, v5}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 335
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_1
    const/4 v3, 0x0

    invoke-static {v6, v3}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 342
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_2

    .line 344
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 348
    :cond_2
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->emulatorInputValues:[I

    array-length v3, v3

    div-int v1, p1, v3

    .line 349
    .local v1, "i":I
    invoke-virtual {p0, v1, p2, v2}, Lcom/seleuco/mame4all/input/InputHandler;->setPadData(ILandroid/view/KeyEvent;I)Z

    .line 350
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    goto :goto_0
.end method

.method protected handleTouchController(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 547
    .local v0, "action":I
    iget v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->newtouch:I

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->oldtouch:I

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 550
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 552
    .local v4, "y":I
    if-eq v0, v9, :cond_0

    if-ne v0, v7, :cond_3

    .line 553
    :cond_0
    iput-boolean v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->touchstate:Z

    .line 615
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->touchstate:Z

    if-nez v5, :cond_2

    .line 617
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v6, v5, v8

    iget v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->oldtouch:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v5, v8

    .line 618
    iput v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->newtouch:I

    .line 619
    iput v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->oldtouch:I

    .line 622
    :cond_2
    invoke-virtual {p0}, Lcom/seleuco/mame4all/input/InputHandler;->handleImageStates()V

    .line 624
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v5, v5, v8

    int-to-long v5, v5

    invoke-static {v8, v5, v6}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 626
    return v9

    .line 557
    :cond_3
    iput-boolean v9, p0, Lcom/seleuco/mame4all/input/InputHandler;->touchstate:Z

    .line 559
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 560
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    .line 562
    .local v1, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 564
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    if-eq v5, v7, :cond_4

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 566
    :cond_4
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 572
    :pswitch_1
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    if-ne v5, v7, :cond_9

    .line 574
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    invoke-virtual {p0, v5, v9}, Lcom/seleuco/mame4all/input/InputHandler;->getButtonValue(IZ)I

    move-result v5

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->newtouch:I

    .line 576
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 578
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v5

    if-nez v5, :cond_7

    .line 579
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5, v9}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 594
    :cond_5
    :goto_2
    iget v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->oldtouch:I

    iget v6, p0, Lcom/seleuco/mame4all/input/InputHandler;->newtouch:I

    if-eq v5, v6, :cond_6

    .line 595
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v6, v5, v8

    iget v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->oldtouch:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v5, v8

    .line 596
    :cond_6
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v6, v5, v8

    iget v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->newtouch:I

    or-int/2addr v6, v7

    aput v6, v5, v8

    goto/16 :goto_0

    .line 581
    :cond_7
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_2

    .line 583
    :cond_8
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    .line 585
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_2

    .line 588
    :cond_9
    iget-object v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 589
    invoke-static {}, Lcom/seleuco/mame4all/input/TiltSensor;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v5

    if-nez v5, :cond_5

    .line 591
    :cond_a
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/seleuco/mame4all/input/InputHandler;->getStickValue(I)I

    move-result v5

    iput v5, p0, Lcom/seleuco/mame4all/input/InputHandler;->newtouch:I

    goto :goto_2

    .line 559
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleVirtualKey(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    const/4 v4, 0x0

    .line 388
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v2, v1, v4

    or-int/2addr v2, p1

    aput v2, v1, v4

    .line 389
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v1, v4

    int-to-long v1, v1

    invoke-static {v4, v1, v2}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 392
    const-wide/16 v1, 0x96

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v2, v1, v4

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    aput v2, v1, v4

    .line 397
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v1, v4

    int-to-long v1, v1

    invoke-static {v4, v1, v2}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 399
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 359
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 383
    :cond_0
    :goto_0
    return v2

    .line 368
    :cond_1
    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getInputExternal()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 370
    invoke-virtual {p0, p3}, Lcom/seleuco/mame4all/input/InputHandler;->handleIcade(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 374
    :cond_2
    const/4 v1, -0x1

    .line 375
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 380
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 381
    invoke-virtual {p0, v1, p3}, Lcom/seleuco/mame4all/input/InputHandler;->handlePADKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 376
    :cond_4
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    aget v3, v3, v0

    if-ne v3, p2, :cond_5

    .line 377
    move v1, v0

    .line 375
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 633
    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 635
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->controlCustomizer:Lcom/seleuco/mame4all/input/ControlCustomizer;

    invoke-virtual {v1, p2}, Lcom/seleuco/mame4all/input/ControlCustomizer;->handleMotion(Landroid/view/MotionEvent;)V

    .line 656
    :goto_0
    return v0

    .line 642
    :cond_0
    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v2

    if-eq v2, v0, :cond_2

    invoke-static {}, Lcom/seleuco/mame4all/input/TiltSensor;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v2

    if-nez v2, :cond_2

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    iget-object v3, p0, Lcom/seleuco/mame4all/input/InputHandler;->analogStick:Lcom/seleuco/mame4all/input/AnalogStick;

    iget-object v4, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v4, v4, v1

    invoke-virtual {v3, p2, v4}, Lcom/seleuco/mame4all/input/AnalogStick;->handleMotion(Landroid/view/MotionEvent;I)I

    move-result v3

    aput v3, v2, v1

    .line 644
    :cond_2
    invoke-virtual {p0, p2}, Lcom/seleuco/mame4all/input/InputHandler;->handleTouchController(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 651
    :cond_3
    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v2

    if-ne v2, v0, :cond_4

    iget v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    if-eq v2, v4, :cond_4

    move v0, v1

    .line 652
    goto :goto_0

    .line 653
    :cond_4
    iget-object v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    if-eq v2, v4, :cond_5

    move v0, v1

    .line 654
    goto :goto_0

    .line 655
    :cond_5
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 662
    const/4 v1, 0x0

    .line 664
    .local v1, "gap":I
    iget-boolean v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->trackballEnabled:Z

    if-nez v7, :cond_0

    .line 718
    :goto_0
    return v5

    .line 666
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 668
    .local v0, "action":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    .line 670
    const/4 v2, 0x0

    .line 672
    .local v2, "newtrack":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 673
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 679
    .local v4, "y":F
    neg-int v7, v1

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .line 680
    or-int/lit8 v2, v2, 0x1

    .line 687
    :cond_1
    :goto_1
    neg-int v7, v1

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_5

    .line 688
    or-int/lit8 v2, v2, 0x4

    .line 698
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->finishTrackBallMove:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/seleuco/mame4all/input/InputHandler;->finishTrackBallMove:Ljava/lang/Runnable;

    iget v9, p0, Lcom/seleuco/mame4all/input/InputHandler;->trackballSensitivity:I

    mul-int/lit16 v9, v9, 0x96

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    if-eqz v2, :cond_3

    .line 702
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v5

    and-int/lit8 v8, v8, -0x2

    aput v8, v7, v5

    .line 703
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v5

    and-int/lit8 v8, v8, -0x11

    aput v8, v7, v5

    .line 704
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v5

    and-int/lit8 v8, v8, -0x5

    aput v8, v7, v5

    .line 705
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v5

    and-int/lit8 v8, v8, -0x41

    aput v8, v7, v5

    .line 706
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v5

    or-int/2addr v8, v2

    aput v8, v7, v5

    .line 716
    .end local v2    # "newtrack":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v7, v7, v5

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    move v5, v6

    .line 718
    goto :goto_0

    .line 682
    .restart local v2    # "newtrack":I
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_4
    int-to-float v7, v1

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    .line 683
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 690
    :cond_5
    int-to-float v7, v1

    cmpl-float v7, v3, v7

    if-lez v7, :cond_2

    .line 691
    or-int/lit8 v2, v2, 0x40

    goto :goto_2

    .line 709
    .end local v2    # "newtrack":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_6
    if-nez v0, :cond_7

    .line 710
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v5

    or-int/lit16 v8, v8, 0x2000

    aput v8, v7, v5

    goto :goto_3

    .line 712
    :cond_7
    if-ne v0, v6, :cond_3

    .line 713
    iget-object v7, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v8, v7, v5

    and-int/lit16 v8, v8, -0x2001

    aput v8, v7, v5

    goto :goto_3
.end method

.method public readControllerValues(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/seleuco/mame4all/input/InputHandler;->readInputValues(ILjava/util/ArrayList;)V

    .line 756
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/input/InputHandler;->fixControllerCoords(Ljava/util/ArrayList;)V

    .line 757
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->controlCustomizer:Lcom/seleuco/mame4all/input/ControlCustomizer;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->controlCustomizer:Lcom/seleuco/mame4all/input/ControlCustomizer;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/ControlCustomizer;->readDefinedControlLayout()V

    .line 759
    :cond_0
    return-void
.end method

.method protected readInputValues(ILjava/util/ArrayList;)V
    .locals 13
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/seleuco/mame4all/input/InputValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    iget-object v12, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v12}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 765
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 766
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 768
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 769
    .local v5, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 773
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .local v9, "s":Ljava/lang/String;
    move-object v6, v5

    .line 774
    .end local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .local v6, "iv":Lcom/seleuco/mame4all/input/InputValue;
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    move-object v5, v6

    .line 804
    .end local v6    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .end local v9    # "s":Ljava/lang/String;
    .restart local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    :goto_1
    return-void

    .line 776
    .end local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v6    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v9    # "s":Ljava/lang/String;
    :cond_1
    const/16 v12, 0xa

    :try_start_1
    new-array v1, v12, [I

    .line 777
    .local v1, "data":[I
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v10, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .local v10, "st":Ljava/util/StringTokenizer;
    const/4 v7, 0x0

    .line 779
    .local v7, "j":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-nez v12, :cond_2

    .line 793
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 794
    if-eqz v7, :cond_0

    .line 796
    new-instance v5, Lcom/seleuco/mame4all/input/InputValue;

    iget-object v12, p0, Lcom/seleuco/mame4all/input/InputHandler;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-direct {v5, v1, v12}, Lcom/seleuco/mame4all/input/InputValue;-><init>([ILcom/seleuco/mame4all/MAME4all;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    .end local v6    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    :try_start_2
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v5

    .end local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v6    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    goto :goto_0

    .line 780
    :cond_2
    :try_start_3
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 781
    .local v11, "token":Ljava/lang/String;
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 782
    .local v8, "k":I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_3

    .line 784
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 786
    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 787
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v1, v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 788
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 800
    .end local v1    # "data":[I
    .end local v6    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .end local v7    # "j":I
    .end local v8    # "k":I
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "st":Ljava/util/StringTokenizer;
    .end local v11    # "token":Ljava/lang/String;
    .restart local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    :catch_0
    move-exception v2

    .line 802
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 800
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v6    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v9    # "s":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v5    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    goto :goto_3
.end method

.method public setFixFactor(IIFF)V
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 305
    iput p1, p0, Lcom/seleuco/mame4all/input/InputHandler;->ax:I

    .line 306
    iput p2, p0, Lcom/seleuco/mame4all/input/InputHandler;->ay:I

    .line 307
    iput p3, p0, Lcom/seleuco/mame4all/input/InputHandler;->dx:F

    .line 308
    iput p4, p0, Lcom/seleuco/mame4all/input/InputHandler;->dy:F

    .line 309
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/input/InputHandler;->fixControllerCoords(Ljava/util/ArrayList;)V

    .line 310
    return-void
.end method

.method public setInputHandlerState(I)I
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/seleuco/mame4all/input/InputHandler;->state:I

    return p1
.end method

.method protected setPadData(ILandroid/view/KeyEvent;I)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "data"    # I

    .prologue
    const/4 v4, 0x1

    .line 313
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 314
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 315
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v2, v1, p1

    or-int/2addr v2, p3

    aput v2, v1, p1

    .line 318
    :cond_0
    :goto_0
    return v4

    .line 316
    :cond_1
    if-ne v0, v4, :cond_0

    .line 317
    iget-object v1, p0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v2, v1, p1

    xor-int/lit8 v3, p3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, p1

    goto :goto_0
.end method

.method public setTrackballEnabled(Z)V
    .locals 0
    .param p1, "trackballEnabled"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/seleuco/mame4all/input/InputHandler;->trackballEnabled:Z

    .line 302
    return-void
.end method

.method public setTrackballSensitivity(I)V
    .locals 0
    .param p1, "trackballSensitivity"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/seleuco/mame4all/input/InputHandler;->trackballSensitivity:I

    .line 298
    return-void
.end method
