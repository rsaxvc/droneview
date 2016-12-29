.class Lobject/p2pwificam/clientActivity/DPlayActivity$7;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnData(Lcom/easyview/basecamera/ICamera;[BI)V
    .locals 8
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v7, 0x1

    .line 1263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1264
    .local v0, "now":J
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_ms:J
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$63(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 1266
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_ms:J
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$63(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v3

    sub-long v3, v0, v3

    long-to-int v2, v3

    .line 1267
    .local v2, "period":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$64(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$64(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$65(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1268
    :cond_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$41(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$64(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1270
    :cond_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$66(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1271
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$65(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1273
    :cond_2
    const/16 v3, 0xc8

    if-le v2, v3, :cond_4

    .line 1275
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$67(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1276
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$42(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$68(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1277
    const/16 v3, 0x1f4

    if-le v2, v3, :cond_3

    .line 1279
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$69(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1280
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_1:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$44(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$70(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1282
    :cond_3
    const/16 v3, 0x3e8

    if-le v2, v3, :cond_4

    .line 1284
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$71(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1285
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_2:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$72(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1289
    .end local v2    # "period":I
    :cond_4
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$73(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 1291
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v7}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$48(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1292
    const/4 v3, 0x4

    aget-byte v3, p2, v3

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 1294
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v7}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$74(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1296
    :cond_5
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$61(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1298
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->findKeyFrame:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$75(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1301
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_videoDataQueue:Lobject/p2pipcam/utils/VideoDataQueue;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$76(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pipcam/utils/VideoDataQueue;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lobject/p2pipcam/utils/VideoDataQueue;->add([BI)V

    .line 1308
    :cond_6
    return-void
.end method
