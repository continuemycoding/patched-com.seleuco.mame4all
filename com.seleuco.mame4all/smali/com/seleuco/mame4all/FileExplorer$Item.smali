.class Lcom/seleuco/mame4all/FileExplorer$Item;
.super Ljava/lang/Object;
.source "FileExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seleuco/mame4all/FileExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public file:Ljava/lang/String;

.field public icon:I

.field final synthetic this$0:Lcom/seleuco/mame4all/FileExplorer;


# direct methods
.method public constructor <init>(Lcom/seleuco/mame4all/FileExplorer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer$Item;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/seleuco/mame4all/FileExplorer$Item;->file:Ljava/lang/String;

    .line 155
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/seleuco/mame4all/FileExplorer$Item;->icon:I

    .line 156
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/seleuco/mame4all/FileExplorer$Item;->file:Ljava/lang/String;

    return-object v0
.end method
