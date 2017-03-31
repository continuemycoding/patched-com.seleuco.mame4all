.class public Lcom/seleuco/mame4all/input/InputHandlerFactory;
.super Ljava/lang/Object;
.source "InputHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInputHandler(Lcom/seleuco/mame4all/MAME4all;)Lcom/seleuco/mame4all/input/InputHandler;
    .locals 5
    .param p0, "mm"    # Lcom/seleuco/mame4all/MAME4all;

    .prologue
    .line 44
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "m":Ljava/lang/reflect/Method;
    new-instance v2, Lcom/seleuco/mame4all/input/InputHandlerExt;

    invoke-direct {v2, p0}, Lcom/seleuco/mame4all/input/InputHandlerExt;-><init>(Lcom/seleuco/mame4all/MAME4all;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/seleuco/mame4all/input/InputHandler;

    invoke-direct {v2, p0}, Lcom/seleuco/mame4all/input/InputHandler;-><init>(Lcom/seleuco/mame4all/MAME4all;)V

    goto :goto_0
.end method
