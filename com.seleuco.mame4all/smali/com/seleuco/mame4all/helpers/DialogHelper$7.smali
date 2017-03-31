.class Lcom/seleuco/mame4all/helpers/DialogHelper$7;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/helpers/DialogHelper;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$7;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 162
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 163
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$7;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 164
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper$7;->this$0:Lcom/seleuco/mame4all/helpers/DialogHelper;

    iget-object v0, v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 165
    return-void
.end method
