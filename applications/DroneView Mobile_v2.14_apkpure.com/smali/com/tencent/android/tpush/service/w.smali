.class public Lcom/tencent/android/tpush/service/w;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/android/tpush/service/w;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private volatile f:Z

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/tencent/android/tpush/service/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/w;->c:Lcom/tencent/android/tpush/service/w;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/w;->d:Z

    .line 41
    iput-object v1, p0, Lcom/tencent/android/tpush/service/w;->e:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/w;->f:Z

    .line 198
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/w;->g:J

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/w;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/w;->d:Z

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/tencent/android/tpush/service/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/android/tpush/service/w;->e:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/w;J)J
    .locals 0

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/tencent/android/tpush/service/w;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/w;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/android/tpush/service/w;->c:Lcom/tencent/android/tpush/service/w;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lcom/tencent/android/tpush/service/w;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/w;->c:Lcom/tencent/android/tpush/service/w;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/tencent/android/tpush/service/w;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/w;->c:Lcom/tencent/android/tpush/service/w;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/service/w;->c:Lcom/tencent/android/tpush/service/w;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/w;->f:Z

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/w;->f:Z

    .line 134
    sget-object v0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is installed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "am startservice -n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 142
    sget-object v2, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exec cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",exitValud:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz v1, :cond_1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "am startservice --user 0 -n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 147
    sget-object v2, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exec cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",exitValud:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    const-string v1, "com.tencent.android.qqdownloader.SDKService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "from_where"

    const-string v2, "xg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 157
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/w;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/w;->f:Z

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    const-string v2, "monitorAppService error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 82
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 85
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 93
    :goto_0
    sget-object v1, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/w;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/w;->g:J

    return-wide v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 181
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 71
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 73
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/w;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/w;->d:Z

    return v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "md"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_0
    const-string v0, "osVer"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v0, "mf"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    new-instance v0, Lcom/tencent/android/tpush/stat/event/a;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    const-string v3, "PullYYB"

    const-string v4, "AVF34P44NJT5"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/tencent/android/tpush/stat/event/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/f;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/x;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/x;-><init>(Lcom/tencent/android/tpush/service/w;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/stat/f;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/e;)V

    .line 121
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/service/w;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/w;->f()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "com.tencent.android.qqdownloader"

    const-string v1, "com.tencent.assistant.sdk.SDKSupportService"

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/service/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method static synthetic e(Lcom/tencent/android/tpush/service/w;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/w;->e()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushManager;->startPushService(Landroid/content/Context;)V

    .line 174
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 175
    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/w;->c()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string v1, "xg_service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    const-string v1, "is xg_service"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 194
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    const-string v1, "not xg_service"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->e:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/y;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/y;-><init>(Lcom/tencent/android/tpush/service/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_0
    return-void
.end method
