.class Lcom/seleuco/mame4all/prefs/KeySelect$1$1;
.super Ljava/lang/Object;
.source "KeySelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seleuco/mame4all/prefs/KeySelect$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/seleuco/mame4all/prefs/KeySelect$1;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/prefs/KeySelect$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/KeySelect$1$1;->this$1:Lcom/seleuco/mame4all/prefs/KeySelect$1;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$1$1;->this$1:Lcom/seleuco/mame4all/prefs/KeySelect$1;

    # getter for: Lcom/seleuco/mame4all/prefs/KeySelect$1;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;
    invoke-static {v0}, Lcom/seleuco/mame4all/prefs/KeySelect$1;->access$0(Lcom/seleuco/mame4all/prefs/KeySelect$1;)Lcom/seleuco/mame4all/prefs/KeySelect;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/seleuco/mame4all/prefs/KeySelect;->setResult(ILandroid/content/Intent;)V

    .line 62
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$1$1;->this$1:Lcom/seleuco/mame4all/prefs/KeySelect$1;

    # getter for: Lcom/seleuco/mame4all/prefs/KeySelect$1;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;
    invoke-static {v0}, Lcom/seleuco/mame4all/prefs/KeySelect$1;->access$0(Lcom/seleuco/mame4all/prefs/KeySelect$1;)Lcom/seleuco/mame4all/prefs/KeySelect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/prefs/KeySelect;->finish()V

    .line 63
    return-void
.end method
