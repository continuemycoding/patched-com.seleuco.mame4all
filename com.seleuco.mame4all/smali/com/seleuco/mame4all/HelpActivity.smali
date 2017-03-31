.class public Lcom/seleuco/mame4all/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p1, :cond_1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 92
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 91
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    .line 94
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 98
    throw v3

    .line 101
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/seleuco/mame4all/HelpActivity;->setContentView(I)V

    .line 68
    const v3, 0x7f0b0009

    invoke-virtual {p0, v3}, Lcom/seleuco/mame4all/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 69
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/seleuco/mame4all/HelpActivity$1;

    invoke-direct {v3, p0}, Lcom/seleuco/mame4all/HelpActivity$1;-><init>(Lcom/seleuco/mame4all/HelpActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v3, 0x7f0b0008

    invoke-virtual {p0, v3}, Lcom/seleuco/mame4all/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, "v":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {p0}, Lcom/seleuco/mame4all/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/seleuco/mame4all/HelpActivity;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 50
    packed-switch p1, :pswitch_data_0

    .line 58
    const/4 v0, 0x0

    :pswitch_0
    return v0

    .line 50
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
