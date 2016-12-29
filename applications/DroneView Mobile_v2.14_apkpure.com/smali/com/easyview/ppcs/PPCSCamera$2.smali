.class Lcom/easyview/ppcs/PPCSCamera$2;
.super Ljava/lang/Object;
.source "PPCSCamera.java"

# interfaces
.implements Lcom/easyview/evnet/EVNet$IProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyview/ppcs/PPCSCamera;->downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/easyview/ppcs/PPCSCamera;


# direct methods
.method constructor <init>(Lcom/easyview/ppcs/PPCSCamera;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera$2;->this$0:Lcom/easyview/ppcs/PPCSCamera;

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/ppcs/PPCSCamera$2;->count:I

    return-void
.end method


# virtual methods
.method public OnProgress(Ljava/lang/Object;II)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v6, 0x0

    .line 979
    move-object v0, p1

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 980
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    # getter for: Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;
    invoke-static {v0}, Lcom/easyview/ppcs/PPCSCamera;->access$0(Lcom/easyview/ppcs/PPCSCamera;)Lcom/easyview/basecamera/ICamera$IDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 982
    iget v1, p0, Lcom/easyview/ppcs/PPCSCamera$2;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera$2;->count:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 984
    const-string v1, "DownRecord"

    const-string v2, " %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iput v6, p0, Lcom/easyview/ppcs/PPCSCamera$2;->count:I

    .line 987
    :cond_0
    # getter for: Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;
    invoke-static {v0}, Lcom/easyview/ppcs/PPCSCamera;->access$0(Lcom/easyview/ppcs/PPCSCamera;)Lcom/easyview/basecamera/ICamera$IDownloadListener;

    move-result-object v1

    check-cast p1, Lcom/easyview/basecamera/ICamera;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v1, p1, p2, p3}, Lcom/easyview/basecamera/ICamera$IDownloadListener;->OnProgress(Lcom/easyview/basecamera/ICamera;II)V

    .line 989
    :cond_1
    return-void
.end method
