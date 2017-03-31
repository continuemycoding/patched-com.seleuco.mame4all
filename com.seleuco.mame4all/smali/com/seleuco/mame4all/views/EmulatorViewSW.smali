.class public Lcom/seleuco/mame4all/views/EmulatorViewSW;
.super Landroid/view/SurfaceView;
.source "EmulatorViewSW.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/seleuco/mame4all/views/IEmuView;


# instance fields
.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected scaleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->scaleType:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 68
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->scaleType:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 73
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->scaleType:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 78
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->init()V

    .line 80
    return-void
.end method


# virtual methods
.method public getScaleType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->scaleType:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->setFocusableInTouchMode(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->requestFocus()Z

    .line 87
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 90
    iget-object v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v1

    iget v2, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->scaleType:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/seleuco/mame4all/helpers/MainHelper;->measureWindow(III)Ljava/util/ArrayList;

    move-result-object v0

    .line 91
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

    invoke-virtual {p0, v2, v1}, Lcom/seleuco/mame4all/views/EmulatorViewSW;->setMeasuredDimension(II)V

    .line 92
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 98
    invoke-static {p1, p2}, Lcom/seleuco/mame4all/Emulator;->setWindowSize(II)V

    .line 99
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->mm:Lcom/seleuco/mame4all/MAME4all;

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
    .line 63
    iput-object p1, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 64
    return-void
.end method

.method public setScaleType(I)V
    .locals 0
    .param p1, "scaleType"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/seleuco/mame4all/views/EmulatorViewSW;->scaleType:I

    .line 60
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 105
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/seleuco/mame4all/Emulator;->setHolder(Landroid/view/SurfaceHolder;)V

    .line 111
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/seleuco/mame4all/Emulator;->setHolder(Landroid/view/SurfaceHolder;)V

    .line 116
    return-void
.end method
