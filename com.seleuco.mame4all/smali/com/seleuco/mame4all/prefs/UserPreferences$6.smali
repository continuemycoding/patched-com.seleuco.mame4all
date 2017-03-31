.class Lcom/seleuco/mame4all/prefs/UserPreferences$6;
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
    iput-object p1, p0, Lcom/seleuco/mame4all/prefs/UserPreferences$6;->this$0:Lcom/seleuco/mame4all/prefs/UserPreferences;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 235
    return-void
.end method
