.class Lcom/seleuco/mame4all/FileExplorer$3;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 181
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$0(Lcom/seleuco/mame4all/FileExplorer;)[Lcom/seleuco/mame4all/FileExplorer$Item;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/seleuco/mame4all/FileExplorer$Item;->file:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/seleuco/mame4all/FileExplorer;->access$1(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/String;)V

    .line 182
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$2(Lcom/seleuco/mame4all/FileExplorer;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->chosenFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$3(Lcom/seleuco/mame4all/FileExplorer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "sel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/seleuco/mame4all/FileExplorer;->access$4(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/Boolean;)V

    .line 187
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->traversed:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->chosenFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$3(Lcom/seleuco/mame4all/FileExplorer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    invoke-static {v2, v8}, Lcom/seleuco/mame4all/FileExplorer;->access$5(Lcom/seleuco/mame4all/FileExplorer;[Lcom/seleuco/mame4all/FileExplorer$Item;)V

    .line 189
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/seleuco/mame4all/FileExplorer;->access$6(Lcom/seleuco/mame4all/FileExplorer;Ljava/io/File;)V

    .line 191
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2, v6}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 192
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2, v6}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 193
    const-string v2, "FE_PATH"

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$2(Lcom/seleuco/mame4all/FileExplorer;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->chosenFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/seleuco/mame4all/FileExplorer;->access$3(Lcom/seleuco/mame4all/FileExplorer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->traversed:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v3, v3, Lcom/seleuco/mame4all/FileExplorer;->traversed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;
    invoke-static {v4}, Lcom/seleuco/mame4all/FileExplorer;->access$2(Lcom/seleuco/mame4all/FileExplorer;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    iget-object v5, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;
    invoke-static {v5}, Lcom/seleuco/mame4all/FileExplorer;->access$2(Lcom/seleuco/mame4all/FileExplorer;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 203
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/seleuco/mame4all/FileExplorer;->access$6(Lcom/seleuco/mame4all/FileExplorer;Ljava/io/File;)V

    .line 205
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    invoke-static {v2, v8}, Lcom/seleuco/mame4all/FileExplorer;->access$5(Lcom/seleuco/mame4all/FileExplorer;[Lcom/seleuco/mame4all/FileExplorer$Item;)V

    .line 209
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->traversed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/seleuco/mame4all/FileExplorer;->access$4(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/Boolean;)V

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2, v6}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 214
    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v2, v2, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2, v6}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 215
    const-string v2, "FE_PATH"

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$3;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$2(Lcom/seleuco/mame4all/FileExplorer;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
