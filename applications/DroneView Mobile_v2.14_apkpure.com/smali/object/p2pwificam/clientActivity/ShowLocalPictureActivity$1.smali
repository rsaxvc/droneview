.class Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$1;
.super Landroid/os/Handler;
.source "ShowLocalPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;Z)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
