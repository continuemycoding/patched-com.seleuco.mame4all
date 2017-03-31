.class public Lcom/seleuco/mame4all/helpers/MainHelper;
.super Ljava/lang/Object;
.source "MainHelper.java"


# static fields
.field public static final BUFFER_SIZE:I = 0xc000

.field public static final MAGIC_FILE:Ljava/lang/String; = "dont-delete-00001.bin"

.field public static final SUBACTIVITY_HELP:I = 0x2

.field public static final SUBACTIVITY_USER_PREFS:I = 0x1


# instance fields
.field protected mm:Lcom/seleuco/mame4all/MAME4all;


# direct methods
.method public constructor <init>(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 1
    .param p1, "value"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 74
    iput-object p1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 75
    return-void
.end method


# virtual methods
.method public activityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 477
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->updateMAME4all()V

    .line 481
    :cond_0
    return-void
.end method

.method public copyFiles()V
    .locals 15

    .prologue
    .line 154
    :try_start_0
    iget-object v13, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v13}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getROMsDIR()Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "roms_dir":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "saves/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "dont-delete-00001.bin"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v9, "fm":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 197
    .end local v9    # "fm":Ljava/io/File;
    .end local v11    # "roms_dir":Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    .restart local v9    # "fm":Ljava/io/File;
    .restart local v11    # "roms_dir":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "dest":Ljava/io/BufferedOutputStream;
    iget-object v13, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v13}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f050003

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 165
    .local v8, "fis":Ljava/io/InputStream;
    new-instance v12, Ljava/util/zip/ZipInputStream;

    .line 167
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    invoke-direct {v12, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    .local v12, "zis":Ljava/util/zip/ZipInputStream;
    const v13, 0xc000

    new-array v1, v13, [B

    .line 172
    .local v1, "data":[B
    :goto_1
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .local v6, "entry":Ljava/util/zip/ZipEntry;
    if-nez v6, :cond_1

    .line 193
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v1    # "data":[B
    .end local v2    # "dest":Ljava/io/BufferedOutputStream;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "fis":Ljava/io/InputStream;
    .end local v9    # "fm":Ljava/io/File;
    .end local v11    # "roms_dir":Ljava/lang/String;
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "data":[B
    .restart local v2    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "fis":Ljava/io/InputStream;
    .restart local v9    # "fm":Ljava/io/File;
    .restart local v11    # "roms_dir":Ljava/lang/String;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_3

    .line 175
    move-object v4, v11

    .line 176
    .local v4, "destination":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "destFN":Ljava/lang/String;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 179
    .local v10, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    .end local v2    # "dest":Ljava/io/BufferedOutputStream;
    const v13, 0xc000

    invoke-direct {v2, v10, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 180
    .restart local v2    # "dest":Ljava/io/BufferedOutputStream;
    :goto_2
    const/4 v13, 0x0

    const v14, 0xc000

    invoke-virtual {v12, v1, v13, v14}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    const/4 v13, -0x1

    if-ne v0, v13, :cond_2

    .line 183
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 184
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1

    .line 181
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v2, v1, v13, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 188
    .end local v0    # "count":I
    .end local v3    # "destFN":Ljava/lang/String;
    .end local v4    # "destination":Ljava/lang/String;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    new-instance v7, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public ensureROMsDir(Ljava/lang/String;)Z
    .locals 9
    .param p1, "roms_dir"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 108
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "res_dir":Ljava/io/File;
    const/4 v0, 0x0

    .line 112
    .local v0, "created":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getDialogHelper()Lcom/seleuco/mame4all/helpers/DialogHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t find/create:\n \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'\nIs it writeable?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/seleuco/mame4all/helpers/DialogHelper;->setErrorMsg(Ljava/lang/String;)V

    .line 117
    iget-object v5, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 147
    :goto_0
    return v4

    .line 122
    :cond_0
    const/4 v0, 0x1

    .line 126
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "saves/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "str_sav_dir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "sav_dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5}, Lcom/seleuco/mame4all/MAME4all;->getDialogHelper()Lcom/seleuco/mame4all/helpers/DialogHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t find/create:\n\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'\nIs it writeable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/seleuco/mame4all/helpers/DialogHelper;->setErrorMsg(Ljava/lang/String;)V

    .line 134
    iget-object v5, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v5, v8}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto :goto_0

    .line 139
    :cond_2
    if-eqz v0, :cond_3

    .line 142
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getDialogHelper()Lcom/seleuco/mame4all/helpers/DialogHelper;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Created: \n\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'\nCopy or move your zipped ROMs under \'./MAME4All/roms\' directory!.\n\nMAME4droid uses only \'gp2x wiz 0.37b11 MAME romset\'. Google it or use clrmame.dat file included  to convert romsets from other MAME versions. See  help."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/seleuco/mame4all/helpers/DialogHelper;->setInfoMsg(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 147
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getDefaultROMsDIR()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 95
    .local v1, "res_dir":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/ROMs/MAME4all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    const-string v1, "/sdcard/ROMs/MAME4all/"

    goto :goto_0
.end method

.method public getLibDir()Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "cache_dir":Ljava/lang/String;
    const-string v3, "cache"

    const-string v4, "lib"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v0    # "cache_dir":Ljava/lang/String;
    .local v2, "lib_dir":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 82
    .end local v2    # "lib_dir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v2, "/data/data/com.seleuco.mame4all/lib"

    .restart local v2    # "lib_dir":Ljava/lang/String;
    goto :goto_0
.end method

.method public getscrOrientation()I
    .locals 5

    .prologue
    .line 200
    iget-object v3, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 203
    .local v1, "getOrient":Landroid/view/Display;
    iget-object v3, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 209
    .local v2, "orientation":I
    if-nez v2, :cond_0

    .line 211
    iget-object v3, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v3}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 212
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 214
    if-nez v2, :cond_0

    .line 217
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 218
    const/4 v2, 0x3

    .line 229
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v2

    .line 220
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 221
    const/4 v2, 0x1

    .line 222
    goto :goto_0

    .line 224
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public measureWindow(III)Ljava/util/ArrayList;
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "scaleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    const/4 v13, 0x1

    .line 486
    .local v13, "widthSize":I
    const/4 v7, 0x1

    .line 489
    .local v7, "heightSize":I
    const/4 v14, 0x6

    move/from16 v0, p3

    if-ne v0, v14, :cond_1

    .line 491
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 492
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 566
    :cond_0
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v8, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-object v8

    .line 497
    .end local v8    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v5

    .line 498
    .local v5, "emu_w":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v4

    .line 501
    .local v4, "emu_h":I
    const/4 v14, 0x2

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    .line 503
    int-to-float v14, v5

    const/high16 v15, 0x3fc00000    # 1.5f

    mul-float/2addr v14, v15

    float-to-int v5, v14

    .line 504
    int-to-float v14, v4

    const/high16 v15, 0x3fc00000    # 1.5f

    mul-float/2addr v14, v15

    float-to-int v4, v14

    .line 507
    :cond_2
    const/4 v14, 0x3

    move/from16 v0, p3

    if-ne v0, v14, :cond_3

    .line 509
    mul-int/lit8 v5, v5, 0x2

    .line 510
    mul-int/lit8 v4, v4, 0x2

    .line 513
    :cond_3
    const/4 v14, 0x4

    move/from16 v0, p3

    if-ne v0, v14, :cond_4

    .line 515
    int-to-float v14, v5

    const/high16 v15, 0x40200000    # 2.5f

    mul-float/2addr v14, v15

    float-to-int v5, v14

    .line 516
    int-to-float v14, v4

    const/high16 v15, 0x40200000    # 2.5f

    mul-float/2addr v14, v15

    float-to-int v4, v14

    .line 519
    :cond_4
    move v12, v5

    .line 520
    .local v12, "w":I
    move v6, v4

    .line 522
    .local v6, "h":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 523
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 525
    if-nez v7, :cond_5

    const/4 v7, 0x1

    .line 526
    :cond_5
    if-nez v13, :cond_6

    const/4 v13, 0x1

    .line 528
    :cond_6
    const/high16 v11, 0x3f800000    # 1.0f

    .line 530
    .local v11, "scale":F
    const/4 v14, 0x5

    move/from16 v0, p3

    if-ne v0, v14, :cond_7

    .line 531
    int-to-float v14, v13

    int-to-float v15, v12

    div-float/2addr v14, v15

    .line 532
    int-to-float v15, v7

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v15, v15, v16

    .line 531
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 534
    :cond_7
    int-to-float v14, v12

    mul-float/2addr v14, v11

    float-to-int v12, v14

    .line 535
    int-to-float v14, v6

    mul-float/2addr v14, v11

    float-to-int v6, v14

    .line 537
    int-to-float v14, v5

    int-to-float v15, v4

    div-float v2, v14, v15

    .line 539
    .local v2, "desiredAspect":F
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 540
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 542
    div-int v14, v13, v7

    int-to-float v1, v14

    .line 544
    .local v1, "actualAspect":F
    sub-float v14, v1, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v14, v14, v16

    if-lez v14, :cond_0

    .line 546
    const/4 v3, 0x0

    .line 549
    .local v3, "done":Z
    int-to-float v14, v7

    mul-float/2addr v14, v2

    float-to-int v10, v14

    .line 551
    .local v10, "newWidth":I
    if-gt v10, v13, :cond_8

    .line 552
    move v13, v10

    .line 553
    const/4 v3, 0x1

    .line 557
    :cond_8
    if-nez v3, :cond_0

    .line 558
    int-to-float v14, v13

    div-float/2addr v14, v2

    float-to-int v9, v14

    .line 559
    .local v9, "newHeight":I
    if-gt v9, v7, :cond_0

    .line 560
    move v7, v9

    goto/16 :goto_0
.end method

.method public reload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v2, v2}, Lcom/seleuco/mame4all/MAME4all;->overridePendingTransition(II)V

    .line 238
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->finish()V

    .line 241
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v2, v2}, Lcom/seleuco/mame4all/MAME4all;->overridePendingTransition(II)V

    .line 242
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v0}, Lcom/seleuco/mame4all/MAME4all;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public setBorder()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x0

    .line 284
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v4, 0xf

    .line 286
    .local v2, "size":I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 287
    :cond_0
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 289
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 290
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Lcom/seleuco/mame4all/MAME4all;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 291
    .local v3, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 292
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getFilterView()Lcom/seleuco/mame4all/views/FilterView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getFilterView()Lcom/seleuco/mame4all/views/FilterView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/views/FilterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 294
    .restart local v1    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isPortraitTouchController()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    iget-object v4, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v4}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 298
    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 310
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 303
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 305
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public showHelp()V
    .locals 3

    .prologue
    .line 471
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const-class v2, Lcom/seleuco/mame4all/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .local v0, "i2":Landroid/content/Intent;
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/seleuco/mame4all/MAME4all;->startActivityForResult(Landroid/content/Intent;I)V

    .line 473
    return-void
