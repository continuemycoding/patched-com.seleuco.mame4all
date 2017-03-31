.class public Lcom/seleuco/mame4all/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# static fields
.field public static final ASMCORES_KEY:I = 0x7

.field public static final BPLUSX_KEY:I = 0x5

.field public static final EXIT_GAME_KEY:I = 0x2

.field public static final EXIT_PAUSE:I = 0x9

.field public static final FPS_SHOWED_KEY:I = 0x1

.field public static final HIDE_LR__KEY:I = 0x4

.field public static final IDLE_WAIT:I = 0xa

.field public static final INFOWARN_KEY:I = 0x8

.field public static final LAND_BUTTONS_KEY:I = 0x3

.field public static final WAYS_STICK_KEY:I = 0x6

.field private static audioTrack:Landroid/media/AudioTrack;

.field private static debugPaint:Landroid/graphics/Paint;

.field private static emuBitmap:Landroid/graphics/Bitmap;

.field private static emuPaint:Landroid/graphics/Paint;

.field private static emu_height:I

.field private static emu_width:I

.field static fps:I

.field private static frameFiltering:Z

.field private static holder:Landroid/view/SurfaceHolder;

.field static i:I

.field private static inMAME:Z

.field private static isDebug:Z

.field private static isEmulating:Z

.field private static isThreadedSound:Z

.field static j:J

.field private static lock1:Ljava/lang/Object;

.field private static lock2:Ljava/lang/Object;

.field static millis:J

.field private static mm:Lcom/seleuco/mame4all/MAME4all;

.field private static mtx:Landroid/graphics/Matrix;

.field private static overlayFilterType:I

.field private static paused:Z

.field private static screenBuff:Ljava/nio/ByteBuffer;

