.class public Lcom/seleuco/mame4all/prefs/KeySelect;
.super Landroid/app/Activity;
.source "KeySelect.java"


# instance fields
.field protected emulatorInputIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/KeySelect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "emulatorInputIndex"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/seleuco/mame4all/prefs/KeySelect;->emulatorInputIndex:I

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Press button for \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputLabels:[Ljava/lang/String;

    iget v6, p0, Lcom/seleuco/mame4all/prefs/KeySelect;->emulatorInputIndex:I

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/seleuco/mame4all/prefs/KeySelect;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v3, Lcom/seleuco/mame4all/prefs/KeySelect$1;

    invoke-direct {v3, p0, p0}, Lcom/seleuco/mame4all/prefs/KeySelect$1;-><init>(Lcom/seleuco/mame4all/prefs/KeySelect;Landroid/content/Context;)V

    .line 68
    .local v3, "chancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/seleuco/mame4all/prefs/KeySelect$2;

    invoke-direct {v4, p0, p0}, Lcom/seleuco/mame4all/prefs/KeySelect$2;-><init>(Lcom/seleuco/mame4all/prefs/KeySelect;Landroid/content/Context;)V

    .line 80
    .local v4, "clearButton":Landroid/widget/Button;
    new-instance v5, Lcom/seleuco/mame4all/prefs/KeySelect$3;

    invoke-direct {v5, p0, p0}, Lcom/seleuco/mame4all/prefs/KeySelect$3;-><init>(Lcom/seleuco/mame4all/prefs/KeySelect;Landroid/content/Context;)V

    .line 105
    .local v5, "primaryView":Landroid/view/View;
    new-instance v0, Lcom/seleuco/mame4all/prefs/KeySelect$4;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/seleuco/mame4all/prefs/KeySelect$4;-><init>(Lcom/seleuco/mame4all/prefs/KeySelect;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    .line 114
    .local v0, "parentContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v2, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/seleuco/mame4all/prefs/KeySelect;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method
