.class public Lcom/seleuco/mame4all/helpers/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# static fields
.field public static final DIALOG_ERROR_WRITING:I = 0x2

.field public static final DIALOG_EXIT:I = 0x1

.field public static final DIALOG_EXIT_GAME:I = 0x4

.field public static final DIALOG_FINISH_CUSTOM_LAYOUT:I = 0xa

.field public static final DIALOG_FULLSCREEN:I = 0x7

.field public static final DIALOG_INFO:I = 0x3

.field public static final DIALOG_LOAD_FILE_EXPLORER:I = 0x8

.field public static final DIALOG_NONE:I = -0x1

.field public static final DIALOG_OPTIONS:I = 0x5

.field public static final DIALOG_ROMs_DIR:I = 0x9

.field public static final DIALOG_THANKS:I = 0x6

.field protected static errorMsg:Ljava/lang/String;

.field protected static infoMsg:Ljava/lang/String;

.field public static savedDialog:I


# instance fields
.field protected mm:Lcom/seleuco/mame4all/MAME4all;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 1
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 72
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 73
    return-void
.end method


# virtual methods
.method public createDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    const/16 v4, 0x8

    if-ne p1, v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getFileExplore()Lcom/seleuco/mame4all/FileExplorer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/FileExplorer;->create()Landroid/app/Dialog;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    .line 83
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 282
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 87
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const-string v4, "Do you want to save changes?"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 88
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 89
    const-string v5, "Yes"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$1;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$1;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 101
    const-string v5, "No"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$2;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$2;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 114
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 117
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_2
    const-string v4, "Do you want to use default ROMs Path? (recomended)"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 118
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 119
    const-string v5, "Yes"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$3;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$3;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 130
    const-string v5, "No"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$4;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$4;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 138
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 141
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_3
    const-string v4, "Are you sure you want to exit?"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 143
    const-string v5, "Yes"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$5;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$5;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 149
    const-string v5, "No"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$6;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$6;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 155
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 157
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_4
    const-string v4, "Error"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 158
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 159
    const-string v5, "OK"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$7;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$7;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 169
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 171
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_5
    const-string v4, "Info"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 172
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 173
    const-string v5, "OK"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$8;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$8;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 182
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 184
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_6
    const-string v4, "Are you sure you want to exit game?"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 186
    const-string v5, "Yes"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$9;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$9;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 200
    const-string v5, "No"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$10;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$10;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 208
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 210
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_7
    new-array v2, v8, [Ljava/lang/CharSequence;

    const-string v4, "Help"

    aput-object v4, v2, v5

    const-string v4, "Settings"

    aput-object v4, v2, v6

    const-string v4, "Cancel"

    aput-object v4, v2, v7

    .line 211
    .local v2, "items":[Ljava/lang/CharSequence;
    const-string v4, "Choose an option from the menu. Press cancel to go back"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 213
    new-instance v4, Lcom/seleuco/mame4all/helpers/DialogHelper$11;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$11;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    new-instance v4, Lcom/seleuco/mame4all/helpers/DialogHelper$12;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$12;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 237
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 239
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "items":[Ljava/lang/CharSequence;
    :pswitch_8
    const-string v4, "I am releasing everything for free, in keeping with the licensing MAME terms, which is free for non-commercial use only. This is strictly something I made because I wanted to play with it and have the skills to make it so. That said, if you are thinking on ways to support my development I suggest you to check my support page of other free works for the community."

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 240
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 241
    const-string v5, "OK"

    new-instance v6, Lcom/seleuco/mame4all/helpers/DialogHelper$13;

    invoke-direct {v6, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$13;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 250
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 252
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_9
    new-array v3, v8, [Ljava/lang/CharSequence;

    const-string v4, "Options"

    aput-object v4, v3, v5

    const-string v4, "Exit"

    aput-object v4, v3, v6

    const-string v4, "Cancel"

    aput-object v4, v3, v7

    .line 253
    .local v3, "items2":[Ljava/lang/CharSequence;
    const-string v4, "Choose an option from the menu. Press cancel to go back"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 255
    new-instance v4, Lcom/seleuco/mame4all/helpers/DialogHelper$14;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$14;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    new-instance v4, Lcom/seleuco/mame4all/helpers/DialogHelper$15;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/helpers/DialogHelper$15;-><init>(Lcom/seleuco/mame4all/helpers/DialogHelper;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 280
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public prepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 295
    if-ne p1, v1, :cond_1

    .line 297
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    sget-object v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->errorMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    sput v1, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 302
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    sget-object v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->infoMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 303
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->pause()V

    .line 304
    sput v2, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0

    .line 306
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :cond_2
    if-ne p1, v4, :cond_3

    .line 308
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->pause()V

    .line 309
    sput v4, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0

    .line 311
    :cond_3
    if-ne p1, v0, :cond_4

    .line 313
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->pause()V

    .line 314
    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0

    .line 316
    :cond_4
    if-ne p1, v3, :cond_5

    .line 318
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->pause()V

    .line 319
    sput v3, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0

    .line 321
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 323
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->pause()V

    .line 324
    const/4 v0, 0x7

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0

    .line 326
    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 328
    const/16 v0, 0x9

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0

    .line 330
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 332
    const/16 v0, 0x8

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0

    .line 334
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 336
    const/16 v0, 0xa

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    goto :goto_0
.end method

.method public removeDialogs()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 341
    sget v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/DialogHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/MAME4all;->removeDialog(I)V

    .line 344
    const/4 v0, -0x1

    sput v0, Lcom/seleuco/mame4all/helpers/DialogHelper;->savedDialog:I

    .line 346
    :cond_0
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p1, Lcom/seleuco/mame4all/helpers/DialogHelper;->errorMsg:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setInfoMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "infoMsg"    # Ljava/lang/String;

    .prologue
    .line 68
    sput-object p1, Lcom/seleuco/mame4all/helpers/DialogHelper;->infoMsg:Ljava/lang/String;

    .line 69
    return-void
.end method
