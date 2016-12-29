.class Lobject/p2pwificam/clientActivity/PlayActivity$12;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$12;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 2689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2692
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$12;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$63(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2694
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$12;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->StopAudio()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$64(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 2699
    :goto_0
    return-void

    .line 2697
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$12;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->StartAudio()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$65(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    goto :goto_0
.end method
