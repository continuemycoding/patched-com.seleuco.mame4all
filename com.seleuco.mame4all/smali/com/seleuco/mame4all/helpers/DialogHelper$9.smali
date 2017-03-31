.class Lcom/seleuco/mame4all/helpers/DialogHelper$9;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$9;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x2

    .line 188
    const/4 v1, -0x1

    sput v1, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 189
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->resume()V

    .line 190
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 192
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 197
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$9;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v1, v1, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 198
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
