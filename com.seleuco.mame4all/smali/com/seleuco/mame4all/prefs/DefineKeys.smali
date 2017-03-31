.class public Lcom/seleuco/mame4all/prefs/DefineKeys;
.super Landroid/app/ListActivity;
.source "DefineKeys.java"


# static fields
.field public static final playerLabels:[Ljava/lang/String;


# instance fields
.field protected playerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    const-string v2, "Player 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 52
    const-string v2, "Player 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 53
    const-string v2, "Player 3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 54
    const-string v2, "Player 4"

    aput-object v2, v0, v1

    .line 50
    sput-object v0, Lcom/seleuco/mame4all/prefs/DefineKeys;->playerLabels:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/seleuco/mame4all/prefs/DefineKeys;->playerIndex:I

    .line 46
    return-void
.end method

.method private drawListAdapter()V
    .locals 6

    .prologue
    .line 68
    move-object v5, p0

    .line 70
    .local v5, "context":Landroid/content/Context;
    new-instance v0, Lcom/seleuco/mame4all/prefs/DefineKeys$1;

    .line 71
    const v3, 0x1090003

    sget-object v4, Lcom/seleuco/mame4all/prefs/DefineKeys;->playerLabels:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/seleuco/mame4all/prefs/DefineKeys$1;-><init>(Lcom/seleuco/mame4all/prefs/DefineKeys;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    .local v0, "keyLabelsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/DefineKeys;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    invoke-direct {p0}, Lcom/seleuco/mame4all/prefs/DefineKeys;->drawListAdapter()V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x4

    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/DefineKeys;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-direct {p0}, Lcom/seleuco/mame4all/prefs/DefineKeys;->drawListAdapter()V

    .line 65
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 87
    iput p3, p0, Lcom/seleuco/mame4all/prefs/DefineKeys;->playerIndex:I

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/seleuco/mame4all/prefs/ListKeys;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string v1, "playerIndex"

    iget v2, p0, Lcom/seleuco/mame4all/prefs/DefineKeys;->playerIndex:I

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/seleuco/mame4all/prefs/DefineKeys;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    return-void
.end method
