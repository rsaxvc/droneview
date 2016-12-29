.class Lcom/starxnet/ipn/ipn_xinge$2;
.super Ljava/lang/Object;
.source "ipn_xinge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/starxnet/ipn/ipn_xinge;->Init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/starxnet/ipn/ipn_xinge;


# direct methods
.method constructor <init>(Lcom/starxnet/ipn/ipn_xinge;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/starxnet/ipn/ipn_xinge$2;->this$0:Lcom/starxnet/ipn/ipn_xinge;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge$2;->this$0:Lcom/starxnet/ipn/ipn_xinge;

    # invokes: Lcom/starxnet/ipn/ipn_xinge;->checkNetState()V
    invoke-static {v0}, Lcom/starxnet/ipn/ipn_xinge;->access$0(Lcom/starxnet/ipn/ipn_xinge;)V

    .line 44
    return-void
.end method
