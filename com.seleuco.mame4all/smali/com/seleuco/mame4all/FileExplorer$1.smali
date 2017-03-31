.class Lcom/seleuco/mame4all/FileExplorer$1;
.super Ljava/lang/Object;
.source "FileExplorer.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/FileExplorer;->loadFileList()V
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
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer$1;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v0, "sel":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
