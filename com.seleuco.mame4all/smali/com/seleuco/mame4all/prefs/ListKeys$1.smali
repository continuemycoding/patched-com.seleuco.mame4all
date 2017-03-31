.class Lcom/seleuco/mame4all/prefs/ListKeys$1;
.super Landroid/widget/ArrayAdapter;
.source "ListKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/prefs/ListKeys;->drawListAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/prefs/ListKeys;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/prefs/ListKeys;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # [Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/ListKeys$1;->this$0:Lcom/seleuco/mame4all/prefs/ListKeys;

    iput-object p5, p0, Lcom/seleuco/mame4all/prefs/ListKeys$1;->val$context:Landroid/content/Context;

    .line 134
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 139
    new-instance v1, Lcom/seleuco/mame4all/prefs/Modified;

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/ListKeys$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/seleuco/mame4all/prefs/ListKeys$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/seleuco/mame4all/prefs/ListKeys$1;->this$0:Lcom/seleuco/mame4all/prefs/ListKeys;

    iget v3, v3, Lcom/seleuco/mame4all/prefs/ListKeys;->playerIndex:I

    sget-object v4, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputLabels:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v0, v3}, Lcom/seleuco/mame4all/prefs/Modified;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v1
.end method
