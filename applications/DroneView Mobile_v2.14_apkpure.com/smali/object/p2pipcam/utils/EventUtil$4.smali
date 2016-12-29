.class Lobject/p2pipcam/utils/EventUtil$4;
.super Ljava/lang/Object;
.source "EventUtil.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/EventUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/EventUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/EventUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/EventUtil$4;->this$0:Lobject/p2pipcam/utils/EventUtil;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 6
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    const/4 v5, 0x0

    .line 208
    const-string v0, "Event"

    const-string v1, "onEvent cmd: %d result:%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil$4;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # getter for: Lobject/p2pipcam/utils/EventUtil;->_downPictureCount:I
    invoke-static {v0}, Lobject/p2pipcam/utils/EventUtil;->access$5(Lobject/p2pipcam/utils/EventUtil;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/EventUtil;->access$6(Lobject/p2pipcam/utils/EventUtil;I)V

    .line 210
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil$4;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # getter for: Lobject/p2pipcam/utils/EventUtil;->_noPictureList:Ljava/util/List;
    invoke-static {v0}, Lobject/p2pipcam/utils/EventUtil;->access$7(Lobject/p2pipcam/utils/EventUtil;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil$4;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # getter for: Lobject/p2pipcam/utils/EventUtil;->_noPictureList:Ljava/util/List;
    invoke-static {v0}, Lobject/p2pipcam/utils/EventUtil;->access$7(Lobject/p2pipcam/utils/EventUtil;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil$4;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # invokes: Lobject/p2pipcam/utils/EventUtil;->queryEventPicture()V
    invoke-static {v0}, Lobject/p2pipcam/utils/EventUtil;->access$8(Lobject/p2pipcam/utils/EventUtil;)V

    .line 212
    return-void
.end method
