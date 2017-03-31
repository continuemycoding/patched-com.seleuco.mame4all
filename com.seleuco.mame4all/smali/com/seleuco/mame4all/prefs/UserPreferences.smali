.class public Lcom/seleuco/mame4all/prefs/UserPreferences;
.super Landroid/preference/PreferenceActivity;
.source "UserPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field protected mPrefAnalogDZ:Landroid/preference/ListPreference;

.field protected mPrefControllerType:Landroid/preference/ListPreference;

.field protected mPrefExtInput:Landroid/preference/ListPreference;

.field protected mPrefGlobalVideoRenderMode:Landroid/preference/ListPreference;

.field protected mPrefLandsFilterType:Landroid/preference/ListPreference;

.field protected mPrefLandsMode:Landroid/preference/ListPreference;

.field protected mPrefPortraitFilterType:Landroid/preference/ListPreference;

.field protected mPrefPortraitMode:Landroid/preference/ListPreference;

.field protected mPrefTiltDZ:Landroid/preference/ListPreference;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/seleuco/mame4all/prefs/UserPreferences;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 245
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    if-ne p2, v3, :cond_1

    if-nez p1, :cond_1

    .line 248
    invoke-virtual {p0, v3, p3}, Lcom/seleuco/mame4all/prefs/UserPreferences;->setResult(ILandroid/content/Intent;)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->finish()V

    .line 263
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 253
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, "definedKeysStr":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 258
    const-string v3, "PREF_DEFINED_KEYS"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 256
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

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

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->addPreferencesFromResource(I)V

    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->settings:Landroid/content/SharedPreferences;

    .line 75
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_GLOBAL_VIDEO_RENDER_MODE"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefGlobalVideoRenderMode:Landroid/preference/ListPreference;

    .line 76
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_PORTRAIT_SCALING_MODE_2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitMode:Landroid/preference/ListPreference;

    .line 77
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_LANDSCAPE_SCALING_MODE_2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsMode:Landroid/preference/ListPreference;

    .line 78
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_PORTRAIT_FILTER_2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitFilterType:Landroid/preference/ListPreference;

    .line 79
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_LANDSCAPE_FILTER_2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsFilterType:Landroid/preference/ListPreference;

    .line 80
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_CONTROLLER_TYPE"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefControllerType:Landroid/preference/ListPreference;

    .line 81
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_INPUT_EXTERNAL"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefExtInput:Landroid/preference/ListPreference;

    .line 82
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_ANALOG_DZ"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefAnalogDZ:Landroid/preference/ListPreference;

    .line 83
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PREF_TILT_DZ"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefTiltDZ:Landroid/preference/ListPreference;

    .line 84
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 111
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 112
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defineKeys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/seleuco/mame4all/prefs/DefineKeys;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v5}, Lcom/seleuco/mame4all/prefs/UserPreferences;->startActivityForResult(Landroid/content/Intent;I)V

    .line 240
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 166
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "changeRomPath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Are you sure to change? (needs app restart)"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 170
    const-string v3, "Yes"

    new-instance v4, Lcom/seleuco/mame4all/prefs/UserPreferences$1;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/prefs/UserPreferences$1;-><init>(Lcom/seleuco/mame4all/prefs/UserPreferences;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 178
    const-string v3, "No"

    new-instance v4, Lcom/seleuco/mame4all/prefs/UserPreferences$2;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/prefs/UserPreferences$2;-><init>(Lcom/seleuco/mame4all/prefs/UserPreferences;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 184
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 186
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultsKeys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Are you sure to restore?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 191
    const-string v3, "Yes"

    new-instance v4, Lcom/seleuco/mame4all/prefs/UserPreferences$3;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/prefs/UserPreferences$3;-><init>(Lcom/seleuco/mame4all/prefs/UserPreferences;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 208
    const-string v3, "No"

    new-instance v4, Lcom/seleuco/mame4all/prefs/UserPreferences$4;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/prefs/UserPreferences$4;-><init>(Lcom/seleuco/mame4all/prefs/UserPreferences;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 214
    .restart local v1    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 216
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "customControlLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-static {v5}, Lcom/seleuco/mame4all/input/ControlCustomizer;->setEnabled(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->finish()V

    goto/16 :goto_0

    .line 220
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultControlLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Are you sure to restore?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 224
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 225
    const-string v3, "Yes"

    new-instance v4, Lcom/seleuco/mame4all/prefs/UserPreferences$5;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/prefs/UserPreferences$5;-><init>(Lcom/seleuco/mame4all/prefs/UserPreferences;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 232
    const-string v3, "No"

    new-instance v4, Lcom/seleuco/mame4all/prefs/UserPreferences$6;

    invoke-direct {v4, p0}, Lcom/seleuco/mame4all/prefs/UserPreferences$6;-><init>(Lcom/seleuco/mame4all/prefs/UserPreferences;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 238
    .restart local v1    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefGlobalVideoRenderMode:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefGlobalVideoRenderMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitMode:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsMode:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitFilterType:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitFilterType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsFilterType:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsFilterType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefControllerType:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefControllerType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefExtInput:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefExtInput:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefAnalogDZ:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefAnalogDZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefTiltDZ:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefTiltDZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 104
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "PREF_PORTRAIT_SCALING_MODE_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitMode:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    :goto_0
    const-string v0, "PREF_PORTRAIT_FILTER_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitFilterType:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefPortraitFilterType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    :goto_1
    return-void

    .line 125
    :cond_2
    const-string v0, "PREF_LANDSCAPE_SCALING_MODE_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsMode:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "PREF_LANDSCAPE_FILTER_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsFilterType:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefLandsFilterType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 137
    :cond_4
    const-string v0, "PREF_CONTROLLER_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefControllerType:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current values is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefControllerType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_5
    const-string v0, "PREF_GLOBAL_VIDEO_RENDER_MODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefGlobalVideoRenderMode:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefGlobalVideoRenderMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 145
    :cond_6
    const-string v0, "PREF_INPUT_EXTERNAL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefExtInput:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefExtInput:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 149
    :cond_7
    const-string v0, "PREF_ANALOG_DZ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefAnalogDZ:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefAnalogDZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 153
    :cond_8
    const-string v0, "PREF_TILT_DZ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefTiltDZ:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current value is \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/prefs/UserPreferences;->mPrefTiltDZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
