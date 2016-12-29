.class Lobject/p2pwificam/clientActivity/LightActivity$2;
.super Landroid/os/Handler;
.source "LightActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/LightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/LightActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/LightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/LightActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->_light_white:Landroid/widget/SeekBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LightActivity;->access$5(Lobject/p2pwificam/clientActivity/LightActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_white_value:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/LightActivity;->access$2(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->_light_yellow:Landroid/widget/SeekBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LightActivity;->access$6(Lobject/p2pwificam/clientActivity/LightActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_yellow_value:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/LightActivity;->access$3(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    :cond_0
    return-void
.end method
