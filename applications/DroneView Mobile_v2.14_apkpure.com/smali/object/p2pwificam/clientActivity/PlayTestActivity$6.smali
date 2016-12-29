.class Lobject/p2pwificam/clientActivity/PlayTestActivity$6;
.super Landroid/os/Handler;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 1253
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1255
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1256
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1257
    const v1, 0x7f06003e

    const/4 v2, 0x0

    .line 1256
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1258
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1259
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->finish()V

    .line 1261
    :cond_0
    return-void
.end method
