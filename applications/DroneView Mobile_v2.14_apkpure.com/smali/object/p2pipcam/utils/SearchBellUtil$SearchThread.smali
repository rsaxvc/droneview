.class Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;
.super Ljava/lang/Object;
.source "SearchBellUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/SearchBellUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/SearchBellUtil;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/utils/SearchBellUtil;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/utils/SearchBellUtil;Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;-><init>(Lobject/p2pipcam/utils/SearchBellUtil;)V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    # invokes: Lobject/p2pipcam/utils/SearchBellUtil;->search()Z
    invoke-static {v0}, Lobject/p2pipcam/utils/SearchBellUtil;->access$2(Lobject/p2pipcam/utils/SearchBellUtil;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    # invokes: Lobject/p2pipcam/utils/SearchBellUtil;->searchDeviceWifiAP()Z
    invoke-static {v0}, Lobject/p2pipcam/utils/SearchBellUtil;->access$3(Lobject/p2pipcam/utils/SearchBellUtil;)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;
    invoke-static {v0}, Lobject/p2pipcam/utils/SearchBellUtil;->access$0(Lobject/p2pipcam/utils/SearchBellUtil;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;

    invoke-direct {v1, p0}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;-><init>(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method
