.class Lcom/ndt/ppcs_api/PPCS_NDT$1;
.super Ljava/lang/Object;
.source "PPCS_NDT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ndt/ppcs_api/PPCS_NDT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 239
    # invokes: Lcom/ndt/ppcs_api/PPCS_NDT;->checkNetState()V
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$0()V

    .line 240
    return-void
.end method
