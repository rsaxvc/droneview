.class public Lcom/tencent/android/tpush/service/u;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/service/u;

.field private static b:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/tencent/android/tpush/service/u;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/u;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/u;->a:Lcom/tencent/android/tpush/service/u;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/u;->b:Landroid/app/AlarmManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/u;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/android/tpush/service/u;->b:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/tencent/android/tpush/service/u;->b()V

    .line 27
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/u;->a:Lcom/tencent/android/tpush/service/u;

    return-object v0
.end method

.method private static declared-synchronized b()V
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/tencent/android/tpush/service/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/u;->b:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/tencent/android/tpush/service/u;->b:Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit v1

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(IJLandroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tencent/android/tpush/service/u;->b:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/tencent/android/tpush/service/u;->b:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 40
    :cond_0
    return-void
.end method
