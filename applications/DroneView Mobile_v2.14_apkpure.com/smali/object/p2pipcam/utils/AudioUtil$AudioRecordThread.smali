.class Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;
.super Ljava/lang/Object;
.source "AudioUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/AudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioRecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/AudioUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/AudioUtil;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 234
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$5(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 235
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_play_data:Lobject/p2pipcam/utils/TrackData;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$3(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/TrackData;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/utils/TrackData;->clear()V

    .line 236
    :cond_0
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$6(Lobject/p2pipcam/utils/AudioUtil;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 254
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$5(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 255
    :cond_1
    return-void

    .line 237
    :cond_2
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$5(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B
    invoke-static {v3}, Lobject/p2pipcam/utils/AudioUtil;->access$7(Lobject/p2pipcam/utils/AudioUtil;)[B

    move-result-object v3

    iget-object v4, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->sample_length:I
    invoke-static {v4}, Lobject/p2pipcam/utils/AudioUtil;->access$8(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v4

    invoke-virtual {v2, v3, v7, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 238
    .local v1, "nRet":I
    if-eqz v1, :cond_1

    .line 241
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$9(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "AudioUtil"

    const-string v3, "record write:%d %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_play_data:Lobject/p2pipcam/utils/TrackData;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$3(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/TrackData;

    move-result-object v6

    invoke-virtual {v6}, Lobject/p2pipcam/utils/TrackData;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_play_data:Lobject/p2pipcam/utils/TrackData;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$3(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/TrackData;

    move-result-object v2

    invoke-virtual {v2, v7}, Lobject/p2pipcam/utils/TrackData;->get(I)[B

    move-result-object v0

    .line 244
    .local v0, "data":[B
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_play_data:Lobject/p2pipcam/utils/TrackData;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$3(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/TrackData;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/utils/TrackData;->clear()V

    goto :goto_0
.end method
