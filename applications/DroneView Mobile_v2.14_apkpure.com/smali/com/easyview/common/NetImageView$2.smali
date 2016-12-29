.class Lcom/easyview/common/NetImageView$2;
.super Ljava/lang/Object;
.source "NetImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyview/common/NetImageView;->setNetImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/common/NetImageView;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyview/common/NetImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/common/NetImageView$2;->this$0:Lcom/easyview/common/NetImageView;

    iput-object p2, p0, Lcom/easyview/common/NetImageView$2;->val$path:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/easyview/common/NetImageView$2;->this$0:Lcom/easyview/common/NetImageView;

    iget-object v0, v0, Lcom/easyview/common/NetImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/easyview/common/NetImageView$2;->this$0:Lcom/easyview/common/NetImageView;

    iget-object v1, v1, Lcom/easyview/common/NetImageView;->handler:Landroid/os/Handler;

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/easyview/common/NetImageView$2;->this$0:Lcom/easyview/common/NetImageView;

    iget-object v4, p0, Lcom/easyview/common/NetImageView$2;->val$path:Ljava/lang/String;

    # invokes: Lcom/easyview/common/NetImageView;->httpServer(Ljava/lang/String;)[B
    invoke-static {v3, v4}, Lcom/easyview/common/NetImageView;->access$1(Lcom/easyview/common/NetImageView;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    return-void
.end method
