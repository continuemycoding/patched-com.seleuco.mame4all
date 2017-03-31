.class Lcom/seleuco/mame4all/prefs/UserPreferences$1;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/UserPreferences$1;->this$0:Lcom/seleuco/mame4all/prefs/UserPreferences;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/seleuco/mame4all/prefs/UserPreferences$1;->this$0:Lcom/seleuco/mame4all/prefs/UserPreferences;

    # getter for: Lcom/seleuco/mame4all/prefs/UserPreferences;->settings:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/seleuco/mame4all/prefs/UserPreferences;->access$0(Lcom/seleuco/mame4all/prefs/UserPreferences;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PREF_ROMsDIR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method
