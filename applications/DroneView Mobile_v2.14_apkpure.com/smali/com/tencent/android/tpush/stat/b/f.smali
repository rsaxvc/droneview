.class public Lcom/tencent/android/tpush/stat/b/f;
.super Lcom/tencent/android/tpush/stat/b/g;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/stat/b/g;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/c/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/f;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/c/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
