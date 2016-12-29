.class Lcom/tencent/android/tpush/service/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/w;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/w;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/w;->a(Lcom/tencent/android/tpush/service/w;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/android/tpush/service/a/a;->z:I

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/w;->b(Lcom/tencent/android/tpush/service/w;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/w;->a(Lcom/tencent/android/tpush/service/w;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "last.monitor.ts"

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/service/w;->a(Lcom/tencent/android/tpush/service/w;J)J

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/w;->b(Lcom/tencent/android/tpush/service/w;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 215
    iget-object v4, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v4}, Lcom/tencent/android/tpush/service/w;->a(Lcom/tencent/android/tpush/service/w;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v4

    iget v4, v4, Lcom/tencent/android/tpush/service/a/a;->A:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/w;->c(Lcom/tencent/android/tpush/service/w;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/w;->d(Lcom/tencent/android/tpush/service/w;)V

    .line 223
    :goto_1
    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v2, v0, v1}, Lcom/tencent/android/tpush/service/w;->a(Lcom/tencent/android/tpush/service/w;J)J

    .line 224
    iget-object v0, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/w;->a(Lcom/tencent/android/tpush/service/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "last.monitor.ts"

    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/w;->b(Lcom/tencent/android/tpush/service/w;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-static {}, Lcom/tencent/android/tpush/service/w;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "monotor error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 221
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/tencent/android/tpush/service/y;->a:Lcom/tencent/android/tpush/service/w;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/w;->e(Lcom/tencent/android/tpush/service/w;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
