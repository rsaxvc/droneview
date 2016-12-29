.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$3;
.super Landroid/os/Handler;
.source "FloatCallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$7(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V

    .line 244
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$8(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->streamType:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
