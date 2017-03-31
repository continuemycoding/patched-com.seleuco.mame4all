.class Lcom/seleuco/mame4all/Emulator$2;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seleuco/mame4all/Emulator;->emulate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$libPath:Ljava/lang/String;

.field private final synthetic val$resPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seleuco/mame4all/Emulator$2;->val$libPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/seleuco/mame4all/Emulator$2;->val$resPath:Ljava/lang/String;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/seleuco/mame4all/Emulator;->access$1(Z)V

    .line 470
    iget-object v0, p0, Lcom/seleuco/mame4all/Emulator$2;->val$libPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/seleuco/mame4all/Emulator$2;->val$resPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/seleuco/mame4all/Emulator;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method
