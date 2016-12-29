.class Lobject/p2pwificam/clientActivity/PlayBackActivity$2;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICameraDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayBackActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayBackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackActivity;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnH264Data(Lcom/easyview/basecamera/ICamera;[BII)V
    .locals 0
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "videobuf"    # [B
    .param p3, "len"    # I
    .param p4, "type"    # I

    .prologue
    .line 270
    return-void
.end method

.method public OnVideoData(Lcom/easyview/basecamera/ICamera;[BIII)V
    .locals 7
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayBackActivity;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->callBackPlaybackVideoData([BIIIII)V

    .line 263
    return-void
.end method