.end method

.method public showSettings()V
    .locals 3

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const-class v2, Lcom/seleuco/mame4all/prefs/UserPreferences;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/seleuco/mame4all/MAME4all;->startActivityForResult(Landroid/content/Intent;I)V

    .line 468
    return-void
.end method

.method public showWeb()V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 459
    const-string v2, "https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=seleuco%2enicator%40gmail%2ecom&lc=US&item_name=Seleuco%20Nicator&item_number=ixxxx4all&no_note=0&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHostedGuest"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 458
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 462
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1, v0}, Lcom/seleuco/mame4all/MAME4all;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method public updateMAME4all()V
    .locals 12

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->updateVideoRender()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->updateOverlayFilter()Z

    move-result v10

    if-nez v10, :cond_0

    .line 318
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v1

    .line 319
    .local v1, "emuView":Landroid/view/View;
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getFilterView()Lcom/seleuco/mame4all/views/FilterView;

    move-result-object v2

    .line 321
    .local v2, "filterView":Lcom/seleuco/mame4all/views/FilterView;
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v5

    .line 322
    .local v5, "inputView":Lcom/seleuco/mame4all/views/InputView;
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v4

    .line 323
    .local v4, "inputHandler":Lcom/seleuco/mame4all/input/InputHandler;
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v8

    .line 325
    .local v8, "prefsHelper":Lcom/seleuco/mame4all/helpers/PrefsHelper;
    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getDefinedKeys()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "definedKeys":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v6

    if-lt v3, v10, :cond_9

    .line 330
    const/4 v11, 0x1

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isFPSShowed()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v10}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 331
    const/4 v11, 0x7

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isASMCores()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    :goto_3
    invoke-static {v11, v10}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 332
    const/16 v11, 0x8

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isShowInfoWarnings()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v10}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 333
    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isDebugEnabled()Z

    move-result v10

    invoke-static {v10}, Lcom/seleuco/mame4all/Emulator;->setDebug(Z)V

    .line 334
    const/16 v11, 0xa

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isIdleWait()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    :goto_5
    invoke-static {v11, v10}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 335
    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isSoundfThreaded()Z

    move-result v10

    invoke-static {v10}, Lcom/seleuco/mame4all/Emulator;->setThreadedSound(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->setBorder()V

    .line 339
    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isTiltSensor()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 340
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->getTiltSensor()Lcom/seleuco/mame4all/input/TiltSensor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/input/TiltSensor;->enable()V

    .line 344
    :goto_6
    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getTrackballSensitivity()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/seleuco/mame4all/input/InputHandler;->setTrackballSensitivity(I)V

    .line 345
    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isTrackballNoMove()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v4, v10}, Lcom/seleuco/mame4all/input/InputHandler;->setTrackballEnabled(Z)V

    .line 347
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/input/InputHandler;->getInputHandlerState()I

    move-result v9

    .line 349
    .local v9, "state":I
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    move-object v10, v1

    .line 352
    check-cast v10, Lcom/seleuco/mame4all/views/IEmuView;

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getPortraitScaleMode()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/seleuco/mame4all/views/IEmuView;->setScaleType(I)V

    .line 353
    if-eqz v2, :cond_2

    .line 354
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getPortraitScaleMode()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/seleuco/mame4all/views/FilterView;->setScaleType(I)V

    .line 356
    :cond_2
    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isPortraitBitmapFiltering()Z

    move-result v10

    invoke-static {v10}, Lcom/seleuco/mame4all/Emulator;->setFrameFiltering(Z)V

    .line 358
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isPortraitTouchController()Z

    move-result v10

    if-nez v10, :cond_3

    .line 359
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->changeState()V

    .line 361
    :cond_3
    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isPortraitTouchController()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 362
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->changeState()V

    .line 364
    :cond_4
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/input/InputHandler;->getInputHandlerState()I

    move-result v9

    .line 366
    const/4 v10, 0x3

    if-ne v9, v10, :cond_10

    .line 368
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Lcom/seleuco/mame4all/views/InputView;->setVisibility(I)V

    .line 375
    :goto_8
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 377
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f020000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/seleuco/mame4all/views/InputView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    const v10, 0x7f050001

    invoke-virtual {v4, v10}, Lcom/seleuco/mame4all/input/InputHandler;->readControllerValues(I)V

    .line 385
    :cond_5
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 387
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/seleuco/mame4all/input/ControlCustomizer;->setEnabled(Z)V

    .line 388
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getDialogHelper()Lcom/seleuco/mame4all/helpers/DialogHelper;

    move-result-object v10

    const-string v11, "Control layout customization is only allowed in landscape mode"

    invoke-virtual {v10, v11}, Lcom/seleuco/mame4all/helpers/DialogHelper;->setInfoMsg(Ljava/lang/String;)V

    .line 389
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    .line 442
    :cond_6
    :goto_9
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->getOpacity()I

    move-result v7

    .line 443
    .local v7, "op":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 444
    invoke-virtual {v5, v7}, Lcom/seleuco/mame4all/views/InputView;->setAlpha(I)V

    .line 446
    :cond_7
    invoke-virtual {v5}, Lcom/seleuco/mame4all/views/InputView;->requestLayout()V

    .line 447
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 448
    if-eqz v2, :cond_8

    .line 449
    invoke-virtual {v2}, Lcom/seleuco/mame4all/views/FilterView;->requestLayout()V

    .line 451
    :cond_8
    invoke-virtual {v5}, Lcom/seleuco/mame4all/views/InputView;->invalidate()V

    .line 452
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 453
    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {v2}, Lcom/seleuco/mame4all/views/FilterView;->invalidate()V

    goto/16 :goto_0

    .line 328
    .end local v7    # "op":I
    .end local v9    # "state":I
    :cond_9
    sget-object v10, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    aget-object v11, v6, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v10, v3

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 330
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 331
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 332
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 334
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 342
    :cond_e
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->getTiltSensor()Lcom/seleuco/mame4all/input/TiltSensor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/input/TiltSensor;->disable()V

    goto/16 :goto_6

    .line 345
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 372
    .restart local v9    # "state":I
    :cond_10
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/seleuco/mame4all/views/InputView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_11
    move-object v10, v1

    .line 395
    check-cast v10, Lcom/seleuco/mame4all/views/IEmuView;

    iget-object v11, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v11}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getLandscapeScaleMode()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/seleuco/mame4all/views/IEmuView;->setScaleType(I)V

    .line 396
    if-eqz v2, :cond_12

    .line 397
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getLandscapeScaleMode()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/seleuco/mame4all/views/FilterView;->setScaleType(I)V

    .line 399
    :cond_12
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isLandscapeBitmapFiltering()Z

    move-result v10

    invoke-static {v10}, Lcom/seleuco/mame4all/Emulator;->setFrameFiltering(Z)V

    .line 401
    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isLandscapeTouchController()Z

    move-result v10

    if-nez v10, :cond_13

    .line 402
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->changeState()V

    .line 404
    :cond_13
    const/4 v10, 0x3

    if-ne v9, v10, :cond_14

    invoke-virtual {v8}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->isLandscapeTouchController()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 405
    invoke-virtual {v4}, Lcom/seleuco/mame4all/input/InputHandler;->changeState()V

    .line 407
    :cond_14
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputHandler()Lcom/seleuco/mame4all/input/InputHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/input/InputHandler;->getInputHandlerState()I

    move-result v9

    .line 409
    invoke-virtual {v5}, Lcom/seleuco/mame4all/views/InputView;->bringToFront()V

    .line 411
    const/4 v10, 0x3

    if-ne v9, v10, :cond_15

    .line 413
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Lcom/seleuco/mame4all/views/InputView;->setVisibility(I)V

    .line 420
    :goto_a
    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 422
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/seleuco/mame4all/views/InputView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    const/high16 v10, 0x7f050000

    invoke-virtual {v4, v10}, Lcom/seleuco/mame4all/input/InputHandler;->readControllerValues(I)V

    .line 425
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 427
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getInputView()Lcom/seleuco/mame4all/views/InputView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/seleuco/mame4all/views/InputView;->requestFocus()Z

    goto/16 :goto_9

    .line 417
    :cond_15
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/seleuco/mame4all/views/InputView;->setVisibility(I)V

    goto :goto_a

    .line 433
    :cond_16
    invoke-static {}, Lcom/seleuco/mame4all/input/ControlCustomizer;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 435
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/seleuco/mame4all/input/ControlCustomizer;->setEnabled(Z)V

    .line 436
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v10}, Lcom/seleuco/mame4all/MAME4all;->getDialogHelper()Lcom/seleuco/mame4all/helpers/DialogHelper;

    move-result-object v10

    const-string v11, "Control layout customization is only allowed when touch controller is visible"

    invoke-virtual {v10, v11}, Lcom/seleuco/mame4all/helpers/DialogHelper;->setInfoMsg(Ljava/lang/String;)V

    .line 437
    iget-object v10, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/seleuco/mame4all/MAME4all;->showDialog(I)V

    goto/16 :goto_9
