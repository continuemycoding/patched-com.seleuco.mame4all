.class Lcom/seleuco/mame4all/prefs/KeySelect$2$1;
.super Ljava/lang/Object;
.source "KeySelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seleuco/mame4all/prefs/KeySelect$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seleuco/mame4all/prefs/KeySelect$2;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/prefs/KeySelect$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/KeySelect$2$1;->this$1:Lcom/seleuco/mame4all/prefs/KeySelect$2;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 73
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$2$1;->this$1:Lcom/seleuco/mame4all/prefs/KeySelect$2;

    # getter for: Lcom/seleuco/mame4all/prefs/KeySelect$2;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;
    invoke-static {v0}, Lcom/seleuco/mame4all/prefs/KeySelect$2;->access$0(Lcom/seleuco/mame4all/prefs/KeySelect$2;)Lcom/seleuco/mame4all/prefs/KeySelect;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidKeyCode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/seleuco/mame4all/prefs/KeySelect;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$2$1;->this$1:Lcom/seleuco/mame4all/prefs/KeySelect$2;

    # getter for: Lcom/seleuco/mame4all/prefs/KeySelect$2;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;
    invoke-static {v0}, Lcom/seleuco/mame4all/prefs/KeySelect$2;->access$0(Lcom/seleuco/mame4all/prefs/KeySelect$2;)Lcom/seleuco/mame4all/prefs/KeySelect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/prefs/KeySelect;->finish()V

    .line 75
    return-void
.end method
