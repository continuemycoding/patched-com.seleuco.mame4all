.class public Lcom/seleuco/mame4all/MAME4all;
.super Landroid/app/Activity;
.source "MAME4all.java"


# instance fields
.field protected dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

.field protected emuView:Landroid/view/View;

.field protected fileExplore:Lcom/seleuco/mame4all/FileExplorer;

.field protected filterView:Lcom/seleuco/mame4all/views/FilterView;

.field protected inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

.field protected inputView:Lcom/seleuco/mame4all/views/InputView;

.field protected mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

.field protected menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

.field protected prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    .line 63
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputView:Lcom/seleuco/mame4all/views/InputView;

    .line 65
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->filterView:Lcom/seleuco/mame4all/views/FilterView;

    .line 67
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    .line 68
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    .line 69
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    .line 70
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 72
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    .line 74
    iput-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->fileExplore:Lcom/seleuco/mame4all/FileExplorer;

    .line 59
    return-void
.end method


# virtual methods
.method public getDialogHelper()Lcom/seleuco/mame4all/helpers/DialogHelper;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    return-object v0
.end method

.method public getEmuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    return-object v0
.end method

.method public getFileExplore()Lcom/seleuco/mame4all/FileExplorer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->fileExplore:Lcom/seleuco/mame4all/FileExplorer;

    return-object v0
.end method

.method public getFilterView()Lcom/seleuco/mame4all/views/FilterView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->filterView:Lcom/seleuco/mame4all/views/FilterView;

    return-object v0
.end method

.method public getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    return-object v0
.end method

.method public getInputView()Lcom/seleuco/mame4all/views/InputView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputView:Lcom/seleuco/mame4all/views/InputView;

    return-object v0
.end method

.method public getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    return-object v0
.end method

.method public getMenuHelper()Lcom/seleuco/mame4all/helpers/MenuHelper;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    return-object v0
.end method

