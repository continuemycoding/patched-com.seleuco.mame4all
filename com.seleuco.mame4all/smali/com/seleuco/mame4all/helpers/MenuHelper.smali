.class public Lcom/seleuco/mame4all/helpers/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# instance fields
.field protected mm:Lcom/seleuco/mame4all/MAME4all;


# direct methods
.method public constructor <init>(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 1
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 47
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 48
    return-void
.end method


# virtual methods
.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 53
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    const/4 v1, 0x1

    return v1
.end method

.method public optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 68
    :pswitch_0
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v0}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isInMAME()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/InputHandler;->handleVirtualKey(I)V

    goto :goto_0

    .line 81
    :pswitch_4
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/InputHandler;->handleVirtualKey(I)V

    goto :goto_0

    .line 84
    :pswitch_5
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/InputHandler;->handleVirtualKey(I)V

    goto :goto_0

    .line 87
    :pswitch_6
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/InputHandler;->handleVirtualKey(I)V

    goto :goto_0

    .line 90
    :pswitch_7
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/InputHandler;->handleVirtualKey(I)V

    goto :goto_0

    .line 93
    :pswitch_8
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MenuHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/seleuco/mame4all/input/InputHandler;->handleVirtualKey(I)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b000d
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
