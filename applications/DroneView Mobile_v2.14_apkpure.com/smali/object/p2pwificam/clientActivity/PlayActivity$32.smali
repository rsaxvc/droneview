.class Lobject/p2pwificam/clientActivity/PlayActivity$32;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$32;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 2598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayActivity$32;)Lobject/p2pwificam/clientActivity/PlayActivity;
    .locals 1

    .prologue
    .line 2598
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$32;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    return-object v0
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 2601
    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    .line 2603
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$32;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$132(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/Boolean;)V

    .line 2604
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$32;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayActivity$32$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$32$1;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity$32;)V

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2611
    :cond_0
    return-void
.end method
