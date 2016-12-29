.class Lobject/p2pwificam/clientActivity/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AboutActivity;->ClearAllFile()V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/AboutActivity$2;)Lobject/p2pwificam/clientActivity/AboutActivity;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    invoke-static {v1, v4}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$1(Lobject/p2pwificam/clientActivity/AboutActivity;I)V

    .line 175
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    invoke-static {v1, v4}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$2(Lobject/p2pwificam/clientActivity/AboutActivity;I)V

    .line 176
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->getSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lobject/p2pwificam/clientActivity/AboutActivity;->DeleteFolder(Ljava/lang/String;Z)Z

    .line 177
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    new-instance v2, Lobject/p2pwificam/clientActivity/AboutActivity$2$1;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/AboutActivity$2$1;-><init>(Lobject/p2pwificam/clientActivity/AboutActivity$2;)V

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/AboutActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->getSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lobject/p2pwificam/clientActivity/AboutActivity;->DeleteFolder(Ljava/lang/String;Z)Z

    .line 190
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    new-instance v2, Lobject/p2pwificam/clientActivity/AboutActivity$2$2;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/AboutActivity$2$2;-><init>(Lobject/p2pwificam/clientActivity/AboutActivity$2;)V

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/AboutActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
