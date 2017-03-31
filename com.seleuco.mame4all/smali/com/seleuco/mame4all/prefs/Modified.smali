.class Lcom/seleuco/mame4all/prefs/Modified;
.super Landroid/widget/LinearLayout;
.source "ListKeys.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyLabel"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 173
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {p0, v5}, Lcom/seleuco/mame4all/prefs/Modified;->setOrientation(I)V

    .line 179
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    .local v1, "textView":Landroid/widget/TextView;
    const/high16 v3, 0x7f090000

    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 182
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v2, "textView2":Landroid/widget/TextView;
    const v3, 0x7f090001

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 185
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v1, v8, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    const-string v3, "?"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    aget v3, v3, p3

    if-eq v3, v7, :cond_0

    .line 191
    sget-object v3, Lcom/seleuco/mame4all/prefs/ListKeys;->androidKeysLabels:[Ljava/lang/String;

    sget-object v4, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    aget v4, v4, p3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    invoke-virtual {v2, v5, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    invoke-virtual {p0, v1, v3}, Lcom/seleuco/mame4all/prefs/Modified;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    invoke-virtual {p0, v2, v3}, Lcom/seleuco/mame4all/prefs/Modified;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "textView2":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, "hiddenView":Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/seleuco/mame4all/prefs/Modified;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
