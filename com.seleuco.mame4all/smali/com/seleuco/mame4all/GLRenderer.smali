.class public Lcom/seleuco/mame4all/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field protected force10:Z

.field private final mCrop:[I

.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field protected mTex:I

.field private mTexBuffer:Ljava/nio/FloatBuffer;

.field private final mTextureName:[I

.field protected mm:Lcom/seleuco/mame4all/MAME4all;

.field protected mtexBuf:[I

.field protected shortBuffer:Ljava/nio/ShortBuffer;

.field protected smooth:Z

.field protected textureInit:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    .line 51
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/seleuco/mame4all/GLRenderer;->mtexBuf:[I

    .line 55
    iput-object v3, p0, Lcom/seleuco/mame4all/GLRenderer;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 61
    iput-boolean v1, p0, Lcom/seleuco/mame4all/GLRenderer;->textureInit:Z

    .line 62
    iput-boolean v1, p0, Lcom/seleuco/mame4all/GLRenderer;->force10:Z

    .line 64
    iput-boolean v1, p0, Lcom/seleuco/mame4all/GLRenderer;->smooth:Z

    .line 66
    iput-object v3, p0, Lcom/seleuco/mame4all/GLRenderer;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 74
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/seleuco/mame4all/GLRenderer;->mTextureName:[I

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/seleuco/mame4all/GLRenderer;->mCrop:[I

    .line 76
    return-void
.end method

.method private getP2Size(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0x200

    const/16 v0, 0x100

    .line 86
    if-gt p1, v0, :cond_0

    .line 91
    :goto_0
    return v0

    .line 88
    :cond_0
    if-gt p1, v1, :cond_1

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    const/16 v0, 0x400

    goto :goto_0
.end method

.method private releaseTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    iget v0, p0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 238
    new-array v0, v3, [I

    iget v1, p0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public changedEmulatedSize()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "mm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changedEmulatedSize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/seleuco/mame4all/GLRenderer;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/seleuco/mame4all/GLRenderer;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/seleuco/mame4all/GLRenderer;->textureInit:Z

    goto :goto_0
.end method

.method public dispose(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/seleuco/mame4all/GLRenderer;->releaseTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 244
    return-void
.end method

.method public initVertexes(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 176
    move-object/from16 v0, p1

    instance-of v14, v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/seleuco/mame4all/GLRenderer;->force10:Z

    if-nez v14, :cond_0

    .line 234
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v12

    .line 180
    .local v12, "width":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v2

    .line 182
    .local v2, "height":I
    const/16 v14, 0x30

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 183
    .local v11, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 186
    const/16 v14, 0x20

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 187
    .local v9, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 190
    const/16 v14, 0x8

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 191
    .local v5, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 194
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getWindow_width()I

    move-result v14

    int-to-float v14, v14

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v7, v14, v15

    .line 195
    .local v7, "scaleX":F
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getWindow_height()I

    move-result v14

    int-to-float v14, v14

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v8, v14, v15

    .line 197
    .local v8, "scaleY":F
    const/16 v14, 0xc

    new-array v1, v14, [F

    const/4 v14, 0x0

    .line 199
    int-to-float v15, v12

    mul-float/2addr v15, v7

    float-to-int v15, v15

    int-to-float v15, v15

    aput v15, v1, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v1, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v1, v14

    const/4 v14, 0x3

    .line 200
    int-to-float v15, v12

    mul-float/2addr v15, v7

    float-to-int v15, v15

    int-to-float v15, v15

    aput v15, v1, v14

    const/4 v14, 0x4

    int-to-float v15, v2

    mul-float/2addr v15, v8

    float-to-int v15, v15

    int-to-float v15, v15

    aput v15, v1, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput v15, v1, v14

    const/4 v14, 0x6

    .line 201
    const/4 v15, 0x0

    aput v15, v1, v14

    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0x8

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0x9

    .line 202
    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0xa

    int-to-float v15, v2

    mul-float/2addr v15, v8

    float-to-int v15, v15

    int-to-float v15, v15

    aput v15, v1, v14

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, v1, v14

    .line 204
    .local v1, "coords":[F
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/seleuco/mame4all/GLRenderer;->getP2Size(I)I

    move-result v13

    .line 205
    .local v13, "width_p2":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/seleuco/mame4all/GLRenderer;->getP2Size(I)I

    move-result v3

    .line 208
    .local v3, "height_p2":I
    const/16 v14, 0xc

    new-array v10, v14, [F

    const/4 v14, 0x0

    .line 210
    const/high16 v15, 0x3f800000    # 1.0f

    int-to-float v0, v13

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    div-float v15, v15, v16

    aput v15, v10, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v10, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v10, v14

    const/4 v14, 0x3

    .line 211
    const/high16 v15, 0x3f800000    # 1.0f

    int-to-float v0, v13

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    div-float v15, v15, v16

    aput v15, v10, v14

    const/4 v14, 0x4

    .line 212
    const/high16 v15, 0x3f800000    # 1.0f

    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v2

    move/from16 v17, v0

    div-float v16, v16, v17

    div-float v15, v15, v16

    aput v15, v10, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput v15, v10, v14

    const/4 v14, 0x6

    const/4 v15, 0x0

    aput v15, v10, v14

    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, v10, v14

    const/16 v14, 0x8

    const/4 v15, 0x0

    aput v15, v10, v14

    const/16 v14, 0x9

    const/4 v15, 0x0

    aput v15, v10, v14

    const/16 v14, 0xa

    .line 213
    const/high16 v15, 0x3f800000    # 1.0f

    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v2

    move/from16 v17, v0

    div-float v16, v16, v17

    div-float v15, v15, v16

    aput v15, v10, v14

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, v10, v14

    .line 215
    .local v10, "texturCoords":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v14, 0x4

    if-lt v4, v14, :cond_1

    .line 221
    const/4 v4, 0x0

    :goto_2
    const/4 v14, 0x4

    if-lt v4, v14, :cond_3

    .line 227
    const/4 v4, 0x0

    :goto_3
    const/4 v14, 0x4

    if-lt v4, v14, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 216
    :cond_1
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    const/4 v14, 0x3

    if-lt v6, v14, :cond_2

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v15, v4, 0x3

    add-int/2addr v15, v6

    aget v15, v1, v15

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 216
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 222
    .end local v6    # "j":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    const/4 v14, 0x2

    if-lt v6, v14, :cond_4

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 223
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v15, v4, 0x3

    add-int/2addr v15, v6

    aget v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 222
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 228
    .end local v6    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/seleuco/mame4all/GLRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    int-to-short v15, v4

    invoke-virtual {v14, v15}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected isSmooth()Z
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->isFrameFiltering()Z

    move-result v0

    return v0
.end method

.method protected loadTexture(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v6, 0x0

    const v5, 0x47012f00    # 33071.0f

    const/16 v4, 0xde1

    .line 144
    const/4 v1, -0x1

    .line 145
    .local v1, "textureName":I
    if-eqz p1, :cond_0

    .line 146
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/seleuco/mame4all/GLRenderer;->mTextureName:[I

    invoke-interface {p1, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 148
    iget-object v2, p0, Lcom/seleuco/mame4all/GLRenderer;->mTextureName:[I

    aget v1, v2, v6

    .line 149
    invoke-interface {p1, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 151
    invoke-virtual {p0}, Lcom/seleuco/mame4all/GLRenderer;->isSmooth()Z

    move-result v2

    iput-boolean v2, p0, Lcom/seleuco/mame4all/GLRenderer;->smooth:Z

    .line 153
    const/16 v2, 0x2801

    .line 154
    const/high16 v3, 0x46180000    # 9728.0f

    .line 153
    invoke-interface {p1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 155
    const/16 v3, 0x2800

    .line 156
    iget-boolean v2, p0, Lcom/seleuco/mame4all/GLRenderer;->smooth:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x2601

    :goto_0
    int-to-float v2, v2

    .line 155
    invoke-interface {p1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 158
    const/16 v2, 0x2802

    invoke-interface {p1, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 160
    const/16 v2, 0x2803

    invoke-interface {p1, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 163
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    .line 164
    const v4, 0x45f00800    # 7681.0f

    .line 163
    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 166
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 167
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 168
    const-string v2, "GLRender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Texture Load GLError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "error":I
    :cond_0
    return v1

    .line 156
    :cond_1
    const/16 v2, 0x2600

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 23
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seleuco/mame4all/GLRenderer;->shortBuffer:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_1

    .line 252
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getScreenBuffer()Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 253
    .local v22, "buf":Ljava/nio/ByteBuffer;
    if-nez v22, :cond_0

    .line 312
    .end local v22    # "buf":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 254
    .restart local v22    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/seleuco/mame4all/GLRenderer;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 257
    .end local v22    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/seleuco/mame4all/GLRenderer;->smooth:Z

    invoke-virtual/range {p0 .. p0}, Lcom/seleuco/mame4all/GLRenderer;->isSmooth()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 258
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/seleuco/mame4all/GLRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    .line 260
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 261
    move-object/from16 v0, p0

    iget v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seleuco/mame4all/GLRenderer;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 265
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/seleuco/mame4all/GLRenderer;->mTex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 267
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/seleuco/mame4all/GLRenderer;->textureInit:Z

    if-nez v1, :cond_4

    .line 269
    invoke-virtual/range {p0 .. p1}, Lcom/seleuco/mame4all/GLRenderer;->initVertexes(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 271
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/seleuco/mame4all/GLRenderer;->getP2Size(I)I

    move-result v1

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/seleuco/mame4all/GLRenderer;->getP2Size(I)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v10

    .line 272
    .local v10, "tmp":Ljava/nio/ShortBuffer;
    invoke-virtual {v10}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v21

    .line 273
    .local v21, "a":[S
    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 275
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1907

    .line 276
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/seleuco/mame4all/GLRenderer;->getP2Size(I)I

    move-result v5

    .line 277
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/seleuco/mame4all/GLRenderer;->getP2Size(I)I

    move-result v6

    .line 278
    const/4 v7, 0x0

    const/16 v8, 0x1907

    .line 279
    const v9, 0x8363

    move-object/from16 v1, p1

    .line 275
    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 280
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/seleuco/mame4all/GLRenderer;->textureInit:Z

    .line 289
    .end local v10    # "tmp":Ljava/nio/ShortBuffer;
    .end local v21    # "a":[S
    :cond_4
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedWidth()I

    move-result v16

    .line 290
    .local v16, "width":I
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getEmulatedHeight()I

    move-result v17

    .line 292
    .local v17, "height":I
    const/16 v12, 0xde1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x1907

    const v19, 0x8363

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seleuco/mame4all/GLRenderer;->shortBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v20, v0

    move-object/from16 v11, p1

    invoke-interface/range {v11 .. v20}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 294
    move-object/from16 v0, p1

    instance-of v1, v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/seleuco/mame4all/GLRenderer;->force10:Z

    if-nez v1, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mCrop:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mCrop:[I

    const/4 v2, 0x1

    aput v17, v1, v2

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mCrop:[I

    const/4 v2, 0x2

    aput v16, v1, v2

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seleuco/mame4all/GLRenderer;->mCrop:[I

    const/4 v2, 0x3

    move/from16 v0, v17

    neg-int v3, v0

    aput v3, v1, v2

    move-object/from16 v1, p1

    .line 301
    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0xde1

    const v3, 0x8b9d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/seleuco/mame4all/GLRenderer;->mCrop:[I

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    move-object/from16 v1, p1

    .line 303
    check-cast v1, Ljavax/microedition/khronos/opengles/GL11Ext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getWindow_width()I

    move-result v5

    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->getWindow_height()I

    move-result v6

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    goto/16 :goto_0

    .line 307
    :cond_5
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/seleuco/mame4all/GLRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 308
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/seleuco/mame4all/GLRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 309
    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 310
    const/16 v3, 0x1403

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/seleuco/mame4all/GLRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 309
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 122
    const-string v0, "mm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sizeChanged: ==> new Viewport: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {p1, v8, v8, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 126
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 127
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 128
    int-to-float v2, p2

    int-to-float v3, p3

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p1

    move v4, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 130
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 132
    invoke-interface {p1, v7, v7, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 133
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 135
    iput-boolean v8, p0, Lcom/seleuco/mame4all/GLRenderer;->textureInit:Z

    .line 136
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 95
    const-string v0, "mm"

    const-string v1, "onSurfaceCreated "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v2, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 100
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 102
    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 103
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 105
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 106
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 107
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 108
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 109
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 110
    const v0, 0x809d

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 112
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/seleuco/mame4all/GLRenderer;->force10:Z

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 115
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 118
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/seleuco/mame4all/GLRenderer;->textureInit:Z

    .line 119
    return-void
.end method

.method public setMAME4all(Lcom/seleuco/mame4all/MAME4all;)V
    .locals 0
    .param p1, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/seleuco/mame4all/GLRenderer;->mm:Lcom/seleuco/mame4all/MAME4all;

    .line 70
    return-void
.end method
