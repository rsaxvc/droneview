.class public Lcom/tencent/android/tpush/horse/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()J
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/android/tpush/service/a/a;->q:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 10
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v0

    .line 13
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->a()J

    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    add-long/2addr v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 17
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/android/tpush/service/a/a;->o:I

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/android/tpush/service/a/a;->p:I

    return v0
.end method
