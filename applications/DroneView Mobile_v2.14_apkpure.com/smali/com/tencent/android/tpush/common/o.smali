.class public Lcom/tencent/android/tpush/common/o;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static volatile a:Lcom/tencent/android/tpush/common/o;


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/o;->b:Z

    .line 12
    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/o;->c:Z

    .line 15
    invoke-static {}, Lcom/tencent/android/tpush/common/j;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/o;->b:Z

    .line 16
    invoke-static {}, Lcom/tencent/android/tpush/c/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/common/o;->c:Z

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/o;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/tencent/android/tpush/common/o;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/tencent/android/tpush/common/o;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/common/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/tencent/android/tpush/common/o;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/tencent/android/tpush/common/o;->c:Z

    return v0
.end method