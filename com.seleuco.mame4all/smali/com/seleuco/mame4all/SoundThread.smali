.class public Lcom/seleuco/mame4all/SoundThread;
.super Ljava/lang/Object;
.source "SoundThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field buff:[B

.field buff_size:I

.field protected t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seleuco/mame4all/SoundThread;->t:Ljava/lang/Thread;

    .line 49
    const/16 v0, 0x2df0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/seleuco/mame4all/SoundThread;->buff:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/seleuco/mame4all/SoundThread;->buff_size:I

    .line 51
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "sound-Thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/seleuco/mame4all/SoundThread;->t:Ljava/lang/Thread;

    .line 52
    iget-object v0, p0, Lcom/seleuco/mame4all/SoundThread;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 59
    :cond_0
    :goto_0
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    iget-object v1, p0, Lcom/seleuco/mame4all/SoundThread;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/seleuco/mame4all/SoundThread;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/seleuco/mame4all/SoundThread;->buff:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/seleuco/mame4all/SoundThread;->buff_size:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 59
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/seleuco/mame4all/SoundThread;->audioTrack:Landroid/media/AudioTrack;

    .line 45
    return-void
.end method

.method public declared-synchronized writeSample([BI)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "size"    # I

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/seleuco/mame4all/SoundThread;->buff:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput p2, p0, Lcom/seleuco/mame4all/SoundThread;->buff_size:I

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
