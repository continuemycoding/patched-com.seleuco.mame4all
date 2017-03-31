.class public Lcom/seleuco/mame4all/input/InputHandlerExt;
.super Lcom/seleuco/mame4all/input/InputHandler;
.source "InputHandlerExt.java"


# static fields
.field protected static newtouches:[I

.field protected static oldtouches:[I

.field protected static touchstates:[Z


# instance fields
.field protected touchContrData:[I

.field protected touchKeyData:[Lcom/seleuco/mame4all/input/InputValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 46
    new-array v0, v1, [I

    sput-object v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    .line 47
    new-array v0, v1, [I

    sput-object v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->oldtouches:[I

    .line 48
    new-array v0, v1, [Z

    sput-object v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchstates:[Z

    return-void
.end method

.method public constructor <init>(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 2
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    const/16 v1, 0x14

    .line 51
    invoke-direct {p0, p1}, Lcom/seleuco/mame4all/input/InputHandler;-><init>(Lcom/seleuco/mame4all/MAME4all;)V

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchContrData:[I

    .line 44
    new-array v0, v1, [Lcom/seleuco/mame4all/input/InputValue;

    iput-object v0, p0, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchKeyData:[Lcom/seleuco/mame4all/input/InputValue;

    .line 52
    return-void
.end method


# virtual methods
.method protected handleTouchController(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 59
    .local v3, "action":I
    and-int/lit16 v4, v3, 0xff

    .line 61
    .local v4, "actionEvent":I
    const/4 v11, 0x0

    .line 65
    .local v11, "pid":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    const v17, 0xff00

    and-int v16, v16, v17

    shr-int/lit8 v12, v16, 0x8

    .line 66
    .local v12, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 75
    .end local v12    # "pointerIndex":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v16, 0xa

    move/from16 v0, v16

    if-lt v7, v0, :cond_0

    .line 81
    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    move/from16 v0, v16

    if-lt v7, v0, :cond_1

    .line 163
    const/4 v7, 0x0

    :goto_3
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchstates:[Z

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_d

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/seleuco/mame4all/input/InputHandlerExt;->handleImageStates()V

    .line 185
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->pad_data:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 186
    const/16 v16, 0x1

    return v16

    .line 68
    .end local v7    # "i":I
    :catch_0
    move-exception v6

    .line 70
    .local v6, "e":Ljava/lang/Error;
    and-int/lit8 v16, v3, 0x8

    shr-int/lit8 v11, v16, 0x8

    goto :goto_0

    .line 77
    .end local v6    # "e":Ljava/lang/Error;
    .restart local v7    # "i":I
    :cond_0
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchstates:[Z

    const/16 v17, 0x0

    aput-boolean v17, v16, v7

    .line 78
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->oldtouches:[I

    sget-object v17, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v17, v17, v7

    aput v17, v16, v7

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 85
    .local v5, "actionPointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v14, v0

    .line 86
    .local v14, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v15, v0

    .line 88
    .local v15, "y":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_3

    .line 89
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v4, v0, :cond_2

    if-eq v5, v11, :cond_3

    .line 90
    :cond_2
    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v4, v0, :cond_3

    .line 97
    move v8, v5

    .line 98
    .local v8, "id":I
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchstates:[Z

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v8, v0, :cond_4

    .line 81
    .end local v8    # "id":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 99
    .restart local v8    # "id":I
    :cond_4
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchstates:[Z

    const/16 v17, 0x1

    aput-boolean v17, v16, v8

    .line 102
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->values:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->values:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/seleuco/mame4all/input/InputValue;

    .line 105
    .local v9, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 109
    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 111
    :cond_5
    packed-switch v4, :pswitch_data_0

    .line 143
    :goto_5
    :pswitch_0
    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 102
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 117
    :pswitch_1
    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 119
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v17, v16, v8

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/seleuco/mame4all/input/InputHandlerExt;->getButtonValue(IZ)I

    move-result v18

    or-int v17, v17, v18

    aput v17, v16, v8

    .line 120
    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v16

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 122
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v16

    if-nez v16, :cond_9

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->mm:Lcom/seleuco/mame4all/MAME4all;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 138
    :cond_7
    :goto_6
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->oldtouches:[I

    aget v16, v16, v8

    sget-object v17, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v17, v17, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->pad_data:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v18, v16, v17

    sget-object v19, Lcom/seleuco/mame4all/input/InputHandlerExt;->oldtouches:[I

    aget v19, v19, v8

    xor-int/lit8 v19, v19, -0x1

    and-int v18, v18, v19

    aput v18, v16, v17

    .line 141
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->pad_data:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v18, v16, v17

    sget-object v19, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v19, v19, v8

    or-int v18, v18, v19

    aput v18, v16, v17

    goto/16 :goto_5

    .line 125
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->mm:Lcom/seleuco/mame4all/MAME4all;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_6

    .line 127
    :cond_a
    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v16

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->mm:Lcom/seleuco/mame4all/MAME4all;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    invoke-virtual/range {v16 .. v17}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_6

    .line 132
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->mm:Lcom/seleuco/mame4all/MAME4all;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 133
    invoke-static {}, Lcom/seleuco/mame4all/input/TiltSensor;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v16

    if-nez v16, :cond_7

    .line 135
    :cond_c
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/input/InputHandlerExt;->getStickValue(I)I

    move-result v17

    aput v17, v16, v8

    goto/16 :goto_6

    .line 164
    .end local v5    # "actionPointerId":I
    .end local v8    # "id":I
    .end local v9    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .end local v10    # "j":I
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_d
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->touchstates:[Z

    aget-boolean v16, v16, v7

    if-nez v16, :cond_10

    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v16, v16, v7

    if-eqz v16, :cond_10

    .line 165
    const/4 v13, 0x1

    .line 167
    .local v13, "really":Z
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_7
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v10, v0, :cond_e

    if-nez v13, :cond_11

    .line 173
    :cond_e
    if-eqz v13, :cond_f

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandlerExt;->pad_data:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v18, v16, v17

    sget-object v19, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v19, v19, v7

    xor-int/lit8 v19, v19, -0x1

    and-int v18, v18, v19

    aput v18, v16, v17

    .line 178
    :cond_f
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    const/16 v17, 0x0

    aput v17, v16, v7

    .line 179
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->oldtouches:[I

    const/16 v17, 0x0

    aput v17, v16, v7

    .line 163
    .end local v10    # "j":I
    .end local v13    # "really":Z
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 168
    .restart local v10    # "j":I
    .restart local v13    # "really":Z
    :cond_11
    if-ne v10, v7, :cond_12

    .line 167
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 170
    :cond_12
    sget-object v16, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v16, v16, v10

    sget-object v17, Lcom/seleuco/mame4all/input/InputHandlerExt;->newtouches:[I

    aget v17, v17, v7

    and-int v16, v16, v17

    if-nez v16, :cond_13

    const/4 v13, 0x1

    :goto_9
    goto :goto_8

    :cond_13
    const/4 v13, 0x0

    goto :goto_9

    .line 111
    nop

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
