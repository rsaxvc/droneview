.class Lobject/p2pwificam/clientActivity/CallVideoActivity$3;
.super Landroid/os/Handler;
.source "CallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 319
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V

    .line 325
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->streamType:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$7(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
