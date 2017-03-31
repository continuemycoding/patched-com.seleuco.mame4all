.class Lcom/seleuco/mame4all/helpers/DialogHelper$2;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/helpers/DialogHelper;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$2;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 104
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$2;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 105
    invoke-static {v2}, Lcom/seleuco/mame4all/input/ControlCustomizer;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$2;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputHandler;->getControlCustomizer()Lcom/seleuco/mame4all/input/ControlCustomizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/ControlCustomizer;->discardDefinedControlLayout()V

    .line 107
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$2;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$2;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 109
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->resume()V

    .line 110
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$2;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    .line 111
    return-void
.end method
