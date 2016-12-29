.class Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread$1;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;

    .line 3293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3296
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->access$0(Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;)Lobject/p2pwificam/clientActivity/PlayActivity;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->showCalloffButton(Z)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$123(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 3297
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->access$0(Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;)Lobject/p2pwificam/clientActivity/PlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$124(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3298
    return-void
.end method
