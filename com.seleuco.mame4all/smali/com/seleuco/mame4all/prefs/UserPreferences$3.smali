.class Lcom/seleuco/mame4all/prefs/UserPreferences$3;
.super Ljava/lang/Object;
.source "UserPreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/prefs/UserPreferences;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/prefs/UserPreferences;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/prefs/UserPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/UserPreferences$3;->this$0:Lcom/seleuco/mame4all/prefs/UserPreferences;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 193
    iget-object v3, p0, Lcom/seleuco/mame4all/prefs/UserPreferences$3;->this$0:Lcom/seleuco/mame4all/prefs/UserPreferences;

    # getter for: Lcom/seleuco/mame4all/prefs/UserPreferences;->settings:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/seleuco/mame4all/prefs/UserPreferences;->access$0(Lcom/seleuco/mame4all/prefs/UserPreferences;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 195
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v0, "definedKeysStr":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->defaultKeyMapping:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 202
    const-string v3, "PREF_DEFINED_KEYS"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void

    .line 199
    :cond_0
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    sget-object v4, Lcom/seleuco/mame4all/input/InputHandler;->defaultKeyMapping:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/seleuco/mame4all/input/InputHandler;->defaultKeyMapping:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
