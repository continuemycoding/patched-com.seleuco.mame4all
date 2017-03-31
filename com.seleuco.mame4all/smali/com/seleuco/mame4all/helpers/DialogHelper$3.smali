.class Lcom/seleuco/mame4all/helpers/DialogHelper$3;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$3;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 121
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 122
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$3;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 123
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$3;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$3;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v1, v1, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/helpers/MainHelper;->getDefaultROMsDIR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/helpers/MainHelper;->ensureROMsDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$3;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$3;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v1, v1, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/helpers/MainHelper;->getDefaultROMsDIR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->setROMsDIR(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$3;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->runMAME4all()V

    .line 128
    :cond_0
    return-void
.end method
