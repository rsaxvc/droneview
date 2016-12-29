.class Lobject/p2pwificam/clientActivity/PlayActivity$32$1;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity$32;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/PlayActivity$32;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity$32;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$32$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$32;

    .line 2604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2607
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$32$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$32;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity$32;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$32;->access$0(Lobject/p2pwificam/clientActivity/PlayActivity$32;)Lobject/p2pwificam/clientActivity/PlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->btnMusicPlay:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$133(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2608
    return-void
.end method
