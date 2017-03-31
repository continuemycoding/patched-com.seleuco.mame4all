.class public Lcom/seleuco/mame4all/input/AnalogStick;
.super Ljava/lang/Object;
.source "AnalogStick.java"

# interfaces
.implements Lcom/seleuco/mame4all/input/IController;


# static fields
.field static inner_img:Landroid/graphics/drawable/BitmapDrawable;

.field static outer_img:Landroid/graphics/drawable/BitmapDrawable;

.field static stick_images:[Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field MY_PI:F

.field ang:F

.field deadZone:F

.field mag:F

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field motion_pid:I

.field oldRx:F

.field oldRy:F

.field ptCenter:Landroid/graphics/Point;

.field ptCur:Landroid/graphics/Point;

.field ptMax:Landroid/graphics/Point;

.field ptMin:Landroid/graphics/Point;

.field rStickArea:Landroid/graphics/Rect;

.field rx:F

.field ry:F

.field stickHeight:I

.field stickPos:Landroid/graphics/Rect;

.field stickWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->inner_img:Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    sput-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->outer_img:Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    sput-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x40490fdb    # (float)Math.PI

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->MY_PI:F

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rStickArea:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    .line 58
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    .line 64
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->motion_pid:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 46
    return-void
.end method


# virtual methods
.method protected calculateStickPosition(Landroid/graphics/Point;)V
    .locals 7
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    const/4 v4, 0x4

    .line 306
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v1

    .line 307
    .local v1, "ways":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v0

    .line 309
    .local v0, "b":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 311
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 312
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 334
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 335
    return-void

    .line 314
    :cond_0
    if-ne v1, v4, :cond_3

    if-eqz v0, :cond_3

    .line 316
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputHandler;->getStick_state()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/input/InputHandler;->getStick_state()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 319
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 324
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 329
    :cond_3
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 330
    iget-object v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0
.end method

.method protected calculateStickState(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "pt"    # Landroid/graphics/Point;
    .param p2, "min"    # Landroid/graphics/Point;
    .param p3, "max"    # Landroid/graphics/Point;
    .param p4, "center"    # Landroid/graphics/Point;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 275
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 276
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 277
    :cond_1
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2

    iget v0, p3, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 278
    :cond_2
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 280
    :cond_3
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_5

    .line 281
    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    .line 287
    :goto_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_7

    .line 288
    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    .line 295
    :goto_1
    iget v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/input/AnalogStick;->rad2degree(F)F

    move-result v0

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    .line 296
    iget v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    .line 297
    iget v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 298
    iget v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    .line 299
    :cond_4
    iget v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    .line 300
    iget v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    iget v2, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mag:F

    .line 302
    return-void

    .line 282
    :cond_5
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Point;->x:I

    if-lt v0, v1, :cond_6

    .line 283
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    goto :goto_0

    .line 285
    :cond_6
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    goto :goto_0

    .line 289
    :cond_7
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    if-lt v0, v1, :cond_8

    .line 290
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Point;->y:I

    iget v2, p4, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    goto :goto_1

    .line 292
    :cond_8
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    goto/16 :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x2

    .line 414
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 416
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 418
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->outer_img:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rStickArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 419
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->outer_img:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputHandler;->getOpacity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 420
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->outer_img:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 422
    :cond_0
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->inner_img:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickPos:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 423
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->inner_img:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputHandler;->getOpacity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 424
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->inner_img:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    :cond_1
    :goto_0
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputHandler;->getStick_state()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mag:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    :cond_2
    return-void

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 428
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputHandler;->getStick_state()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rStickArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 429
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputHandler;->getStick_state()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputHandler;->getOpacity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 430
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/input/InputHandler;->getStick_state()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public handleMotion(Landroid/view/MotionEvent;I)I
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pad_data"    # I

    .prologue
    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "pid":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 341
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 345
    .local v1, "actionEvent":I
    const v9, 0xff00

    and-int/2addr v9, v0

    shr-int/lit8 v6, v9, 0x8

    .line 346
    .local v6, "pointerIndex":I
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 353
    :goto_0
    const/4 v9, 0x1

    if-eq v1, v9, :cond_1

    .line 354
    const/4 v9, 0x6

    if-ne v1, v9, :cond_0

    iget v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->motion_pid:I

    if-eq v4, v9, :cond_1

    .line 355
    :cond_0
    const/4 v9, 0x3

    if-ne v1, v9, :cond_5

    .line 357
    :cond_1
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 358
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 360
    const/4 v9, 0x0

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mag:F

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    .line 361
    const v9, -0x3b864000    # -999.0f

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->oldRy:F

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->oldRx:F

    .line 362
    const/4 v9, -0x1

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->motion_pid:I

    .line 391
    :cond_2
    invoke-virtual {p0, p2}, Lcom/seleuco/mame4all/input/AnalogStick;->updateAnalog(I)I

    move-result p2

    .line 393
    iget v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->oldRx:F

    iget v10, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fb47ae147ae147bL    # 0.08

    cmpl-double v9, v9, v11

    if-gez v9, :cond_3

    iget v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->oldRy:F

    iget v10, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fb47ae147ae147bL    # 0.08

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isAnimatedInput()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 395
    iget v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->oldRx:F

    .line 396
    iget v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    iput v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->oldRy:F

    .line 398
    iget v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mag:F

    iget v10, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_8

    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    :goto_1
    invoke-virtual {p0, v9}, Lcom/seleuco/mame4all/input/AnalogStick;->calculateStickPosition(Landroid/graphics/Point;)V

    .line 400
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 402
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 403
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    .line 409
    :cond_4
    :goto_2
    return p2

    .line 348
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Error;
    and-int/lit8 v9, v0, 0x8

    shr-int/lit8 v4, v9, 0x8

    goto/16 :goto_0

    .line 366
    .end local v2    # "e":Ljava/lang/Error;
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 368
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 370
    .local v5, "pointerId":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v7, v9

    .line 371
    .local v7, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v8, v9

    .line 375
    .local v8, "y":I
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rStickArea:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 377
    iput v5, p0, Lcom/seleuco/mame4all/input/AnalogStick;->motion_pid:I

    .line 381
    :cond_6
    iget v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->motion_pid:I

    if-ne v9, v5, :cond_7

    .line 383
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 384
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 385
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCur:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/seleuco/mame4all/input/AnalogStick;->calculateStickState(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 366
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 398
    .end local v3    # "i":I
    .end local v5    # "pointerId":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_8
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    goto :goto_1

    .line 405
    :cond_9
    iget-object v9, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v9

    iget-object v10, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rStickArea:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Lcom/seleuco/mame4all/views/InputView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method public final rad2degree(F)F
    .locals 2
    .param p1, "r"    # F

    .prologue
    .line 79
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->MY_PI:F

    div-float/2addr v0, v1

    return v0
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 4
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 85
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->inner_img:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->inner_img:Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    :cond_0
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->outer_img:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->outer_img:Landroid/graphics/drawable/BitmapDrawable;

    .line 87
    :cond_1
    sget-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 91
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 92
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 93
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02002b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 94
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 95
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 96
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 97
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 98
    sget-object v1, Lcom/seleuco/mame4all/input/AnalogStick;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 100
    :cond_2
    return-void
.end method

.method public setStickArea(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rStickArea"    # Landroid/graphics/Rect;

    .prologue
    const v2, 0x3f1eb852    # 0.62f

    .line 103
    iput-object p1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rStickArea:Landroid/graphics/Rect;

    .line 104
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 105
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMin:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 106
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 107
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptMax:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 108
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 109
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickWidth:I

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->stickHeight:I

    .line 112
    iget-object v0, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ptCenter:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/input/AnalogStick;->calculateStickPosition(Landroid/graphics/Point;)V

    .line 113
    return-void
.end method

.method protected updateAnalog(I)I
    .locals 11
    .param p1, "pad_data"    # I

    .prologue
    const/high16 v10, 0x42f00000    # 120.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v8, 0x42340000    # 45.0f

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    .line 117
    iget-object v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getAnalogDZ()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 128
    :goto_0
    iget v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->mag:F

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_10

    .line 130
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v2

    .line 131
    .local v2, "ways":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v0

    .line 133
    .local v0, "b":Z
    const/4 v3, 0x0

    iget v4, p0, Lcom/seleuco/mame4all/input/AnalogStick;->rx:F

    iget v5, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ry:F

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/seleuco/mame4all/Emulator;->setAnalogData(IFF)V

    .line 135
    iget v1, p0, Lcom/seleuco/mame4all/input/AnalogStick;->ang:F

    .line 137
    .local v1, "v":F
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    .line 139
    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 140
    or-int/lit8 p1, p1, 0x40

    .line 142
    and-int/lit8 p1, p1, -0x2

    .line 143
    and-int/lit8 p1, p1, -0x11

    .line 144
    and-int/lit8 p1, p1, -0x5

    .line 270
    .end local v0    # "b":Z
    .end local v1    # "v":F
    .end local v2    # "ways":I
    :cond_0
    :goto_1
    return p1

    .line 119
    :pswitch_0
    const v3, 0x3c23d70a    # 0.01f

    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    goto :goto_0

    .line 120
    :pswitch_1
    const v3, 0x3d4ccccd    # 0.05f

    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    goto :goto_0

    .line 121
    :pswitch_2
    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    goto :goto_0

    .line 122
    :pswitch_3
    const v3, 0x3e19999a    # 0.15f

    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    goto :goto_0

    .line 123
    :pswitch_4
    const v3, 0x3e4ccccd    # 0.2f

    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    goto :goto_0

    .line 124
    :pswitch_5
    const v3, 0x3e99999a    # 0.3f

    iput v3, p0, Lcom/seleuco/mame4all/input/AnalogStick;->deadZone:F

    goto :goto_0

    .line 146
    .restart local v0    # "b":Z
    .restart local v1    # "v":F
    .restart local v2    # "ways":I
    :cond_1
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 147
    or-int/lit8 p1, p1, 0x4

    .line 149
    and-int/lit8 p1, p1, -0x2

    .line 150
    and-int/lit8 p1, p1, -0x11

    .line 151
    and-int/lit8 p1, p1, -0x41

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    if-eqz v0, :cond_7

    .line 156
    const v3, 0x439d8000    # 315.0f

    cmpl-float v3, v1, v3

    if-gez v3, :cond_3

    cmpg-float v3, v1, v8

    if-gez v3, :cond_4

    .line 157
    :cond_3
    or-int/lit8 p1, p1, 0x10

    .line 159
    and-int/lit8 p1, p1, -0x2

    .line 160
    and-int/lit8 p1, p1, -0x5

    .line 161
    and-int/lit8 p1, p1, -0x41

    .line 162
    goto :goto_1

    .line 163
    :cond_4
    cmpl-float v3, v1, v8

    if-ltz v3, :cond_5

    const/high16 v3, 0x43070000    # 135.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    .line 164
    or-int/lit8 p1, p1, 0x40

    .line 166
    and-int/lit8 p1, p1, -0x2

    .line 167
    and-int/lit8 p1, p1, -0x11

    .line 168
    and-int/lit8 p1, p1, -0x5

    .line 169
    goto :goto_1

    .line 170
    :cond_5
    const/high16 v3, 0x43070000    # 135.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x43610000    # 225.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_6

    .line 171
    or-int/lit8 p1, p1, 0x1

    .line 173
    and-int/lit8 p1, p1, -0x11

    .line 174
    and-int/lit8 p1, p1, -0x5

    .line 175
    and-int/lit8 p1, p1, -0x41

    .line 176
    goto :goto_1

    .line 177
    :cond_6
    const/high16 v3, 0x43610000    # 225.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    const v3, 0x439d8000    # 315.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 178
    or-int/lit8 p1, p1, 0x4

    .line 180
    and-int/lit8 p1, p1, -0x2

    .line 181
    and-int/lit8 p1, p1, -0x11

    .line 182
    and-int/lit8 p1, p1, -0x41

    .line 184
    goto/16 :goto_1

    .line 187
    :cond_7
    const/high16 v3, 0x43a50000    # 330.0f

    cmpl-float v3, v1, v3

    if-gez v3, :cond_8

    cmpg-float v3, v1, v7

    if-gez v3, :cond_9

    .line 188
    :cond_8
    or-int/lit8 p1, p1, 0x10

    .line 190
    and-int/lit8 p1, p1, -0x2

    .line 191
    and-int/lit8 p1, p1, -0x5

    .line 192
    and-int/lit8 p1, p1, -0x41

    .line 193
    goto/16 :goto_1

    .line 194
    :cond_9
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_a

    cmpg-float v3, v1, v9

    if-gez v3, :cond_a

    .line 195
    or-int/lit8 p1, p1, 0x10

    .line 196
    or-int/lit8 p1, p1, 0x40

    .line 198
    and-int/lit8 p1, p1, -0x2

    .line 199
    and-int/lit8 p1, p1, -0x5

    .line 200
    goto/16 :goto_1

    .line 201
    :cond_a
    cmpl-float v3, v1, v9

    if-ltz v3, :cond_b

    cmpg-float v3, v1, v10

    if-gez v3, :cond_b

    .line 202
    or-int/lit8 p1, p1, 0x40

    .line 204
    and-int/lit8 p1, p1, -0x2

    .line 205
    and-int/lit8 p1, p1, -0x11

    .line 206
    and-int/lit8 p1, p1, -0x5

    .line 207
    goto/16 :goto_1

    .line 208
    :cond_b
    cmpl-float v3, v1, v10

    if-ltz v3, :cond_c

    const/high16 v3, 0x43160000    # 150.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_c

    .line 209
    or-int/lit8 p1, p1, 0x40

    .line 210
    or-int/lit8 p1, p1, 0x1

    .line 212
    and-int/lit8 p1, p1, -0x11

    .line 213
    and-int/lit8 p1, p1, -0x5

    .line 214
    goto/16 :goto_1

    .line 215
    :cond_c
    const/high16 v3, 0x43160000    # 150.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_d

    const/high16 v3, 0x43520000    # 210.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_d

    .line 216
    or-int/lit8 p1, p1, 0x1

    .line 218
    and-int/lit8 p1, p1, -0x11

    .line 219
    and-int/lit8 p1, p1, -0x5

    .line 220
    and-int/lit8 p1, p1, -0x41

    .line 221
    goto/16 :goto_1

    .line 222
    :cond_d
    const/high16 v3, 0x43520000    # 210.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_e

    const/high16 v3, 0x43700000    # 240.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_e

    .line 223
    or-int/lit8 p1, p1, 0x1

    .line 224
    or-int/lit8 p1, p1, 0x4

    .line 226
    and-int/lit8 p1, p1, -0x11

    .line 227
    and-int/lit8 p1, p1, -0x41

    .line 228
    goto/16 :goto_1

    .line 229
    :cond_e
    const/high16 v3, 0x43700000    # 240.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_f

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_f

    .line 230
    or-int/lit8 p1, p1, 0x4

    .line 232
    and-int/lit8 p1, p1, -0x2

    .line 233
    and-int/lit8 p1, p1, -0x11

    .line 234
    and-int/lit8 p1, p1, -0x41

    .line 235
    goto/16 :goto_1

    .line 236
    :cond_f
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x43a50000    # 330.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 237
    or-int/lit8 p1, p1, 0x4

    .line 238
    or-int/lit8 p1, p1, 0x10

    .line 240
    and-int/lit8 p1, p1, -0x2

    .line 241
    and-int/lit8 p1, p1, -0x41

    .line 244
    goto/16 :goto_1

    .line 247
    .end local v0    # "b":Z
    .end local v1    # "v":F
    .end local v2    # "ways":I
    :cond_10
    const/4 v3, 0x0

    invoke-static {v3, v5, v5}, Lcom/seleuco/mame4all/Emulator;->setAnalogData(IFF)V

    .line 249
    and-int/lit8 p1, p1, -0x2

    .line 250
    and-int/lit8 p1, p1, -0x11

    .line 251
    and-int/lit8 p1, p1, -0x5

    .line 252
    and-int/lit8 p1, p1, -0x41

    goto/16 :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
