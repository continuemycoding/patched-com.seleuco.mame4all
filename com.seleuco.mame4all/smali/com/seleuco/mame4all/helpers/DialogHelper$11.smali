.class Lcom/seleuco/mame4all/helpers/DialogHelper$11;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$11;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 215
    packed-switch p2, :pswitch_data_0

    .line 224
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 225
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$11;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 226
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$11;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/MainHelper;->showHelp()V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$11;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/MainHelper;->showSettings()V

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->resume()V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
