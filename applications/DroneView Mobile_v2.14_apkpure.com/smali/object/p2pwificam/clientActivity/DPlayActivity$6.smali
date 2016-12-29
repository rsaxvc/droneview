.class Lobject/p2pwificam/clientActivity/DPlayActivity$6;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IYUVDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnData(Lcom/easyview/basecamera/ICamera;[BIII)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "data"    # [B
    .param p3, "len"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1253
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, p2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$58(Lobject/p2pwificam/clientActivity/DPlayActivity;[B)V

    .line 1254
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, p4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$59(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1255
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, p5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$60(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1256
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$61(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1257
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$62(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1258
    return-void
.end method
