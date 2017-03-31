.class public Lcom/seleuco/mame4all/views/InputView;
.super Landroid/widget/ImageView;
.source "InputView.java"


# static fields
.field static btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

.field static stick_images:[Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field protected ax:I

.field protected ay:I

.field protected bmp:Landroid/graphics/Bitmap;

.field protected dx:F

.field protected dy:F

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected pnt:Landroid/graphics/Paint;

.field protected rdst:Landroid/graphics/Rect;

.field protected rsrc:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    sput-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 59
    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->bmp:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->pnt:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->rsrc:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->rdst:Landroid/graphics/Rect;

    .line 63
    iput v2, p0, Lcom/seleuco/mame4all/views/InputView;->ax:I

    .line 64
    iput v2, p0, Lcom/seleuco/mame4all/views/InputView;->ay:I

    .line 65
    iput v1, p0, Lcom/seleuco/mame4all/views/InputView;->dx:F

    .line 66
    iput v1, p0, Lcom/seleuco/mame4all/views/InputView;->dy:F

    .line 145
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/InputView;->init()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 59
    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->bmp:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->pnt:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->rsrc:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->rdst:Landroid/graphics/Rect;

    .line 63
    iput v2, p0, Lcom/seleuco/mame4all/views/InputView;->ax:I

    .line 64
    iput v2, p0, Lcom/seleuco/mame4all/views/InputView;->ay:I

    .line 65
    iput v1, p0, Lcom/seleuco/mame4all/views/InputView;->dx:F

    .line 66
    iput v1, p0, Lcom/seleuco/mame4all/views/InputView;->dy:F

    .line 150
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/InputView;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 59
    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->bmp:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->pnt:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->rsrc:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->rdst:Landroid/graphics/Rect;

    .line 63
    iput v2, p0, Lcom/seleuco/mame4all/views/InputView;->ax:I

    .line 64
    iput v2, p0, Lcom/seleuco/mame4all/views/InputView;->ay:I

    .line 65
    iput v1, p0, Lcom/seleuco/mame4all/views/InputView;->dx:F

    .line 66
    iput v1, p0, Lcom/seleuco/mame4all/views/InputView;->dy:F

    .line 155
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/InputView;->init()V

    .line 156
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xff

    .line 159
    iget-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 161
    iget-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->pnt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 164
    iget-object v0, p0, Lcom/seleuco/mame4all/views/InputView;->pnt:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    invoke-virtual {p0, v3}, Lcom/seleuco/mame4all/views/InputView;->setFocusable(Z)V

    .line 167
    invoke-virtual {p0, v3}, Lcom/seleuco/mame4all/views/InputView;->setFocusableInTouchMode(Z)V

    .line 168
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 302
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 303
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 305
    :cond_0
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    if-nez v9, :cond_2

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v2

    .line 308
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_4

    .line 350
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 351
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputHandler;->getControlCustomizer()Lcom/seleuco/mame4all/input/ControlCustomizer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/seleuco/mame4all/input/ControlCustomizer;->draw(Landroid/graphics/Canvas;)V

    .line 353
    :cond_3
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 355
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v4

    .line 356
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 357
    .local v6, "p2":Landroid/graphics/Paint;
    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 358
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_f

    .line 376
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 377
    invoke-static {}, Lcom/seleuco/mame4all/input/TiltSensor;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 378
    sget-object v9, Lcom/seleuco/mame4all/input/TiltSensor;->str:Ljava/lang/String;

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {p1, v9, v10, v11, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 310
    .end local v4    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    .end local v6    # "p2":Landroid/graphics/Paint;
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/seleuco/mame4all/input/InputValue;

    .line 311
    .local v8, "v":Lcom/seleuco/mame4all/input/InputValue;
    const/4 v1, 0x0

    .line 312
    .local v1, "d":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 315
    sget-object v9, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/input/InputHandler;->getStick_state()I

    move-result v10

    aget-object v1, v9, v10

    .line 343
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 346
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 317
    :cond_7
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 319
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/input/InputHandler;->getAnalogStick()Lcom/seleuco/mame4all/input/AnalogStick;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/seleuco/mame4all/input/AnalogStick;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 321
    :cond_8
    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 324
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e

    .line 326
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v5

    .line 327
    .local v5, "n":I
    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v0

    .line 328
    .local v0, "b":I
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_e

    .line 330
    if-nez v0, :cond_9

    const/4 v9, 0x4

    if-lt v5, v9, :cond_6

    .line 331
    :cond_9
    const/4 v9, 0x1

    if-ne v0, v9, :cond_a

    const/4 v9, 0x3

    if-lt v5, v9, :cond_6

    .line 332
    :cond_a
    const/4 v9, 0x3

    if-ne v0, v9, :cond_b

    const/4 v9, 0x2

    if-lt v5, v9, :cond_6

    .line 333
    :cond_b
    const/4 v9, 0x2

    if-ne v0, v9, :cond_c

    const/4 v9, 0x1

    if-lt v5, v9, :cond_6

    .line 335
    :cond_c
    const/4 v9, 0x4

    if-ne v0, v9, :cond_d

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    .line 336
    :cond_d
    const/4 v9, 0x5

    if-ne v0, v9, :cond_e

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/seleuco/mame4all/Emulator;->getValue(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    .line 339
    .end local v0    # "b":I
    .end local v5    # "n":I
    :cond_e
    sget-object v9, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/input/InputHandler;->getBtnStates()[I

    move-result-object v10

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v11

    aget v10, v10, v11

    aget-object v1, v9, v10

    goto/16 :goto_3

    .line 362
    .end local v1    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "v":Lcom/seleuco/mame4all/input/InputValue;
    .restart local v4    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    .restart local v6    # "p2":Landroid/graphics/Paint;
    :cond_f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/seleuco/mame4all/input/InputValue;

    .line 363
    .restart local v8    # "v":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 364
    .local v7, "r":Landroid/graphics/Rect;
    if-eqz v7, :cond_10

    .line 367
    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_11

    .line 368
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 360
    :cond_10
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 369
    :cond_11
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_12

    .line 370
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 371
    :cond_12
    iget-object v9, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v9}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getControllerType()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10

    invoke-virtual {v8}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_10

    .line 372
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 187
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    if-nez v5, :cond_0

    .line 189
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 222
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v4, 0x1

    .line 194
    .local v4, "widthSize":I
    const/4 v2, 0x1

    .line 196
    .local v2, "heightSize":I
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 198
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 199
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 221
    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/seleuco/mame4all/views/InputView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 203
    :cond_1
    const/4 v3, 0x1

    .line 204
    .local v3, "w":I
    const/4 v1, 0x1

    .line 206
    .local v1, "h":I
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getMainRect()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 208
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getMainRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 209
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getMainRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 212
    :cond_2
    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 213
    :cond_3
    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 215
    :cond_4
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 217
    .local v0, "desiredAspect":F
    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 218
    int-to-float v5, v4

    div-float/2addr v5, v0

    float-to-int v2, v5

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 256
    const/4 v1, 0x1

    .line 257
    .local v1, "bw":I
    const/4 v0, 0x1

    .line 259
    .local v0, "bh":I
    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->getMainRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->getMainRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 262
    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->getMainRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 265
    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 266
    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 268
    :cond_2
    int-to-float v4, v1

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 270
    .local v2, "desiredAspect":F
    int-to-float v4, p1

    div-float/2addr v4, v2

    float-to-int v3, v4

    .line 271
    .local v3, "tmp":I
    if-gt v3, p2, :cond_4

    .line 273
    iput v6, p0, Lcom/seleuco/mame4all/views/InputView;->ax:I

    .line 274
    sub-int v4, p2, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/seleuco/mame4all/views/InputView;->ay:I

    .line 275
    move p2, v3

    .line 285
    :goto_0
    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/seleuco/mame4all/views/InputView;->dx:F

    .line 286
    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    iput v4, p0, Lcom/seleuco/mame4all/views/InputView;->dy:F

    .line 288
    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    if-nez v4, :cond_5

    .line 297
    :cond_3
    :goto_1
    return-void

    .line 279
    :cond_4
    int-to-float v4, p2

    mul-float/2addr v4, v2

    float-to-int v3, v4

    .line 280
    iput v6, p0, Lcom/seleuco/mame4all/views/InputView;->ay:I

    .line 281
    sub-int v4, p1, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/seleuco/mame4all/views/InputView;->ax:I

    .line 282
    move p1, v3

    goto :goto_0

    .line 291
    :cond_5
    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    iget v5, p0, Lcom/seleuco/mame4all/views/InputView;->ax:I

    iget v6, p0, Lcom/seleuco/mame4all/views/InputView;->ay:I

    iget v7, p0, Lcom/seleuco/mame4all/views/InputView;->dx:F

    iget v8, p0, Lcom/seleuco/mame4all/views/InputView;->dy:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/seleuco/mame4all/input/InputHandler;->setFixFactor(IIFF)V

    .line 293
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/InputView;->updateImages()V

    goto :goto_1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 174
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 175
    .local v0, "bmpdrw":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/seleuco/mame4all/views/InputView;->bmp:Landroid/graphics/Bitmap;

    .line 182
    .end local v0    # "bmpdrw":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/seleuco/mame4all/views/InputView;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 9
    .param p1, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iput-object p1, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 74
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    .line 77
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 78
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 79
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 80
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v8

    .line 81
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v4

    .line 82
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v2

    .line 83
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v6

    .line 84
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v5

    .line 85
    sget-object v1, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, v1, v7

    .line 88
    :cond_0
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    .line 90
    const/16 v0, 0xa

    filled-new-array {v0, v6}, [I

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v5

    .line 92
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    aput-object v0, v1, v5

    .line 93
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v5

    .line 94
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    aput-object v0, v1, v4

    .line 96
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v6

    .line 97
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    aput-object v0, v1, v5

    .line 98
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v6

    .line 99
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 98
    aput-object v0, v1, v4

    .line 101
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v7

    .line 102
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    aput-object v0, v1, v5

    .line 103
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v7

    .line 104
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    aput-object v0, v1, v4

    .line 106
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v4

    .line 107
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 106
    aput-object v0, v1, v5

    .line 108
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v4

    .line 109
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 108
    aput-object v0, v1, v4

    .line 111
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v8

    .line 112
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 111
    aput-object v0, v1, v5

    .line 113
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v0, v8

    .line 114
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 113
    aput-object v0, v1, v4

    .line 116
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 117
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 116
    aput-object v0, v1, v5

    .line 118
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 119
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    aput-object v0, v1, v4

    .line 121
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 122
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 121
    aput-object v0, v1, v5

    .line 123
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 124
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    aput-object v0, v1, v4

    .line 126
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 127
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    aput-object v0, v1, v5

    .line 128
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 129
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 128
    aput-object v0, v1, v4

    .line 131
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 132
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 131
    aput-object v0, v1, v5

    .line 133
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x9

    aget-object v1, v0, v1

    .line 134
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 133
    aput-object v0, v1, v4

    .line 136
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    .line 137
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 136
    aput-object v0, v1, v5

    .line 138
    sget-object v0, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    .line 139
    invoke-virtual {p1}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 138
    aput-object v0, v1, v4

    .line 141
    :cond_1
    return-void
.end method

.method public updateImages()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    iget-object v4, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->getAllInputData()Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/seleuco/mame4all/input/InputValue;>;"
    if-nez v0, :cond_1

    .line 249
    :cond_0
    return-void

    .line 229
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/seleuco/mame4all/input/InputValue;

    .line 232
    .local v3, "v":Lcom/seleuco/mame4all/input/InputValue;
    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 235
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v4, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 229
    .end local v2    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .restart local v2    # "j":I
    :cond_3
    sget-object v4, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v2

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 238
    sget-object v4, Lcom/seleuco/mame4all/views/InputView;->stick_images:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getOpacity()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 241
    .end local v2    # "j":I
    :cond_4
    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 243
    sget-object v4, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 244
    sget-object v4, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getOpacity()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 245
    sget-object v4, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    sget-object v4, Lcom/seleuco/mame4all/views/InputView;->btns_images:[[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/input/InputValue;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/seleuco/mame4all/views/InputView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/seleuco/mame4all/input/InputHandler;->getOpacity()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    goto :goto_2
.end method
