.class public Lcom/tencent/android/tpush/c/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const-string v0, "XGOtherPush"

    const-string v1, "updateToken Error: context is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/c/c;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
