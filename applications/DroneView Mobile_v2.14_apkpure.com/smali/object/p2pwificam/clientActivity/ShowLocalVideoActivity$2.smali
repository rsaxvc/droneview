.class Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$2;
.super Landroid/os/Handler;
.source "ShowLocalVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    .line 489
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 491
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 492
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 493
    const-string v1, "tag"

    const-string v2, "play this picture failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$8(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
