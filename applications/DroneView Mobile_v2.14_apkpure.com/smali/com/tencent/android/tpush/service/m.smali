.class public Lcom/tencent/android/tpush/service/m;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/net/LocalServerSocket;

.field private static volatile e:Z

.field private static volatile f:Z


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    sput-object v2, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/m;->b:Ljava/lang/String;

    .line 47
    sput-object v2, Lcom/tencent/android/tpush/service/m;->c:Landroid/net/LocalServerSocket;

    .line 52
    sput-boolean v1, Lcom/tencent/android/tpush/service/m;->e:Z

    .line 54
    sput-boolean v1, Lcom/tencent/android/tpush/service/m;->f:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/n;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/m;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/tencent/android/tpush/service/o;->a:Lcom/tencent/android/tpush/service/m;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 142
    const-string v0, "com.tencent.android.tpush.action.keepalive"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/android/tpush/service/m;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 143
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 146
    const-string v0, "com.tencent.android.tpush.action.keepalive"

    invoke-static {p0, v0, p1, p2}, Lcom/tencent/android/tpush/service/m;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 147
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    if-eqz p0, :cond_1

    .line 154
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 155
    :try_start_1
    const-class v0, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "delay_time"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 161
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    const-string v0, "PushServiceManager"

    const-string v2, "startService failed, libtpnsSecurity.so not found."

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :goto_1
    const-string v2, "PushServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService failed, intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    :try_start_3
    const-class v0, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 176
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 184
    :goto_2
    const-string v2, "PushServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "222 startService failed, intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_3
    :try_start_4
    const-string v0, "PushServiceManager"

    const-string v1, "startService failed, libtpnsSecurity.so not found."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 183
    :catch_2
    move-exception v0

    goto :goto_2

    .line 168
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/m;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/m;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 33
    sput-boolean p0, Lcom/tencent/android/tpush/service/m;->f:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 192
    const-string v0, "PushServiceManager"

    const-string v1, "Action -> stop Current Connect"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "com.tencent.android.tpush.action.stop_connect"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/android/tpush/service/m;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 194
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 246
    if-eqz p0, :cond_0

    .line 248
    sput-object p0, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/m;->b:Ljava/lang/String;

    .line 251
    :cond_0
    return-void
.end method

.method public static e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/tencent/android/tpush/service/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/tencent/android/tpush/service/m;->f:Z

    return v0
.end method

.method private i()Z
    .locals 7

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 282
    :cond_1
    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/c;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/d;

    move-result-object v2

    .line 284
    sget-object v0, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 286
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 290
    const-class v3, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 292
    iget-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 294
    sget-object v5, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/android/tpush/service/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/android/tpush/service/a/d;

    move-result-object v0

    .line 298
    if-eqz v1, :cond_2

    iget v5, v0, Lcom/tencent/android/tpush/service/a/d;->a:F

    iget v6, v1, Lcom/tencent/android/tpush/service/a/d;->a:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    :cond_2
    :goto_3
    move-object v1, v0

    .line 302
    goto :goto_2

    .line 304
    :cond_3
    if-eqz v1, :cond_0

    iget v0, v1, Lcom/tencent/android/tpush/service/a/d;->a:F

    iget v1, v2, Lcom/tencent/android/tpush/service/a/d;->a:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v1, "PushServiceManager"

    const-string v2, "isSurvive"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method private j()Z
    .locals 5

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/m;->i()Z

    move-result v0

    .line 323
    monitor-enter p0

    .line 324
    if-eqz v0, :cond_1

    .line 326
    :try_start_0
    sget-object v1, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    const-string v2, "com.tencent.android.tpush.socket.name"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-static {}, Lcom/tencent/android/tpush/service/d/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 330
    sget-object v2, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    const-string v3, "com.tencent.android.tpush.socket.name"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 333
    :cond_0
    sget-object v2, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/common/p;->g(Landroid/content/Context;)V

    .line 338
    new-instance v2, Landroid/net/LocalServerSocket;

    invoke-direct {v2, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/tencent/android/tpush/service/m;->c:Landroid/net/LocalServerSocket;

    .line 339
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/tencent/android/tpush/service/m;->e:Z

    .line 341
    sget-object v1, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 343
    sget-object v1, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/w;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/w;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 349
    return v0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    sget-boolean v0, Lcom/tencent/android/tpush/service/m;->e:Z

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/tencent/android/tpush/service/n;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/n;-><init>(Lcom/tencent/android/tpush/service/m;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    .line 413
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 81
    iget-object v2, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/m;->k()V

    .line 86
    :cond_0
    monitor-enter p0

    .line 87
    :try_start_0
    sget-boolean v2, Lcom/tencent/android/tpush/service/m;->e:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tencent/android/tpush/service/m;->c:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_4

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    const-string v3, "com.tencent.android.tpush.action.keepalive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    iget-object v2, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 94
    const-string v3, "delay_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 96
    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    :cond_1
    :goto_0
    monitor-exit p0

    .line 133
    :goto_1
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_3
    :try_start_1
    const-string v0, "com.tencent.android.tpush.action.stop_connect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v1, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 115
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 125
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x384

    int-to-long v0, v0

    .line 126
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 127
    const-wide/16 v0, 0x3e8

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 72
    sget-object v0, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    new-instance v1, Lcom/tencent/android/tpush/service/a/d;

    const v2, 0x401d70a4    # 2.46f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/android/tpush/service/a/d;-><init>(FI)V

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/c;->a(Landroid/content/Context;Lcom/tencent/android/tpush/service/a/d;)V

    .line 74
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    const-string v0, "PushServiceManager"

    const-string v1, "@@ serviceExit()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/tencent/android/tpush/common/p;->a()V

    .line 202
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iput-object v2, p0, Lcom/tencent/android/tpush/service/m;->d:Landroid/os/Handler;

    .line 207
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/a;->a()Lcom/tencent/android/tpush/service/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/service/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/a;->b(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/m;->d()V

    .line 219
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->q(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/m;->c:Landroid/net/LocalServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 229
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/service/m;->c:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    .line 230
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/m;->c:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/android/tpush/service/m;->e:Z

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "XGService"

    const-string v2, ">> Destroy local socket exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
