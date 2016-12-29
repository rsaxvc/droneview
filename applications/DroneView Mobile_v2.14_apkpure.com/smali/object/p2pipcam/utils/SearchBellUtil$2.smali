.class Lobject/p2pipcam/utils/SearchBellUtil$2;
.super Ljava/lang/Object;
.source "SearchBellUtil.java"

# interfaces
.implements Lcom/easyview/basecamera/ICameraSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/utils/SearchBellUtil;->search()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/SearchBellUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/SearchBellUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil$2;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSearch(Lcom/easyview/basecamera/CameraSearchInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/easyview/basecamera/CameraSearchInfo;

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$2;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    iget-object v1, p1, Lcom/easyview/basecamera/CameraSearchInfo;->ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/SearchBellUtil;->access$9(Lobject/p2pipcam/utils/SearchBellUtil;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$2;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    iget-object v1, p1, Lcom/easyview/basecamera/CameraSearchInfo;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/SearchBellUtil;->access$10(Lobject/p2pipcam/utils/SearchBellUtil;Ljava/lang/String;)V

    .line 75
    return-void
.end method
