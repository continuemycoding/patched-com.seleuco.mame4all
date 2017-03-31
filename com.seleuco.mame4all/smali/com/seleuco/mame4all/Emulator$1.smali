.class Lcom/seleuco/mame4all/Emulator$1;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/Emulator;->changeVideo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    # getter for: Lcom/seleuco/mame4all/Emulator;->mm:Lcom/seleuco/mame4all/MAME4all;
    invoke-static {}, Lcom/seleuco/mame4all/Emulator;->access$0()Lcom/seleuco/mame4all/MAME4all;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/MAME4all;->getMainHelper()Lcom/seleuco/mame4all/helpers/MainHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seleuco/mame4all/helpers/MainHelper;->updateMAME4all()V

    .line 372
    return-void
.end method
