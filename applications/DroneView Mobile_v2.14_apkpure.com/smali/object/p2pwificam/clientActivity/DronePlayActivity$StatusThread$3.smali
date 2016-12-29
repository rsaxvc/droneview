.class Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    .line 2191
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$58(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2192
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 2194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$48(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$82(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 2196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$52(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 2197
    return-void
.end method
