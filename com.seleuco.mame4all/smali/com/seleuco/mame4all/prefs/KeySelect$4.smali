.class Lcom/seleuco/mame4all/prefs/KeySelect$4;
.super Landroid/widget/LinearLayout;
.source "KeySelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/prefs/KeySelect;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/prefs/KeySelect;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/prefs/KeySelect;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/KeySelect$4;->this$0:Lcom/seleuco/mame4all/prefs/KeySelect;

    .line 105
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/KeySelect$4;->setOrientation(I)V

    .line 108
    invoke-virtual {p0, p3}, Lcom/seleuco/mame4all/prefs/KeySelect$4;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0, p4}, Lcom/seleuco/mame4all/prefs/KeySelect$4;->addView(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0, p5}, Lcom/seleuco/mame4all/prefs/KeySelect$4;->addView(Landroid/view/View;)V

    return-void
.end method
