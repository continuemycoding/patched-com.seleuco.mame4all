.class public Lcom/seleuco/mame4all/views/EmulatorViewHW;
.super Landroid/view/View;
.source "EmulatorViewHW.java"

# interfaces
.implements Lcom/seleuco/mame4all/views/IEmuView;


# instance fields
.field protected fps:I

.field protected i:I

.field protected millis:J

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected scaleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->scaleType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 53
    iput v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->i:I

    .line 54
    iput v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->fps:I

    .line 71
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->scaleType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 53
    iput v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->i:I

    .line 54
    iput v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->fps:I

    .line 76
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->scaleType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 53
    iput v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->i:I

    .line 54
    iput v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->fps:I

    .line 81
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->init()V

    .line 82
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->i:I

    .line 113
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 125
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffPx()[I

    move-result-object v1

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v3

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v6

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v7

    const/4 v9, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 130
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HW "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->millis:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->i:I

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->fps:I

    iput v2, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->millis:J

    goto :goto_0
.end method

.method public getScaleType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->scaleType:I

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->setKeepScreenOn(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->setFocusable(Z)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->setFocusableInTouchMode(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->requestFocus()Z

    .line 89
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 92
    iget-object v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v1

    iget v2, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->scaleType:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/seleuco/mame4all/helpers/MainHelper;->measureWindow(III)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/seleuco/mame4all/views/EmulatorViewHW;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 100
    invoke-static {p1, p2}, Lcom/seleuco/mame4all/Emulator;->setWindowSize(II)V

    .line 101
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/seleuco/mame4all/input/InputHandler;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 0
    .param p1, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 67
    return-void
.end method

.method public setScaleType(I)V
    .locals 0
    .param p1, "scaleType"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/seleuco/mame4all/views/EmulatorViewHW;->scaleType:I

    .line 63
    return-void
.end method
