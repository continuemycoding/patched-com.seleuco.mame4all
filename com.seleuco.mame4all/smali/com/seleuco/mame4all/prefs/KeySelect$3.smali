.class Lcom/seleuco/mame4all/prefs/KeySelect$3;
.super Landroid/view/View;
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
    .locals 3
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/KeySelect$3;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    .line 80
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/KeySelect$3;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/seleuco/mame4all/prefs/KeySelect$3;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/seleuco/mame4all/prefs/KeySelect$3;->setFocusableInTouchMode(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/KeySelect$3;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$3;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "androidKeyCode"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/seleuco/mame4all/prefs/KeySelect;->setResult(ILandroid/content/Intent;)V

    .line 100
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/KeySelect$3;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/prefs/KeySelect;->finish()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
