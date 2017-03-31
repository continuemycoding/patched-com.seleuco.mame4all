.class Lcom/seleuco/mame4all/helpers/DialogHelper$14;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$14;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 257
    packed-switch p2, :pswitch_data_0

    .line 267
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 268
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$14;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 269
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$14;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 260
    :pswitch_1
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$14;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$14;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 265
    :pswitch_2
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->resume()V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
