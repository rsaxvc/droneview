.class Lobject/p2pwificam/clientActivity/AboutActivity$3;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AboutActivity;->deleteDirectory(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AboutActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$3;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$3;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$3(Lobject/p2pwificam/clientActivity/AboutActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$3;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->delFileCount:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$6(Lobject/p2pwificam/clientActivity/AboutActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 248
    return-void
.end method
