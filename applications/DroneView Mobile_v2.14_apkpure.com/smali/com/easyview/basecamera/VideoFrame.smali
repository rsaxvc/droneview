.class public Lcom/easyview/basecamera/VideoFrame;
.super Ljava/lang/Object;
.source "VideoFrame.java"


# instance fields
.field public data:[B

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .param p1, "frameData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/easyview/basecamera/VideoFrame;->videoWidth:I

    .line 5
    iput v0, p0, Lcom/easyview/basecamera/VideoFrame;->videoHeight:I

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/basecamera/VideoFrame;->data:[B

    .line 8
    iput-object p1, p0, Lcom/easyview/basecamera/VideoFrame;->data:[B

    .line 9
    iput p2, p0, Lcom/easyview/basecamera/VideoFrame;->videoWidth:I

    .line 10
    iput p3, p0, Lcom/easyview/basecamera/VideoFrame;->videoHeight:I

    .line 11
    return-void
.end method
