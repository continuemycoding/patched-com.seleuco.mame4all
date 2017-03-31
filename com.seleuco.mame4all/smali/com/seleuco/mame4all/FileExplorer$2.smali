.class Lcom/seleuco/mame4all/FileExplorer$2;
.super Landroid/widget/ArrayAdapter;
.source "FileExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/FileExplorer;->loadFileList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/seleuco/mame4all/FileExplorer$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/FileExplorer;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/FileExplorer;Landroid/content/Context;II[Lcom/seleuco/mame4all/FileExplorer$Item;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # [Lcom/seleuco/mame4all/FileExplorer$Item;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/FileExplorer$2;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    .line 125
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 133
    .local v2, "view":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    check-cast v1, Landroid/widget/TextView;

    .line 137
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/seleuco/mame4all/FileExplorer$2;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    # getter for: Lcom/seleuco/mame4all/FileExplorer;->fileList:[Lcom/seleuco/mame4all/FileExplorer$Item;
    invoke-static {v3}, Lcom/seleuco/mame4all/FileExplorer;->access$0(Lcom/seleuco/mame4all/FileExplorer;)[Lcom/seleuco/mame4all/FileExplorer$Item;

    move-result-object v3

    aget-object v3, v3, p1

    iget v3, v3, Lcom/seleuco/mame4all/FileExplorer$Item;->icon:I

    .line 136
    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 141
    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lcom/seleuco/mame4all/FileExplorer$2;->this$0:Lcom/seleuco/mame4all/FileExplorer;

    iget-object v4, v4, Lcom/seleuco/mame4all/FileExplorer;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 142
    .local v0, "dp5":I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 144
    return-object v2
.end method