.method public getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 303
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/seleuco/mame4all/helpers/MainHelper;->activityResult(IILandroid/content/Intent;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const-string v7, "EMULATOR"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const v7, 0x7f030006

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->setContentView(I)V

    .line 135
    new-instance v7, Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-direct {v7, p0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;-><init>(Lcom/seleuco/mame4all/MAME4all;)V

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    .line 137
    new-instance v7, Lcom/seleuco/mame4all/helpers/DialogHelper;

    invoke-direct {v7, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper;-><init>(Lcom/seleuco/mame4all/MAME4all;)V

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    .line 139
    new-instance v7, Lcom/seleuco/mame4all/helpers/MainHelper;

    invoke-direct {v7, p0}, Lcom/seleuco/mame4all/helpers/MainHelper;-><init>(Lcom/seleuco/mame4all/MAME4all;)V

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    .line 141
    new-instance v7, Lcom/seleuco/mame4all/FileExplorer;

    invoke-direct {v7, p0}, Lcom/seleuco/mame4all/FileExplorer;-><init>(Lcom/seleuco/mame4all/MAME4all;)V

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->fileExplore:Lcom/seleuco/mame4all/FileExplorer;

    .line 143
    new-instance v7, Lcom/seleuco/mame4all/helpers/MenuHelper;

    invoke-direct {v7, p0}, Lcom/seleuco/mame4all/helpers/MenuHelper;-><init>(Lcom/seleuco/mame4all/MAME4all;)V

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    .line 146
    invoke-static {p0}, Lcom/seleuco/mame4all/input/InputHandlerFactory;->createInputHandler(Lcom/seleuco/mame4all/MAME4all;)Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v7

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    .line 148
    const v7, 0x7f0b000a

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 150
    .local v4, "fl":Landroid/widget/FrameLayout;
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getVideoRenderMode()I

    move-result v7

    if-ne v7, v12, :cond_5

    .line 152
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030001

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 153
    const v7, 0x7f0b0002

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    .line 171
    :goto_0
    const v7, 0x7f0b000b

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/seleuco/mame4all/views/InputView;

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->inputView:Lcom/seleuco/mame4all/views/InputView;

    .line 173
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    check-cast v7, Lcom/seleuco/mame4all/views/IEmuView;

    invoke-interface {v7, p0}, Lcom/seleuco/mame4all/views/IEmuView;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 175
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->inputView:Lcom/seleuco/mame4all/views/InputView;

    invoke-virtual {v7, p0}, Lcom/seleuco/mame4all/views/InputView;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 177
    invoke-static {p0}, Lcom/seleuco/mame4all/Emulator;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 182
    const v7, 0x7f0b000a

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 183
    .local v5, "frame":Landroid/view/View;
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getPortraitOverlayFilterType()I

    move-result v7

    if-eq v7, v9, :cond_0

    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v7

    if-eq v7, v9, :cond_1

    .line 188
    :cond_0
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getLandscapeOverlayFilterType()I

    move-result v7

    if-eq v7, v9, :cond_3

    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 192
    :cond_1
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 193
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getPortraitOverlayFilterType()I

    move-result v6

    .line 197
    .local v6, "type":I
    :goto_1
    const/4 v3, -0x1

    .line 199
    .local v3, "dwb_id":I
    packed-switch v6, :pswitch_data_0

    .line 206
    :goto_2
    if-eq v3, v10, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030004

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 209
    const v7, 0x7f0b0005

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/seleuco/mame4all/views/FilterView;

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->filterView:Lcom/seleuco/mame4all/views/FilterView;

    .line 210
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 211
    .local v2, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "alpha":I
    if-ne v6, v11, :cond_8

    .line 216
    const/16 v0, 0x82

    .line 231
    :cond_2
    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 232
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->filterView:Lcom/seleuco/mame4all/views/FilterView;

    invoke-virtual {v7, v1}, Lcom/seleuco/mame4all/views/FilterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->filterView:Lcom/seleuco/mame4all/views/FilterView;

    invoke-virtual {v7, p0}, Lcom/seleuco/mame4all/views/FilterView;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 240
    .end local v0    # "alpha":I
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "dwb_id":I
    .end local v6    # "type":I
    :cond_3
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    iget-object v8, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 241
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    iget-object v8, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->inputView:Lcom/seleuco/mame4all/views/InputView;

    iget-object v8, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v7, v8}, Lcom/seleuco/mame4all/views/InputView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->inputView:Lcom/seleuco/mame4all/views/InputView;

    iget-object v8, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v7, v8}, Lcom/seleuco/mame4all/views/InputView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 246
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/MainHelper;->updateMAME4all()V

    .line 248
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isEmulating()Z

    move-result v7

    if-nez v7, :cond_4

    .line 250
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getROMsDIR()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_f

    .line 252
    sget v7, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    if-ne v7, v10, :cond_4

    .line 253
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 261
    :cond_4
    :goto_4
    return-void

    .line 155
    .end local v5    # "frame":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getVideoRenderMode()I

    move-result v7

    if-ne v7, v13, :cond_6

    .line 157
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030002

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 158
    const v7, 0x7f0b0003

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    goto/16 :goto_0

    .line 167
    :cond_6
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030003

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    const v7, 0x7f0b0004

    invoke-virtual {p0, v7}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->emuView:Landroid/view/View;

    goto/16 :goto_0

    .line 195
    .restart local v5    # "frame":Landroid/view/View;
    :cond_7
    iget-object v7, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v7}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getLandscapeOverlayFilterType()I

    move-result v6

    .restart local v6    # "type":I
    goto/16 :goto_1

    .line 200
    .restart local v3    # "dwb_id":I
    :pswitch_0
    const v3, 0x7f020025

    goto/16 :goto_2

    .line 201
    :pswitch_1
    const v3, 0x7f020026

    goto/16 :goto_2

    .line 202
    :pswitch_2
    const v3, 0x7f020016

    goto/16 :goto_2

    .line 203
    :pswitch_3
    const v3, 0x7f020017

    goto/16 :goto_2

    .line 217
    .restart local v0    # "alpha":I
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_8
    if-ne v6, v12, :cond_9

    .line 218
    const/16 v0, 0xb4

    goto/16 :goto_3

    .line 219
    :cond_9
    if-ne v6, v13, :cond_a

    .line 220
    const/16 v0, 0x64

    goto/16 :goto_3

    .line 221
    :cond_a
    const/4 v7, 0x5

    if-ne v6, v7, :cond_b

    .line 222
    const/16 v0, 0x96

    goto/16 :goto_3

    .line 223
    :cond_b
    const/4 v7, 0x6

    if-ne v6, v7, :cond_c

    .line 224
    const/16 v0, 0x32

    goto/16 :goto_3

    .line 225
    :cond_c
    const/4 v7, 0x7

    if-ne v6, v7, :cond_d

    .line 226
    const/16 v0, 0x82

    goto/16 :goto_3

    .line 227
    :cond_d
    const/16 v7, 0x8

    if-ne v6, v7, :cond_e

    .line 228
    const/16 v0, 0x32

    goto/16 :goto_3

    .line 229
    :cond_e
    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    .line 230
    const/16 v0, 0x78

    goto/16 :goto_3

    .line 257
    .end local v0    # "alpha":I
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "dwb_id":I
    .end local v6    # "type":I
    :cond_f
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getROMsDIR()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/seleuco/mame4all/helpers/MainHelper;->ensureROMsDir(Ljava/lang/String;)Z

    .line 258
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->runMAME4all()V

    goto/16 :goto_4

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 368
    iget-object v1, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    invoke-virtual {v1, p1}, Lcom/seleuco/mame4all/helpers/DialogHelper;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 371
    .local v0, "d":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 373
    .end local v0    # "d":Landroid/app/Dialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    invoke-virtual {v0, p1}, Lcom/seleuco/mame4all/helpers/MenuHelper;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    invoke-virtual {v0, p1}, Lcom/seleuco/mame4all/helpers/MenuHelper;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 330
    const-string v0, "EMULATOR"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->pause()V

    .line 334
    :cond_0
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->pause()V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputHandler;->getTiltSensor()Lcom/seleuco/mame4all/input/TiltSensor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputHandler;->getTiltSensor()Lcom/seleuco/mame4all/input/TiltSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/TiltSensor;->disable()V

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/DialogHelper;->removeDialogs()V

    .line 348
    :cond_3
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->dialogHelper:Lcom/seleuco/mame4all/helpers/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/seleuco/mame4all/helpers/DialogHelper;->prepareDialog(ILandroid/app/Dialog;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->menuHelper:Lcom/seleuco/mame4all/helpers/MenuHelper;

    invoke-virtual {v0, p1}, Lcom/seleuco/mame4all/helpers/MenuHelper;->prepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "EMULATOR"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 312
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->resume()V

    .line 315
    :cond_0
    sget v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 316
    sget v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 320
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputHandler;->getTiltSensor()Lcom/seleuco/mame4all/input/TiltSensor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->inputHandler:Lcom/seleuco/mame4all/input/InputHandler;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/InputHandler;->getTiltSensor()Lcom/seleuco/mame4all/input/TiltSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/input/TiltSensor;->enable()V

    .line 326
    :cond_2
    return-void

    .line 317
    :cond_3
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->resume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "EMULATOR"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 355
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 359
    const-string v0, "EMULATOR"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 362
    return-void
.end method

.method public runMAME4all()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/MainHelper;->copyFiles()V

    .line 265
    iget-object v0, p0, Lcom/seleuco/mame4all/MAME4all;->mainHelper:Lcom/seleuco/mame4all/helpers/MainHelper;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/MainHelper;->getLibDir()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/seleuco/mame4all/MAME4all;->prefsHelper:Lcom/seleuco/mame4all/helpers/PrefsHelper;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getROMsDIR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seleuco/mame4all/Emulator;->emulate(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method
