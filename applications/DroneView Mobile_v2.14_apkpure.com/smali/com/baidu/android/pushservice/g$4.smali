.class Lcom/baidu/android/pushservice/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/g;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/g$4;->a:Lcom/baidu/android/pushservice/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/baidu/android/pushservice/g;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/android/pushservice/g;->a:Lcom/baidu/android/pushservice/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/android/pushservice/g;->a:Lcom/baidu/android/pushservice/f;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f;->b()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
