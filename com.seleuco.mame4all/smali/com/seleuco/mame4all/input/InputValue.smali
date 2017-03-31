.class public Lcom/seleuco/mame4all/input/InputValue;
.super Ljava/lang/Object;
.source "InputValue.java"


# instance fields
.field private ax:I

.field private ay:I

.field private dx:F

.field private dy:F

.field private mm:Lcom/seleuco/mame4all/MAME4all;

.field private o_x1:I

.field private o_x2:I

.field private o_y1:I

.field private o_y2:I

.field private origRect:Landroid/graphics/Rect;

.field private rect:Landroid/graphics/Rect;

.field private type:I

.field private value:I

.field private xoff:I

.field private xoff_tmp:I

.field private yoff:I

.field private yoff_tmp:I


# direct methods
.method public constructor <init>([ILcom/seleuco/mame4all/MAME4all;)V
    .locals 6
    .param p1, "d"    # [I
    .param p2, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const v3, 0x3e3851ec    # 0.18f

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->dx:F

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->dy:F

    .line 50
    iput v1, p0, Lcom/seleuco/mame4all/input/InputValue;->ax:I

    .line 51
    iput v1, p0, Lcom/seleuco/mame4all/input/InputValue;->ay:I

    .line 53
    iput v1, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    .line 54
    iput v1, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    .line 56
    iput v1, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff:I

    .line 57
    iput v1, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff:I

    .line 59
    iput-object v5, p0, Lcom/seleuco/mame4all/input/InputValue;->rect:Landroid/graphics/Rect;

    .line 61
    iput-object v5, p0, Lcom/seleuco/mame4all/input/InputValue;->origRect:Landroid/graphics/Rect;

    .line 63
    iput-object v5, p0, Lcom/seleuco/mame4all/input/InputValue;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 66
    iput-object p2, p0, Lcom/seleuco/mame4all/input/InputValue;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 68
    aget v0, p1, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->type:I

    .line 69
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->value:I

    .line 71
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->type:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p2}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isTouchDZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->value:I

    if-ne v0, v2, :cond_0

    .line 75
    aget v0, p1, v2

    int-to-float v0, v0

    aget v1, p1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p1, v2

    .line 77
    :cond_0
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->value:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 79
    aget v0, p1, v4

    int-to-float v0, v0

    aget v1, p1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p1, v4

    .line 80
    aget v0, p1, v2

    int-to-float v0, v0

    aget v1, p1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p1, v2

    .line 84
    :cond_1
    aget v0, p1, v4

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->o_x1:I

    .line 85
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->o_y1:I

    .line 86
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->o_x1:I

    aget v1, p1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->o_x2:I

    .line 87
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->o_y1:I

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->o_y2:I

    .line 88
    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff:I

    iget v1, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff:I

    .line 118
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff:I

    iget v1, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff:I

    .line 119
    iput v2, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    .line 120
    iput v2, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    .line 121
    return-void
.end method

.method protected getOrigRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->origRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/seleuco/mame4all/input/InputValue;->o_x1:I

    iget v2, p0, Lcom/seleuco/mame4all/input/InputValue;->o_y1:I

    iget v3, p0, Lcom/seleuco/mame4all/input/InputValue;->o_x2:I

    iget v4, p0, Lcom/seleuco/mame4all/input/InputValue;->o_y2:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->origRect:Landroid/graphics/Rect;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->origRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/seleuco/mame4all/input/InputValue;->o_x1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/seleuco/mame4all/input/InputValue;->dx:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/seleuco/mame4all/input/InputValue;->ax:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    add-int/2addr v1, v2

    .line 129
    iget v2, p0, Lcom/seleuco/mame4all/input/InputValue;->o_y1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/seleuco/mame4all/input/InputValue;->dy:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/seleuco/mame4all/input/InputValue;->ay:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    add-int/2addr v2, v3

    .line 130
    iget v3, p0, Lcom/seleuco/mame4all/input/InputValue;->o_x2:I

    int-to-float v3, v3

    iget v4, p0, Lcom/seleuco/mame4all/input/InputValue;->dx:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/seleuco/mame4all/input/InputValue;->ax:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    add-int/2addr v3, v4

    .line 131
    iget v4, p0, Lcom/seleuco/mame4all/input/InputValue;->o_y2:I

    int-to-float v4, v4

    iget v5, p0, Lcom/seleuco/mame4all/input/InputValue;->dy:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/seleuco/mame4all/input/InputValue;->ay:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    add-int/2addr v4, v5

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    iput-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->rect:Landroid/graphics/Rect;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->type:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->value:I

    return v0
.end method

.method public getXoff()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff:I

    return v0
.end method

.method public getXoff_tmp()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    return v0
.end method

.method public getYoff()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff:I

    return v0
.end method

.method public getYoff_tmp()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    return v0
.end method

.method public setFixData(FFII)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "ax"    # I
    .param p4, "ay"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/seleuco/mame4all/input/InputValue;->dx:F

    .line 93
    iput p2, p0, Lcom/seleuco/mame4all/input/InputValue;->dy:F

    .line 94
    iput p3, p0, Lcom/seleuco/mame4all/input/InputValue;->ax:I

    .line 95
    iput p4, p0, Lcom/seleuco/mame4all/input/InputValue;->ay:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->rect:Landroid/graphics/Rect;

    .line 97
    return-void
.end method

.method public setOffset(II)V
    .locals 1
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    iput p1, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff:I

    .line 102
    iput p2, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff:I

    .line 103
    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    .line 104
    iput v0, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->rect:Landroid/graphics/Rect;

    .line 106
    return-void
.end method

.method public setOffsetTMP(II)V
    .locals 1
    .param p1, "xoff_tmp"    # I
    .param p2, "yoff_tmp"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/seleuco/mame4all/input/InputValue;->xoff_tmp:I

    .line 111
    iput p2, p0, Lcom/seleuco/mame4all/input/InputValue;->yoff_tmp:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/input/InputValue;->rect:Landroid/graphics/Rect;

    .line 113
    return-void
.end method
