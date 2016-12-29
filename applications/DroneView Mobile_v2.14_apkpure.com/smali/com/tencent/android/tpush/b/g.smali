.class public Lcom/tencent/android/tpush/b/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Ljava/util/ArrayList;

.field private static volatile b:Lcom/tencent/android/tpush/b/g;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/b/g;->b:Lcom/tencent/android/tpush/b/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/g;->c:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/b/g;
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/android/tpush/b/g;->b:Lcom/tencent/android/tpush/b/g;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/tencent/android/tpush/b/g;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/b/g;->b:Lcom/tencent/android/tpush/b/g;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/tencent/android/tpush/b/g;

    invoke-direct {v0}, Lcom/tencent/android/tpush/b/g;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/b/g;->b:Lcom/tencent/android/tpush/b/g;

    .line 35
    sget-object v0, Lcom/tencent/android/tpush/b/g;->b:Lcom/tencent/android/tpush/b/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/android/tpush/b/g;->c:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/tencent/android/tpush/b/g;->b:Lcom/tencent/android/tpush/b/g;

    iget-object v0, v0, Lcom/tencent/android/tpush/b/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/m;->c(Landroid/content/Context;)V

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/b/g;->b:Lcom/tencent/android/tpush/b/g;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static declared-synchronized a(Ljava/lang/Long;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 59
    const-class v1, Lcom/tencent/android/tpush/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/android/tpush/b/g;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/tencent/android/tpush/b/g;->a:Ljava/util/ArrayList;

    .line 62
    :cond_0
    sget-object v2, Lcom/tencent/android/tpush/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :goto_0
    monitor-exit v1

    return v0

    .line 65
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/tencent/android/tpush/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_2

    .line 67
    sget-object v0, Lcom/tencent/android/tpush/b/g;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_2
    const-string v2, "PushMessageHandler"

    const-string v3, "addCachedmsgID"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/b/h;

    iget-object v2, p0, Lcom/tencent/android/tpush/b/g;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/tencent/android/tpush/b/h;-><init>(Lcom/tencent/android/tpush/b/g;Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method
