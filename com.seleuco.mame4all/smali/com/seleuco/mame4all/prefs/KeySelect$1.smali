.class Lcom/seleuco/mame4all/prefs/KeySelect$1;
.super Landroid/widget/Button;
.source "KeySelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/prefs/KeySelect;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/prefs/KeySelect;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/prefs/KeySelect;Landroid/content/Context;)V
    .locals 1
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/KeySelect$1;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    .line 56
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "Cancel"

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/KeySelect$1;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Lcom/seleuco/mame4all/prefs/KeySelect$1$1;

    invoke-direct {v0, p0}, Lcom/seleuco/mame4all/prefs/KeySelect$1$1;-><init>(Lcom/seleuco/mame4all/prefs/KeySelect$1;)V

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/KeySelect$1;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/seleuco/mame4all/prefs/KeySelect$1;)Lcom/seleuco/mame4all/prefs/KeySelect;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$1;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    return-object v0
.end method