.field private static screenBuffPx:[I

.field private static soundT:Lcom/seleuco/mame4all/SoundThread;

.field private static videoRenderMode:I

.field private static videoT:Lcom/seleuco/mame4all/VideoThread;

.field private static window_height:I

.field private static window_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x140

    const/16 v5, 0xf0

    const/16 v4, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 64
    sput-object v2, Lcom/seleuco/mame4all/Emulator;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 66
    sput-boolean v3, Lcom/seleuco/mame4all/Emulator;->isEmulating:Z

    .line 71
    sput-boolean v3, Lcom/seleuco/mame4all/Emulator;->paused:Z

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->lock1:Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->lock2:Ljava/lang/Object;

    .line 75
    sput-object v2, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    .line 76
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->emuBitmap:Landroid/graphics/Bitmap;

    .line 77
    sput-object v2, Lcom/seleuco/mame4all/Emulator;->screenBuff:Ljava/nio/ByteBuffer;

    .line 79
    const v1, 0xe1000

    new-array v1, v1, [I

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->screenBuffPx:[I

    .line 84
    sput-boolean v3, Lcom/seleuco/mame4all/Emulator;->frameFiltering:Z

    .line 89
    sput-object v2, Lcom/seleuco/mame4all/Emulator;->emuPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->debugPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->mtx:Landroid/graphics/Matrix;

    .line 94
    sput v6, Lcom/seleuco/mame4all/Emulator;->window_width:I

    .line 99
    sput v5, Lcom/seleuco/mame4all/Emulator;->window_height:I

    .line 104
    sput v6, Lcom/seleuco/mame4all/Emulator;->emu_width:I

    .line 105
    sput v5, Lcom/seleuco/mame4all/Emulator;->emu_height:I

    .line 107
    sput-object v2, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    .line 109
    sput-boolean v3, Lcom/seleuco/mame4all/Emulator;->isThreadedSound:Z

    .line 110
    sput-boolean v3, Lcom/seleuco/mame4all/Emulator;->isDebug:Z

    .line 111
    const/4 v1, 0x2

    sput v1, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    .line 112
    sput-boolean v3, Lcom/seleuco/mame4all/Emulator;->inMAME:Z

    .line 116
    const/4 v1, 0x1

    sput v1, Lcom/seleuco/mame4all/Emulator;->overlayFilterType:I

    .line 126
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/seleuco/mame4all/Emulator;->j:J

    .line 127
    sput v3, Lcom/seleuco/mame4all/Emulator;->i:I

    .line 128
    sput v3, Lcom/seleuco/mame4all/Emulator;->fps:I

    .line 131
    new-instance v1, Lcom/seleuco/mame4all/SoundThread;

    invoke-direct {v1}, Lcom/seleuco/mame4all/SoundThread;-><init>()V

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->soundT:Lcom/seleuco/mame4all/SoundThread;

    .line 132
    new-instance v1, Lcom/seleuco/mame4all/VideoThread;

    invoke-direct {v1}, Lcom/seleuco/mame4all/VideoThread;-><init>()V

    sput-object v1, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    .line 139
    :try_start_0
    const-string v1, "mame4all-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v0, "e":Ljava/lang/Error;
    :goto_0
    sget-object v1, Lcom/seleuco/mame4all/Emulator;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 147
    sget-object v1, Lcom/seleuco/mame4all/Emulator;->debugPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    sget-object v1, Lcom/seleuco/mame4all/Emulator;->debugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    return-void

    .line 141
    .end local v0    # "e":Ljava/lang/Error;
    :catch_0
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/seleuco/mame4all/MAME4all;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->mm:Lcom/seleuco/mame4all/MAME4all;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 66
    sput-boolean p0, Lcom/seleuco/mame4all/Emulator;->isEmulating:Z

    return-void
.end method

.method static bitblt(Ljava/nio/ByteBuffer;Z)V
    .locals 8
    .param p0, "sScreenBuff"    # Ljava/nio/ByteBuffer;
    .param p1, "inMAME"    # Z

    .prologue
    .line 287
    sget-boolean v2, Lcom/seleuco/mame4all/Emulator;->paused:Z

    if-eqz v2, :cond_1

    .line 289
    sget-object v3, Lcom/seleuco/mame4all/Emulator;->lock2:Ljava/lang/Object;

    monitor-enter v3

    .line 293
    :try_start_0
    sget-boolean v2, Lcom/seleuco/mame4all/Emulator;->paused:Z

    if-eqz v2, :cond_0

    .line 294
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->lock2:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_1
    sget-object v3, Lcom/seleuco/mame4all/Emulator;->lock1:Ljava/lang/Object;

    monitor-enter v3

    .line 303
    :try_start_2
    sput-object p0, Lcom/seleuco/mame4all/Emulator;->screenBuff:Ljava/nio/ByteBuffer;

    .line 304
    sput-boolean p1, Lcom/seleuco/mame4all/Emulator;->inMAME:Z

    .line 306
    sget v2, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 308
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/seleuco/mame4all/views/EmulatorViewGL;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->requestRender()V

    .line 300
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    :goto_2
    return-void

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 310
    :cond_2
    :try_start_4
    sget v2, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 312
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/VideoThread;->update()V

    goto :goto_1

    .line 300
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 314
    :cond_3
    :try_start_5
    sget v2, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 317
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/VideoThread;->update()V

    goto :goto_1

    .line 321
    :cond_4
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_5

    .line 322
    monitor-exit v3

    goto :goto_2

    .line 324
    :cond_5
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 325
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 326
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->emuBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 327
    sget v2, Lcom/seleuco/mame4all/Emulator;->i:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/seleuco/mame4all/Emulator;->i:I

    .line 328
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->mtx:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 329
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->emuBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/seleuco/mame4all/Emulator;->emuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 331
    sget-boolean v2, Lcom/seleuco/mame4all/Emulator;->isDebug:Z

    if-eqz v2, :cond_6

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Normal fps:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/seleuco/mame4all/Emulator;->fps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x42200000    # 40.0f

    sget-object v6, Lcom/seleuco/mame4all/Emulator;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/seleuco/mame4all/Emulator;->millis:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_6

    sget v2, Lcom/seleuco/mame4all/Emulator;->i:I

    sput v2, Lcom/seleuco/mame4all/Emulator;->fps:I

    const/4 v2, 0x0

    sput v2, Lcom/seleuco/mame4all/Emulator;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/seleuco/mame4all/Emulator;->millis:J

    .line 336
    :cond_6
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1
.end method

.method public static changeVideo(II)V
    .locals 7
    .param p0, "newWidth"    # I
    .param p1, "newHeight"    # I

    .prologue
    .line 350
    sget-object v3, Lcom/seleuco/mame4all/Emulator;->lock1:Ljava/lang/Object;

    monitor-enter v3

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 357
    :try_start_0
    sput p0, Lcom/seleuco/mame4all/Emulator;->emu_width:I

    .line 358
    sput p1, Lcom/seleuco/mame4all/Emulator;->emu_height:I

    .line 360
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/seleuco/mame4all/Emulator;->emuBitmap:Landroid/graphics/Bitmap;

    .line 361
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->mtx:Landroid/graphics/Matrix;

    sget v4, Lcom/seleuco/mame4all/Emulator;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/seleuco/mame4all/Emulator;->emu_width:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sget v5, Lcom/seleuco/mame4all/Emulator;->window_height:I

    int-to-float v5, v5

    sget v6, Lcom/seleuco/mame4all/Emulator;->emu_height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 363
    sget v2, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 365
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->mm:Lcom/seleuco/mame4all/MAME4all;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/MAME4all;->getEmuView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/seleuco/mame4all/views/EmulatorViewGL;

    invoke-virtual {v2}, Lcom/seleuco/mame4all/views/EmulatorViewGL;->getRender()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    check-cast v1, Lcom/seleuco/mame4all/GLRenderer;

    .line 366
    .local v1, "r":Lcom/seleuco/mame4all/GLRenderer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/seleuco/mame4all/GLRenderer;->changedEmulatedSize()V

    .line 369
    .end local v1    # "r":Lcom/seleuco/mame4all/GLRenderer;
    :cond_0
    sget-object v2, Lcom/seleuco/mame4all/Emulator;->mm:Lcom/seleuco/mame4all/MAME4all;

    new-instance v4, Lcom/seleuco/mame4all/Emulator$1;

    invoke-direct {v4}, Lcom/seleuco/mame4all/Emulator$1;-><init>()V

    invoke-virtual {v2, v4}, Lcom/seleuco/mame4all/MAME4all;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    monitor-exit v3

    .line 376
    return-void

    .line 353
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static emulate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "libPath"    # Ljava/lang/String;
    .param p1, "resPath"    # Ljava/lang/String;

    .prologue
    .line 465
    sget-boolean v1, Lcom/seleuco/mame4all/Emulator;->isEmulating:Z

    if-eqz v1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/seleuco/mame4all/Emulator$2;

    invoke-direct {v1, p0, p1}, Lcom/seleuco/mame4all/Emulator$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v2, "emulator-Thread"

    .line 467
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 477
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static endAudio()V
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 402
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 403
    const/4 v0, 0x0

    sput-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    .line 404
    return-void
.end method

.method public static getDebugPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->debugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static getEmuBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->emuBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getEmuPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->emuPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static getEmulatedHeight()I
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/seleuco/mame4all/Emulator;->emu_height:I

    return v0
.end method

.method public static getEmulatedWidth()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/seleuco/mame4all/Emulator;->emu_width:I

    return v0
.end method

.method public static getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->mtx:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static getOverlayFilterType()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/seleuco/mame4all/Emulator;->overlayFilterType:I

    return v0
.end method

.method public static getScreenBuffPx()[I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->screenBuffPx:[I

    return-object v0
.end method

.method public static getScreenBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->screenBuff:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static native getValue(I)I
.end method

.method public static getVideoRenderMode()I
    .locals 1

    .prologue
    .line 177
    sget v0, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    return v0
.end method

.method public static getWindow_height()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/seleuco/mame4all/Emulator;->window_height:I

    return v0
.end method

.method public static getWindow_width()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/seleuco/mame4all/Emulator;->window_width:I

    return v0
.end method

.method protected static native init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static initAudio(IZ)V
    .locals 7
    .param p0, "freq"    # I
    .param p1, "stereo"    # Z

    .prologue
    const/4 v1, 0x3

    .line 382
    move v2, p0

    .line 384
    .local v2, "sampleFreq":I
    if-eqz p1, :cond_0

    move v3, v1

    .line 385
    .local v3, "channelConfig":I
    :goto_0
    const/4 v4, 0x2

    .line 386
    .local v4, "audioFormat":I
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    .line 390
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    .line 395
    const/4 v6, 0x1

    .line 390
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    .line 397
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 398
    return-void

    .line 384
    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v5    # "bufferSize":I
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->isDebug:Z

    return v0
.end method

.method public static isEmulating()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->isEmulating:Z

    return v0
.end method

.method public static isFrameFiltering()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->frameFiltering:Z

    return v0
.end method

.method public static isInMAME()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->inMAME:Z

    return v0
.end method

.method public static isThreadedSound()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->isThreadedSound:Z

    return v0
.end method

.method public static lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 429
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->isEmulating:Z

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x1

    sput-boolean v0, Lcom/seleuco/mame4all/Emulator;->paused:Z

    .line 435
    :cond_0
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 436
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 438
    :cond_1
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/VideoThread;->stop()V

    .line 439
    return-void
.end method

.method public static resume()V
    .locals 2

    .prologue
    .line 444
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 447
    :cond_0
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->isEmulating:Z

    if-eqz v0, :cond_1

    .line 450
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/seleuco/mame4all/Emulator;->setValue(II)V

    .line 451
    sget-object v1, Lcom/seleuco/mame4all/Emulator;->lock2:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/seleuco/mame4all/Emulator;->paused:Z

    .line 453
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->lock2:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_1
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/VideoThread;->start()V

    .line 458
    return-void

    .line 451
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synchronized native declared-synchronized setAnalogData(IFF)V
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 173
    sput-boolean p0, Lcom/seleuco/mame4all/Emulator;->isDebug:Z

    .line 174
    return-void
.end method

.method public static setFrameFiltering(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 271
    sput-boolean p0, Lcom/seleuco/mame4all/Emulator;->frameFiltering:Z

    .line 272
    if-eqz p0, :cond_0

    .line 274
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/seleuco/mame4all/Emulator;->emuPaint:Landroid/graphics/Paint;

    .line 275
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->emuPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/seleuco/mame4all/Emulator;->emuPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public static setHolder(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p0, "value"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 215
    sget-object v1, Lcom/seleuco/mame4all/Emulator;->lock1:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    if-eqz p0, :cond_0

    .line 219
    :try_start_0
    sput-object p0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    .line 220
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 222
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 223
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/VideoThread;->start()V

    .line 215
    :goto_0
    monitor-exit v1

    .line 235
    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    invoke-virtual {v0}, Lcom/seleuco/mame4all/VideoThread;->stop()V

    .line 230
    const/4 v0, 0x0

    sput-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 1
    .param p0, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 254
    sput-object p0, Lcom/seleuco/mame4all/Emulator;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 255
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->videoT:Lcom/seleuco/mame4all/VideoThread;

    invoke-virtual {v0, p0}, Lcom/seleuco/mame4all/VideoThread;->setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V

    .line 256
    return-void
.end method

.method public static setOverlayFilterType(I)V
    .locals 0
    .param p0, "overlayFilterType"    # I

    .prologue
    .line 123
    sput p0, Lcom/seleuco/mame4all/Emulator;->overlayFilterType:I

    .line 124
    return-void
.end method

.method public static synchronized native declared-synchronized setPadData(IJ)V
.end method

.method public static setThreadedSound(Z)V
    .locals 0
    .param p0, "isThreadedSound"    # Z

    .prologue
    .line 165
    sput-boolean p0, Lcom/seleuco/mame4all/Emulator;->isThreadedSound:Z

    .line 166
    return-void
.end method

.method public static native setValue(II)V
.end method

.method public static setVideoRenderMode(I)V
    .locals 0
    .param p0, "videoRenderMode"    # I

    .prologue
    .line 181
    sput p0, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    .line 182
    return-void
.end method

.method public static setWindowSize(II)V
    .locals 4
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    .line 261
    sput p0, Lcom/seleuco/mame4all/Emulator;->window_width:I

    .line 262
    sput p1, Lcom/seleuco/mame4all/Emulator;->window_height:I

    .line 264
    sget v0, Lcom/seleuco/mame4all/Emulator;->videoRenderMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->mtx:Landroid/graphics/Matrix;

    sget v1, Lcom/seleuco/mame4all/Emulator;->window_width:I

    int-to-float v1, v1

    sget v2, Lcom/seleuco/mame4all/Emulator;->emu_width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sget v2, Lcom/seleuco/mame4all/Emulator;->window_height:I

    int-to-float v2, v2

    sget v3, Lcom/seleuco/mame4all/Emulator;->emu_height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0
.end method

.method public static unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 247
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 249
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 251
    :cond_0
    return-void
.end method

.method public static writeAudio([BI)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "sz"    # I

    .prologue
    .line 409
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 412
    sget-boolean v0, Lcom/seleuco/mame4all/Emulator;->isThreadedSound:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/seleuco/mame4all/Emulator;->soundT:Lcom/seleuco/mame4all/SoundThread;

    if-eqz v0, :cond_1

    .line 414
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->soundT:Lcom/seleuco/mame4all/SoundThread;

    sget-object v1, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/seleuco/mame4all/SoundThread;->setAudioTrack(Landroid/media/AudioTrack;)V

    .line 415
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->soundT:Lcom/seleuco/mame4all/SoundThread;

    invoke-virtual {v0, p0, p1}, Lcom/seleuco/mame4all/SoundThread;->writeSample([BI)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    sget-object v0, Lcom/seleuco/mame4all/Emulator;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0
.end method
