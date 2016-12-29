.class Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;
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
    name = "AudioTrackThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/AudioUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/AudioUtil;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 208
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->isTrack:Z
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$0(Lobject/p2pipcam/utils/AudioUtil;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const-string v2, "AudioUtil"

    const-string v3, "stop/release Audio"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 227
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 228
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lobject/p2pipcam/utils/AudioUtil;->access$4(Lobject/p2pipcam/utils/AudioUtil;Landroid/media/AudioTrack;)V

    .line 229
    :goto_1
    return-void

    .line 209
    :cond_0
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$1(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/utils/AudioBuffer;->get()[B

    move-result-object v0

    .line 210
    .local v0, "data":[B
    if-nez v0, :cond_1

    .line 212
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    goto :goto_1

    .line 220
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_play_data:Lobject/p2pipcam/utils/TrackData;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$3(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/TrackData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lobject/p2pipcam/utils/TrackData;->add([B)Z

    .line 223
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    invoke-static {v2}, Lobject/p2pipcam/utils/AudioUtil;->access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0
.end method
