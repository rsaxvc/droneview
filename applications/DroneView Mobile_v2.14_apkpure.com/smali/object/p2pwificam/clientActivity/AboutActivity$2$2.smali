.class Lobject/p2pwificam/clientActivity/AboutActivity$2$2;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity$2;)Lobject/p2pwificam/clientActivity/AboutActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$3(Lobject/p2pwificam/clientActivity/AboutActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/AboutActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity$2;)Lobject/p2pwificam/clientActivity/AboutActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->clearButton:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$5(Lobject/p2pwificam/clientActivity/AboutActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    return-void
.end method
