.class Lobject/p2pwificam/clientActivity/AboutActivity$2$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AboutActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AboutActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity$2;)Lobject/p2pwificam/clientActivity/AboutActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$3(Lobject/p2pwificam/clientActivity/AboutActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AboutActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity$2;)Lobject/p2pwificam/clientActivity/AboutActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->totalFileCount:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$4(Lobject/p2pwificam/clientActivity/AboutActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity$2;)Lobject/p2pwificam/clientActivity/AboutActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$3(Lobject/p2pwificam/clientActivity/AboutActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    return-void
.end method
