.class Lcom/seleuco/mame4all/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/HelpActivity;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/HelpActivity$1;->this$0:Lcom/seleuco/mame4all/HelpActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/seleuco/mame4all/HelpActivity$1;->this$0:Lcom/seleuco/mame4all/HelpActivity;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/HelpActivity;->finish()V

    .line 72
    return-void
.end method
