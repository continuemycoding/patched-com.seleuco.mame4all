.class Lcom/seleuco/mame4all/input/InputHandler$1;
.super Ljava/lang/Object;
.source "InputHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seleuco/mame4all/input/InputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seleuco/mame4all/input/InputHandler;


# direct methods
.method constructor <init>(Lcom/seleuco/mame4all/input/InputHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/input/InputHandler$1;->this$0:Lcom/seleuco/mame4all/input/InputHandler;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler$1;->this$0:Lcom/seleuco/mame4all/input/InputHandler;

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v0, v2

    and-int/lit8 v1, v1, -0x2

    aput v1, v0, v2

    .line 232
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler$1;->this$0:Lcom/seleuco/mame4all/input/InputHandler;

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v0, v2

    and-int/lit8 v1, v1, -0x11

    aput v1, v0, v2

    .line 233
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler$1;->this$0:Lcom/seleuco/mame4all/input/InputHandler;

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v0, v2

    and-int/lit8 v1, v1, -0x5

    aput v1, v0, v2

    .line 234
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler$1;->this$0:Lcom/seleuco/mame4all/input/InputHandler;

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v1, v0, v2

    and-int/lit8 v1, v1, -0x41

    aput v1, v0, v2

    .line 235
    iget-object v0, p0, Lcom/seleuco/mame4all/input/InputHandler$1;->this$0:Lcom/seleuco/mame4all/input/InputHandler;

    iget-object v0, v0, Lcom/seleuco/mame4all/input/InputHandler;->pad_data:[I

    aget v0, v0, v2

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/seleuco/mame4all/Emulator;->setPadData(IJ)V

    .line 240
    return-void
.end method
