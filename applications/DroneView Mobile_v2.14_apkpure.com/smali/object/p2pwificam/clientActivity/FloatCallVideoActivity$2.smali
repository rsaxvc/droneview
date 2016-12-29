.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$2;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getCameraParams()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    .line 235
    return-void
.end method
