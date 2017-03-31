.class public Lcom/seleuco/mame4all/views/EmulatorViewGL;
.super Landroid/opengl/GLSurfaceView;
.source "EmulatorViewGL.java"

# interfaces
.implements Lcom/seleuco/mame4all/views/IEmuView;


# instance fields
.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected render:Lcom/seleuco/mame4all/GLRenderer;

.field protected scaleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->scaleType:I

    .line 50
    iput-object v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 52
    iput-object v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->render:Lcom/seleuco/mame4all/GLRenderer;

    .line 73
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->scaleType:I

    .line 50
    iput-object v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 52
    iput-object v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->render:Lcom/seleuco/mame4all/GLRenderer;

    .line 78
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->init()V

    .line 79
    return-void
.end method


# virtual methods
.method public getRender()Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->render:Lcom/seleuco/mame4all/GLRenderer;

    return-object v0
.end method

.method public getScaleType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->scaleType:I

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->setKeepScreenOn(Z)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->setFocusableInTouchMode(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->requestFocus()Z

    .line 86
    new-instance v0, Lcom/seleuco/mame4all/GLRenderer;

    invoke-direct {v0}, Lcom/seleuco/mame4all/GLRenderer;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->render:Lcom/seleuco/mame4all/GLRenderer;

    .line 88
    iget-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->render:Lcom/seleuco/mame4all/GLRenderer;

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->setRenderMode(I)V

    .line 90
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v1

    iget v2, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->scaleType:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/seleuco/mame4all/helpers/MainHelper;->measureWindow(III)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
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

    invoke-virtual {p0, v2, v1}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 101
    invoke-static {p1, p2}, Lcom/seleuco/mame4all/Emulator;->setWindowSize(II)V

    .line 102
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/seleuco/mame4all/input/InputHandler;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 1
    .param p1, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 68
    iget-object v0, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->render:Lcom/seleuco/mame4all/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/seleuco/mame4all/GLRenderer;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 69
    return-void
.end method

.method public setScaleType(I)V
    .locals 0
    .param p1, "scaleType"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/seleuco/mame4all/views/EmulatorViewGL;->scaleType:I

    .line 64
    return-void
.end method