.end method

.method public updateOverlayFilter()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 247
    const/4 v0, -0x1

    .line 249
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->getscrOrientation()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getPortraitOverlayFilterType()I

    move-result v0

    .line 254
    :goto_0
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getOverlayFilterType()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 256
    invoke-static {v0}, Lcom/seleuco/mame4all/Emulator;->setOverlayFilterType(I)V

    .line 257
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->reload()V

    .line 263
    :goto_1
    return v1

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getLandscapeOverlayFilterType()I

    move-result v0

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {v0}, Lcom/seleuco/mame4all/Emulator;->setOverlayFilterType(I)V

    .line 263
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateVideoRender()Z
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getVideoRenderMode()I

    move-result v0

    iget-object v1, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getVideoRenderMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getVideoRenderMode()I

    move-result v0

    invoke-static {v0}, Lcom/seleuco/mame4all/Emulator;->setVideoRenderMode(I)V

    .line 272
    invoke-virtual {p0}, Lcom/seleuco/mame4all/helpers/MainHelper;->reload()V

    .line 273
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/seleuco/mame4all/helpers/MainHelper;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getPrefsHelper()Lcom/seleuco/mame4all/helpers/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/PrefsHelper;->getVideoRenderMode()I

    move-result v0

    invoke-static {v0}, Lcom/seleuco/mame4all/Emulator;->setVideoRenderMode(I)V

    .line 278
    const/4 v0, 0x0

    goto :goto_0
.end method
