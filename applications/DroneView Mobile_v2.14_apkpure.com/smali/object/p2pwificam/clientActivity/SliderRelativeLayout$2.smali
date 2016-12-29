.class Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;
.super Landroid/os/Handler;
.source "SliderRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SliderRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 279
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$6()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage :  #### "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method
