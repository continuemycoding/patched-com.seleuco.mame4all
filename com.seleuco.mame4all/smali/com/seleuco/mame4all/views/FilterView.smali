.class public Lcom/seleuco/mame4all/views/FilterView;
.super Landroid/view/View;
.source "FilterView.java"

# interfaces
.implements Lcom/seleuco/mame4all/views/IEmuView;


# instance fields
.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected scaleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/FilterView;->scaleType:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/FilterView;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 63
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/FilterView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/views/FilterView;->scaleType:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/views/FilterView;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 68
    invoke-virtual {p0}, Lcom/seleuco/mame4all/views/FilterView;->init()V

    .line 69
    return-void
.end method


# virtual methods
.method public getScaleType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/seleuco/mame4all/views/FilterView;->scaleType:I

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/FilterView;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/views/FilterView;->setFocusableInTouchMode(Z)V

    .line 74
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/seleuco/mame4all/views/FilterView;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v1

    iget v2, p0, Lcom/seleuco/mame4all/views/FilterView;->scaleType:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/seleuco/mame4all/helpers/MainHelper;->measureWindow(III)Ljava/util/ArrayList;

    move-result-object v0

    .line 78
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

    invoke-virtual {p0, v2, v1}, Lcom/seleuco/mame4all/views/FilterView;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 0
    .param p1, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/seleuco/mame4all/views/FilterView;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 59
    return-void
.end method

.method public setScaleType(I)V
    .locals 0
    .param p1, "scaleType"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/seleuco/mame4all/views/FilterView;->scaleType:I

    .line 55
    return-void
.end method
