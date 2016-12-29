.class Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;
.super Ljava/lang/Object;
.source "MediaViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->is_play:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$4(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->playButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$9(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 94
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->is_play:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$4(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$10(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Z)V

    .line 95
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->playButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$9(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
