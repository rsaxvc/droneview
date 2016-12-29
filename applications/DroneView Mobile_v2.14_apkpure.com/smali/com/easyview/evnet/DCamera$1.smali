.class Lcom/easyview/evnet/DCamera$1;
.super Ljava/lang/Object;
.source "DCamera.java"

# interfaces
.implements Lcom/easyview/evnet/EVNet$IProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyview/evnet/DCamera;->downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/evnet/DCamera;


# direct methods
.method constructor <init>(Lcom/easyview/evnet/DCamera;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/evnet/DCamera$1;->this$0:Lcom/easyview/evnet/DCamera;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnProgress(Ljava/lang/Object;II)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 506
    move-object v0, p1

    check-cast v0, Lcom/easyview/evnet/DCamera;

    .line 507
    .local v0, "camera":Lcom/easyview/evnet/DCamera;
    # getter for: Lcom/easyview/evnet/DCamera;->downRecordListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;
    invoke-static {v0}, Lcom/easyview/evnet/DCamera;->access$0(Lcom/easyview/evnet/DCamera;)Lcom/easyview/basecamera/ICamera$IDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    const-string v1, "DownRecord"

    const-string v2, " %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    # getter for: Lcom/easyview/evnet/DCamera;->downRecordListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;
    invoke-static {v0}, Lcom/easyview/evnet/DCamera;->access$0(Lcom/easyview/evnet/DCamera;)Lcom/easyview/basecamera/ICamera$IDownloadListener;

    move-result-object v1

    check-cast p1, Lcom/easyview/basecamera/ICamera;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v1, p1, p2, p3}, Lcom/easyview/basecamera/ICamera$IDownloadListener;->OnProgress(Lcom/easyview/basecamera/ICamera;II)V

    .line 512
    :cond_0
    return-void
.end method
