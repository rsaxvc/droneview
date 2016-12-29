.class Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    .line 2512
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

    .line 2515
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$54(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 2517
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2518
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2519
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$50(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2522
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$49(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2524
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

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

    .line 2525
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$52(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2526
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2527
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$55(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2530
    :cond_2
    return-void
.end method
