.class Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$1;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->hideNoSDShow()V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    .line 2466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2469
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2470
    return-void
.end method
