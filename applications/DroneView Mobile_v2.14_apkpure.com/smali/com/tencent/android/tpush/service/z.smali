.class Lcom/tencent/android/tpush/service/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/android/tpush/service/ab;

.field final synthetic c:Lcom/tencent/android/tpush/service/XGWatchdog;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;Lcom/tencent/android/tpush/service/ab;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tencent/android/tpush/service/z;->c:Lcom/tencent/android/tpush/service/XGWatchdog;

    iput-object p2, p0, Lcom/tencent/android/tpush/service/z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/android/tpush/service/z;->b:Lcom/tencent/android/tpush/service/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/z;->c:Lcom/tencent/android/tpush/service/XGWatchdog;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/z;->a:Ljava/lang/String;

    # invokes: Lcom/tencent/android/tpush/service/XGWatchdog;->directSendContent(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/tencent/android/tpush/service/z;->b:Lcom/tencent/android/tpush/service/ab;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/tencent/android/tpush/service/z;->b:Lcom/tencent/android/tpush/service/ab;

    invoke-interface {v1, v0}, Lcom/tencent/android/tpush/service/ab;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method
