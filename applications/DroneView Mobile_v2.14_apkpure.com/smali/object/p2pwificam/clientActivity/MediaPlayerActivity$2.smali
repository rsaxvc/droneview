.class Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->is_play:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$11(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 104
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->is_play:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$12(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V

    .line 105
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$11(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
