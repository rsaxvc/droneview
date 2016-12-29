.class Lcom/easyview/ndt/NDTService$ThreadNDT$1;
.super Ljava/lang/Object;
.source "NDTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/NDTService$ThreadNDT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyview/ndt/NDTService$ThreadNDT;


# direct methods
.method constructor <init>(Lcom/easyview/ndt/NDTService$ThreadNDT;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/ndt/NDTService$ThreadNDT$1;->this$1:Lcom/easyview/ndt/NDTService$ThreadNDT;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 582
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT$1;->this$1:Lcom/easyview/ndt/NDTService$ThreadNDT;

    # getter for: Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I
    invoke-static {v0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->access$0(Lcom/easyview/ndt/NDTService$ThreadNDT;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 584
    const-string v0, "NDTService"

    const-string v1, "rev timeout h:%d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/easyview/ndt/NDTService$ThreadNDT$1;->this$1:Lcom/easyview/ndt/NDTService$ThreadNDT;

    # getter for: Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I
    invoke-static {v4}, Lcom/easyview/ndt/NDTService$ThreadNDT;->access$0(Lcom/easyview/ndt/NDTService$ThreadNDT;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/easyview/ndt/NDTService$ThreadNDT$1;->this$1:Lcom/easyview/ndt/NDTService$ThreadNDT;

    # getter for: Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;
    invoke-static {v4}, Lcom/easyview/ndt/NDTService$ThreadNDT;->access$1(Lcom/easyview/ndt/NDTService$ThreadNDT;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT$1;->this$1:Lcom/easyview/ndt/NDTService$ThreadNDT;

    # getter for: Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I
    invoke-static {v0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->access$0(Lcom/easyview/ndt/NDTService$ThreadNDT;)I

    move-result v0

    invoke-static {v0}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 586
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT$1;->this$1:Lcom/easyview/ndt/NDTService$ThreadNDT;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/easyview/ndt/NDTService$ThreadNDT;->access$2(Lcom/easyview/ndt/NDTService$ThreadNDT;I)V

    .line 588
    :cond_0
    return-void
.end method
