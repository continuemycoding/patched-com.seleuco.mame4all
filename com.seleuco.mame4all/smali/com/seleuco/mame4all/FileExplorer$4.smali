.class Lcom/seleuco/mame4all/FileExplorer$4;
.super Ljava/lang/Object;
.source "FileExplorer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/FileExplorer;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/FileExplorer;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/FileExplorer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer$4;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "res_dir":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$4;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$2(Lcom/seleuco/mame4all/FileExplorer;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/MAME4all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    :goto_0
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_0
    const/4 v2, -0x1

    sput v2, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 240
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$4;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 242
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$4;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/seleuco/mame4all/helpers/MainHelper;->ensureROMsDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$4;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->setROMsDIR(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$4;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->runMAME4all()V

    .line 248
    :cond_1
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
