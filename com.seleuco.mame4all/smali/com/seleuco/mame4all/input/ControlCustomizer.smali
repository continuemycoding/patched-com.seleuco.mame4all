.class public Lcom/seleuco/mame4all/input/ControlCustomizer;
.super Ljava/lang/Object;
.source "ControlCustomizer.java"


# static fields
.field private static enabled:Z


# instance fields
.field private ax:I

.field private ay:I

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field private old_ax:I

.field private old_ay:I

.field private prev_ax:I

.field private prev_ay:I

.field private valueMoved:Lcom/seleuco/mame4all/input/InputValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/seleuco/mame4all/input/ControlCustomizer;->enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    .line 59
    iput v0, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ax:I

    .line 60
    iput v0, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ay:I

    .line 61
    iput v0, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->old_ax:I

    .line 62
    iput v0, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->old_ay:I

    .line 63
    iput v0, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ax:I

    .line 64
    iput v0, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ay:I

    .line 66
    iput-object v1, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 46
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/seleuco/mame4all/input/ControlCustomizer;->enabled:Z

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->enabled:Z

    .line 52
    return-void
.end method


# virtual methods
.method public discardDefinedControlLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/views/InputView;->updateImages()V

    .line 83
    return-void

    .line 77
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seleuco/mame4all/input/InputValue;

    .line 78
    .local v0, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v0, v5, v5}, Lcom/seleuco/mame4all/input/InputValue;->setOffsetTMP(II)V

    .line 79
    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 80
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputHandler;->getAnalogStick()Lcom/seleuco/mame4all/input/AnalogStick;

    move-result-object v3

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/seleuco/mame4all/input/AnalogStick;->setStickArea(Landroid/graphics/Rect;)V

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xff

    .line 231
    iget-object v5, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 233
    .local v2, "p2":Landroid/graphics/Paint;
    const/16 v5, 0x1e

    invoke-virtual {v2, v5, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 235
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 250
    return-void

    .line 238
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/seleuco/mame4all/input/InputValue;

    .line 239
    .local v4, "v":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 240
    .local v3, "r":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 243
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 236
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_2
    iget-object v5, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 245
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 246
    :cond_3
    iget-object v5, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v5

    if-eq v5, v7, :cond_1

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 247
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public handleMotion(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 176
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 177
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 179
    .local v7, "y":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    if-ne v0, v10, :cond_2

    .line 180
    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    .line 181
    iget-object v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v8}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    .line 182
    iput v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ax:I

    .line 183
    iput v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ay:I

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    if-eqz v8, :cond_8

    .line 189
    iget v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ax:I

    sub-int v8, v6, v8

    iget v10, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ax:I

    sub-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v11, :cond_5

    iget v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ax:I

    sub-int v8, v6, v8

    :goto_1
    div-int/lit8 v8, v8, 0x5

    mul-int/lit8 v3, v8, 0x5

    .line 190
    .local v3, "new_ax":I
    iget v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ay:I

    sub-int v8, v7, v8

    iget v10, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ay:I

    sub-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v11, :cond_3

    iget v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ay:I

    sub-int v9, v7, v8

    :cond_3
    div-int/lit8 v8, v9, 0x5

    mul-int/lit8 v4, v8, 0x5

    .line 191
    .local v4, "new_ay":I
    if-nez v3, :cond_4

    if-eqz v4, :cond_1

    .line 193
    :cond_4
    if-eqz v3, :cond_6

    .end local v3    # "new_ax":I
    :goto_2
    iput v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ax:I

    .line 194
    if-eqz v4, :cond_7

    .end local v4    # "new_ay":I
    :goto_3
    iput v4, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ay:I

    .line 195
    iget-object v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    iget v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ax:I

    iget v10, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->old_ax:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ay:I

    iget v11, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->old_ay:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/seleuco/mame4all/input/InputValue;->setOffsetTMP(II)V

    .line 196
    invoke-virtual {p0}, Lcom/seleuco/mame4all/input/ControlCustomizer;->updateRelatedRects()V

    .line 197
    iget-object v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v8}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/seleuco/mame4all/views/InputView;->updateImages()V

    .line 198
    iget-object v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v8}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    goto :goto_0

    :cond_5
    move v8, v9

    .line 189
    goto :goto_1

    .line 193
    .restart local v3    # "new_ax":I
    .restart local v4    # "new_ay":I
    :cond_6
    iget v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ax:I

    goto :goto_2

    .line 194
    .end local v3    # "new_ax":I
    :cond_7
    iget v4, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->prev_ay:I

    goto :goto_3

    .line 204
    .end local v4    # "new_ay":I
    :cond_8
    iget-object v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v8}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v5

    .line 206
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 208
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    .line 210
    .local v1, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 212
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v8

    if-eq v8, v10, :cond_9

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_9

    .line 213
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_a

    .line 217
    :cond_9
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getXoff_tmp()I

    move-result v8

    iput v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->old_ax:I

    .line 218
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getYoff_tmp()I

    move-result v8

    iput v8, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->old_ay:I

    .line 219
    iput v6, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ax:I

    .line 220
    iput v7, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->ay:I

    .line 221
    iput-object v1, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    goto/16 :goto_0

    .line 206
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public readDefinedControlLayout()V
    .locals 11

    .prologue
    .line 106
    iget-object v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    .line 139
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getDefinedControlLayout()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "definedStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 114
    iget-object v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v6

    .line 116
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v9, ","

    const/4 v10, 0x0

    invoke-direct {v3, v0, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    .local v3, "tok":Ljava/util/StringTokenizer;
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-nez v9, :cond_3

    .line 137
    .end local v3    # "tok":Ljava/util/StringTokenizer;
    .end local v6    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    :cond_2
    iget-object v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/views/InputView;->updateImages()V

    goto :goto_0

    .line 120
    .restart local v3    # "tok":Ljava/util/StringTokenizer;
    .restart local v6    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 121
    .local v4, "type":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 122
    .local v5, "value":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 123
    .local v7, "xoff":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 124
    .local v8, "yoff":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 126
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/input/InputValue;

    .line 127
    .local v1, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v9

    if-ne v9, v4, :cond_4

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v9

    if-ne v9, v5, :cond_4

    .line 129
    invoke-virtual {v1, v7, v8}, Lcom/seleuco/mame4all/input/InputValue;->setOffset(II)V

    .line 130
    const/16 v9, 0x8

    if-ne v4, v9, :cond_4

    .line 131
    iget-object v9, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputHandler;->getAnalogStick()Lcom/seleuco/mame4all/input/AnalogStick;

    move-result-object v9

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/seleuco/mame4all/input/AnalogStick;->setStickArea(Landroid/graphics/Rect;)V

    .line 124
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public saveDefinedControlLayout()V
    .locals 7

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, "definedStr":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v4

    .line 90
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    const/4 v1, 0x1

    .line 91
    .local v1, "first":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 102
    iget-object v5, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->setDefinedControlLayout(Ljava/lang/String;)V

    .line 103
    return-void

    .line 93
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/seleuco/mame4all/input/InputValue;

    .line 94
    .local v2, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputValue;->commitChanges()V

    .line 95
    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputValue;->getXoff()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputValue;->getYoff()I

    move-result v5

    if-nez v5, :cond_1

    .line 91
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    if-nez v1, :cond_2

    .line 98
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputValue;->getXoff()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputValue;->getYoff()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 0
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 70
    return-void
.end method

.method protected updateRelatedRects()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x8

    .line 143
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 146
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 171
    .end local v1    # "j":I
    :cond_0
    :goto_1
    return-void

    .line 148
    .restart local v1    # "j":I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seleuco/mame4all/input/InputValue;

    .line 149
    .local v0, "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v3

    iget-object v4, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 151
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getXoff_tmp()I

    move-result v3

    iget-object v4, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getYoff_tmp()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/seleuco/mame4all/input/InputValue;->setOffsetTMP(II)V

    goto :goto_1

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    .end local v1    # "j":I
    :cond_3
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 158
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 160
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seleuco/mame4all/input/InputValue;

    .line 162
    .restart local v0    # "iv":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    if-eq v3, v6, :cond_5

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 163
    :cond_5
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getXoff_tmp()I

    move-result v3

    iget-object v4, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getYoff_tmp()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/seleuco/mame4all/input/InputValue;->setOffsetTMP(II)V

    .line 165
    :cond_6
    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 167
    iget-object v3, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputHandler;->getAnalogStick()Lcom/seleuco/mame4all/input/AnalogStick;

    move-result-object v3

    iget-object v4, p0, Lcom/seleuco/mame4all/input/ControlCustomizer;->valueMoved:Lcom/seleuco/mame4all/input/InputValue;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/seleuco/mame4all/input/AnalogStick;->setStickArea(Landroid/graphics/Rect;)V

    .line 158
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
