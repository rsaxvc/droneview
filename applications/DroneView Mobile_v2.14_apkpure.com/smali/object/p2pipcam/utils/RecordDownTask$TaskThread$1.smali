.class Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;
.super Ljava/lang/Object;
.source "RecordDownTask.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/RecordDownTask$TaskThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/RecordDownTask$TaskThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnProgress(Lcom/easyview/basecamera/ICamera;II)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iput p2, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    .line 220
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iput p3, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    .line 221
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    const/4 v1, 0x0

    iput v1, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->count:I

    .line 222
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->listener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget-object v0, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->listener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    iget-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;->this$1:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    iget-object v1, v1, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    invoke-interface {v0, v1}, Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;->OnProgress(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V

    .line 224
    :cond_0
    return-void
.end method
