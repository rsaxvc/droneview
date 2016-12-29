.class Lcom/easyview/push/XGPushUtils$1;
.super Ljava/lang/Object;
.source "XGPushUtils.java"

# interfaces
.implements Lcom/tencent/android/tpush/XGIOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyview/push/XGPushUtils;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/push/XGPushUtils$1;->val$context:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "errCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "TPush"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+++ register push fail. token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    const-string v2, ", errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    .prologue
    .line 21
    const-string v0, "TPush"

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+++ register push sucess. token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {p1}, Lcom/easyview/push/XGPushUtils;->access$0(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/easyview/push/XGPushUtils$1;->val$context:Landroid/content/Context;

    # getter for: Lcom/easyview/push/XGPushUtils;->_token:Ljava/lang/String;
    invoke-static {}, Lcom/easyview/push/XGPushUtils;->access$1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->setXGToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method
