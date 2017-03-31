.class public Lcom/seleuco/mame4all/FileExplorer;
.super Ljava/lang/Object;
.source "FileExplorer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seleuco/mame4all/FileExplorer$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FE_PATH"


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field private chosenFile:Ljava/lang/String;

.field private fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

.field private firstLvl:Ljava/lang/Boolean;

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field private path:Ljava/io/File;

.field traversed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 2
    .param p1, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->traversed:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->firstLvl:Ljava/lang/Boolean;

    .line 66
    new-instance v0, Ljava/io/File;

    .line 67
    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 75
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/seleuco/mame4all/FileExplorer;)[Lcom/seleuco/mame4all/FileExplorer$Item;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    return-object v0
.end method

.method static synthetic access$1(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer;->chosenFile:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/seleuco/mame4all/FileExplorer;)Ljava/io/File;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3(Lcom/seleuco/mame4all/FileExplorer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->chosenFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer;->firstLvl:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$5(Lcom/seleuco/mame4all/FileExplorer;[Lcom/seleuco/mame4all/FileExplorer$Item;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    return-void
.end method

.method static synthetic access$6(Lcom/seleuco/mame4all/FileExplorer;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    return-void
.end method

.method private loadFileList()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    new-instance v7, Lcom/seleuco/mame4all/FileExplorer$1;

    invoke-direct {v7, p0}, Lcom/seleuco/mame4all/FileExplorer$1;-><init>(Lcom/seleuco/mame4all/FileExplorer;)V

    .line 93
    .local v7, "filter":Ljava/io/FilenameFilter;
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "fList":[Ljava/lang/String;
    if-nez v6, :cond_0

    .line 95
    new-array v6, v4, [Ljava/lang/String;

    .line 97
    :cond_0
    array-length v0, v6

    new-array v0, v0, [Lcom/seleuco/mame4all/FileExplorer$Item;

    iput-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    .line 98
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v6

    if-lt v8, v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->firstLvl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v10, v0, [Lcom/seleuco/mame4all/FileExplorer$Item;

    .line 115
    .local v10, "temp":[Lcom/seleuco/mame4all/FileExplorer$Item;
    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    array-length v0, v0

    if-lt v8, v0, :cond_4

    .line 118
    new-instance v0, Lcom/seleuco/mame4all/FileExplorer$Item;

    const-string v1, "Up"

    const v2, 0x7f020019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/seleuco/mame4all/FileExplorer$Item;-><init>(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v0, v10, v4

    .line 119
    iput-object v10, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    .line 125
    .end local v6    # "fList":[Ljava/lang/String;
    .end local v7    # "filter":Ljava/io/FilenameFilter;
    .end local v8    # "i":I
    .end local v10    # "temp":[Lcom/seleuco/mame4all/FileExplorer$Item;
    :cond_1
    :goto_2
    new-instance v0, Lcom/seleuco/mame4all/FileExplorer$2;

    iget-object v2, p0, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 126
    const v3, 0x1090011

    const v4, 0x1020014

    .line 127
    iget-object v5, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/seleuco/mame4all/FileExplorer$2;-><init>(Lcom/seleuco/mame4all/FileExplorer;Landroid/content/Context;II[Lcom/seleuco/mame4all/FileExplorer$Item;)V

    .line 125
    iput-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->adapter:Landroid/widget/ListAdapter;

    .line 147
    return-void

    .line 99
    .restart local v6    # "fList":[Ljava/lang/String;
    .restart local v7    # "filter":Ljava/io/FilenameFilter;
    .restart local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    new-instance v1, Lcom/seleuco/mame4all/FileExplorer$Item;

    aget-object v2, v6, v8

    const v3, 0x7f020023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/seleuco/mame4all/FileExplorer$Item;-><init>(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v1, v0, v8

    .line 102
    new-instance v9, Ljava/io/File;

    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    aget-object v1, v6, v8

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v9, "sel":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    aget-object v0, v0, v8

    const v1, 0x7f020018

    iput v1, v0, Lcom/seleuco/mame4all/FileExplorer$Item;->icon:I

    .line 107
    const-string v0, "DIRECTORY"

    iget-object v1, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/seleuco/mame4all/FileExplorer$Item;->file:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "FILE"

    iget-object v1, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/seleuco/mame4all/FileExplorer$Item;->file:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 116
    .end local v9    # "sel":Ljava/io/File;
    .restart local v10    # "temp":[Lcom/seleuco/mame4all/FileExplorer$Item;
    :cond_4
    add-int/lit8 v0, v8, 0x1

    iget-object v1, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    aget-object v1, v1, v8

    aput-object v1, v10, v0

    .line 115
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 122
    .end local v6    # "fList":[Ljava/lang/String;
    .end local v7    # "filter":Ljava/io/FilenameFilter;
    .end local v8    # "i":I
    .end local v10    # "temp":[Lcom/seleuco/mame4all/FileExplorer$Item;
    :cond_5
    const-string v0, "FE_PATH"

    const-string v1, "path does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/seleuco/mame4all/FileExplorer;->loadFileList()V

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;

    if-nez v3, :cond_0

    .line 172
    const-string v3, "FE_PATH"

    const-string v4, "No files loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    move-object v2, v1

    .line 253
    .end local v1    # "dialog":Landroid/app/Dialog;
    .local v2, "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-object v2

    .line 177
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .restart local v1    # "dialog":Landroid/app/Dialog;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Selected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 178
    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer;->adapter:Landroid/widget/ListAdapter;

    new-instance v4, Lcom/seleuco/mame4all/FileExplorer$3;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/FileExplorer$3;-><init>(Lcom/seleuco/mame4all/FileExplorer;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    const-string v3, "Done"

    .line 226
    new-instance v4, Lcom/seleuco/mame4all/FileExplorer$4;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/FileExplorer$4;-><init>(Lcom/seleuco/mame4all/FileExplorer;)V

    .line 225
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object v2, v1

    .line 253
    .restart local v2    # "dialog":Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer;->path:Ljava/io/File;

    return-object v0
.end method
