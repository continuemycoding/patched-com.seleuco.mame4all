.class Lcom/seleuco/mame4all/prefs/KeySelect$2;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/KeySelect$2;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    .line 68
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v0, "Clear"

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/KeySelect$2;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v0, Lcom/seleuco/mame4all/prefs/KeySelect$2$1;

    invoke-direct {v0, p0}, Lcom/seleuco/mame4all/prefs/KeySelect$2$1;-><init>(Lcom/seleuco/mame4all/prefs/KeySelect$2;)V

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/KeySelect$2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/seleuco/mame4all/prefs/KeySelect$2;)Lcom/seleuco/mame4all/prefs/KeySelect;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$2;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    return-object v0
.end method
