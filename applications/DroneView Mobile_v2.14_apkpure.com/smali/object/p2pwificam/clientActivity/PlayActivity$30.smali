.class Lobject/p2pwificam/clientActivity/PlayActivity$30;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lobject/p2pipcam/utils/AudioUtil$IRecordData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;->StartTalk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$30;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAudioData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 1683
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$30;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioRecordStart:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$128(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 1684
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$30;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easyview/basecamera/BaseCamera;->TalkAudioData([BI)V

    .line 1686
    :cond_0
    return-void
.end method
