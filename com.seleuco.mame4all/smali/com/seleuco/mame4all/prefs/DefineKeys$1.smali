.class Lcom/seleuco/mame4all/prefs/DefineKeys$1;
.super Landroid/widget/ArrayAdapter;
.source "DefineKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/prefs/DefineKeys;->drawListAdapter()V
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
.field final synthetic this$0:Lcom/seleuco/mame4all/prefs/DefineKeys;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/prefs/DefineKeys;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # [Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/DefineKeys$1;->this$0:Lcom/seleuco/mame4all/prefs/DefineKeys;

    iput-object p5, p0, Lcom/seleuco/mame4all/prefs/DefineKeys$1;->val$context:Landroid/content/Context;

    .line 70
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/seleuco/mame4all/prefs/DefineKeys$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/seleuco/mame4all/prefs/DefineKeys$1;->val$context:Landroid/content/Context;

    const/high16 v2, 0x7f090000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/seleuco/mame4all/prefs/DefineKeys$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object v0
.end method
