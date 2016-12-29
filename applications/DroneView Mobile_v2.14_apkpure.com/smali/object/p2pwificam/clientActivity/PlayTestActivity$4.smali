.class Lobject/p2pwificam/clientActivity/PlayTestActivity$4;
.super Landroid/os/Handler;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 965
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 969
    const/16 v1, 0xa

    .line 970
    .local v1, "nframerate":I
    const/16 v0, 0x200

    .line 973
    .local v0, "nbitrate":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 994
    :goto_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v2, v3, v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 998
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1003
    return-void

    .line 976
    :pswitch_0
    const/16 v1, 0xa

    .line 977
    const/16 v0, 0x80

    .line 978
    goto :goto_0

    .line 981
    :pswitch_1
    const/16 v1, 0xf

    .line 982
    const/16 v0, 0x40

    .line 983
    goto :goto_0

    .line 986
    :pswitch_2
    const/4 v1, 0x5

    .line 987
    const/16 v0, 0x200

    .line 988
    goto :goto_0

    .line 973
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
