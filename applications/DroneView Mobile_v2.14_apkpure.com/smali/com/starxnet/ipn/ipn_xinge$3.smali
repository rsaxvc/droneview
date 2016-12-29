.class Lcom/starxnet/ipn/ipn_xinge$3;
.super Ljava/lang/Object;
.source "ipn_xinge.java"

# interfaces
.implements Lcom/tencent/android/tpush/XGIOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/starxnet/ipn/ipn_xinge;->registerPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field final synthetic this$0:Lcom/starxnet/ipn/ipn_xinge;


# direct methods
.method constructor <init>(Lcom/starxnet/ipn/ipn_xinge;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/starxnet/ipn/ipn_xinge$3;->this$0:Lcom/starxnet/ipn/ipn_xinge;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "arg1"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge$3;->this$0:Lcom/starxnet/ipn/ipn_xinge;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/starxnet/ipn/ipn_xinge$3;->this$0:Lcom/starxnet/ipn/ipn_xinge;

    # getter for: Lcom/starxnet/ipn/ipn_xinge;->appName:Ljava/lang/String;
    invoke-static {v2}, Lcom/starxnet/ipn/ipn_xinge;->access$1(Lcom/starxnet/ipn/ipn_xinge;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/starxnet/ipn/ipn_xinge;->access$2(Lcom/starxnet/ipn/ipn_xinge;Ljava/lang/String;)V

    .line 56
    const-string v0, "IPN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ce8\u518c\u6210\u529f\uff0c\u8bbe\u5907token\u4e3a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/starxnet/ipn/ipn_xinge$3;->this$0:Lcom/starxnet/ipn/ipn_xinge;

    # getter for: Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/starxnet/ipn/ipn_xinge;->access$3(Lcom/starxnet/ipn/ipn_xinge;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u5907token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/starxnet/ipn/ipn_xinge$3;->this$0:Lcom/starxnet/ipn/ipn_xinge;

    # getter for: Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/starxnet/ipn/ipn_xinge;->access$3(Lcom/starxnet/ipn/ipn_xinge;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    return-void
.end method
