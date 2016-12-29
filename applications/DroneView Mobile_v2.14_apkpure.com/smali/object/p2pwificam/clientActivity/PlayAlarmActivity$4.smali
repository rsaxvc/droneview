.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$4;
.super Landroid/os/Handler;
.source "PlayAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 851
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 855
    const/16 v1, 0xa

    .line 856
    .local v1, "nframerate":I
    const/16 v0, 0x200

    .line 859
    .local v0, "nbitrate":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 880
    :goto_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v2, v3, v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 884
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 889
    return-void

    .line 862
    :pswitch_0
    const/16 v1, 0xa

    .line 863
    const/16 v0, 0x80

    .line 864
    goto :goto_0

    .line 867
    :pswitch_1
    const/16 v1, 0xf

    .line 868
    const/16 v0, 0x40

    .line 869
    goto :goto_0

    .line 872
    :pswitch_2
    const/4 v1, 0x5

    .line 873
    const/16 v0, 0x200

    .line 874
    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
