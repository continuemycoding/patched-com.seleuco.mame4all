.class Lcom/seleuco/mame4all/helpers/DialogHelper$1;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$1;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 89
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

    .line 91
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 92
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$1;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 93
    invoke-static {v2}, Lcom/seleuco/mame4all/input/ControlCustomizer;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$1;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputHandler;->getControlCustomizer()Lcom/seleuco/mame4all/input/ControlCustomizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/ControlCustomizer;->saveDefinedControlLayout()V

    .line 95
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$1;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$1;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 97
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->resume()V

    .line 98
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$1;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    .line 99
    return-void
.end method
