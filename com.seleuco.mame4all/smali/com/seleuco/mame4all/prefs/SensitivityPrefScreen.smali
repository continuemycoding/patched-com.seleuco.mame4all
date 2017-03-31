.class public Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;
.super Landroid/preference/DialogPreference;
.source "SensitivityPrefScreen.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private maxValue:I

.field private minValue:I

.field private newValue:I

.field private oldValue:I

.field private seekBar:Landroid/widget/SeekBar;

.field private valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->minValue:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->maxValue:I

    .line 57
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->setDialogLayoutResource(I)V

    .line 58
    const-string v0, "Save"

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 59
    const-string v0, "Cancel"

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 65
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    iget v1, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->minValue:I

    if-ge v0, v1, :cond_0

    .line 66
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->minValue:I

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    .line 67
    :cond_0
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    iget v1, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->maxValue:I

    if-le v0, v1, :cond_1

    .line 68
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->maxValue:I

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    .line 69
    :cond_1
    const v0, 0x7f0b0001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->seekBar:Landroid/widget/SeekBar;

    .line 70
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->maxValue:I

    iget v2, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 71
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    iget v2, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 72
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    iget v2, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 73
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    const/high16 v0, 0x7f0b0000

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->valueView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->valueView:Landroid/widget/TextView;

    iget v1, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 93
    if-nez p1, :cond_0

    .line 94
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->oldValue:I

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->oldValue:I

    .line 100
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->persistInt(I)Z

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 80
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->minValue:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    .line 81
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->valueView:Landroid/widget/TextView;

    iget v1, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->oldValue:I

    .line 113
    iget v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->oldValue:I

    iput v0, p0, Lcom/seleuco/mame4all/prefs/SensitivityPrefScreen;->newValue:I

    .line 114
    return-void

    .line 112
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 85
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 88
    return-void
.end method
