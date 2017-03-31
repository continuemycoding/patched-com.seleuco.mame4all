.class public Lcom/seleuco/mame4all/VideoThread;
.super Ljava/lang/Object;
.source "VideoThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected canvas:Landroid/graphics/Canvas;

.field protected fps:I

.field protected i:I

.field protected millis:J

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected run:Z

.field protected thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->thread:Ljava/lang/Thread;

    .line 45
    iput v0, p0, Lcom/seleuco/mame4all/VideoThread;->i:I

    .line 46
    iput v0, p0, Lcom/seleuco/mame4all/VideoThread;->fps:I

    .line 48
    iput-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->canvas:Landroid/graphics/Canvas;

    .line 49
    iput-boolean v0, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z

    .line 50
    iput-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 96
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z

    if-nez v1, :cond_1

    .line 168
    :goto_1
    return-void

    .line 101
    :cond_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iget-boolean v1, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :try_start_2
    monitor-exit p0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    :catch_0
    move-exception v10

    .line 162
    .local v10, "t":Ljava/lang/Exception;
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 106
    .end local v10    # "t":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 108
    iget-boolean v1, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_3

    :try_start_5
    monitor-exit p0

    goto :goto_1

    .line 109
    :catch_1
    move-exception v9

    .line 110
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    :try_start_6
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 117
    .local v8, "bf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmuBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getVideoRenderMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 126
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 127
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 129
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffPx()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v6

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 131
    iget-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v1}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 136
    :cond_4
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->canvas:Landroid/graphics/Canvas;

    .line 138
    iget-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->canvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 143
    iget v1, p0, Lcom/seleuco/mame4all/VideoThread;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/seleuco/mame4all/VideoThread;->i:I

    .line 145
    iget-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->canvas:Landroid/graphics/Canvas;

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 146
    iget-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmuPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->canvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Threaded fps:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/seleuco/mame4all/VideoThread;->fps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getWindow_width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getWindow_height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/seleuco/mame4all/VideoThread;->millis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/seleuco/mame4all/VideoThread;->i:I

    iput v1, p0, Lcom/seleuco/mame4all/VideoThread;->fps:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/seleuco/mame4all/VideoThread;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/seleuco/mame4all/VideoThread;->millis:J

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->canvas:Landroid/graphics/Canvas;

    invoke-static {v1}, Lcom/seleuco/mame4all/Emulator;->unlockCanvas(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 0
    .param p1, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/seleuco/mame4all/VideoThread;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 54
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/seleuco/mame4all/VideoThread;->stop()V

    .line 61
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z

    .line 62
    iget-object v0, p0, Lcom/seleuco/mame4all/VideoThread;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "video-Thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/seleuco/mame4all/VideoThread;->thread:Ljava/lang/Thread;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/seleuco/mame4all/VideoThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v1, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/seleuco/mame4all/VideoThread;->run:Z

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/seleuco/mame4all/VideoThread;->thread:Ljava/lang/Thread;

    .line 91
    :cond_0
    return-void

    .line 76
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized update()V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
