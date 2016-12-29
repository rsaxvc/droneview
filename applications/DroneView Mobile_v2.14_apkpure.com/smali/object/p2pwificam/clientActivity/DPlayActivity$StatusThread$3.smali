.class Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    .line 2536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const v2, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    .line 2539
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$50(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2540
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2541
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2542
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$51(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/media/SoundPool;

    move-result-object v0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2543
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$52(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2544
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$96(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2545
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2546
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$137(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2547
    return-void
.end method
