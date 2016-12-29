.class Lobject/p2pwificam/clientActivity/PlayActivity$15;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 3238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3242
    const-string v0, "PlayActivity"

    const-string v1, "auto hangup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->Stop()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 3244
    return-void
.end method
