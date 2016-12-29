.class Lcom/baidu/android/pushservice/f$4;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/f;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/baidu/android/pushservice/f;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/f;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/f$4;->c:Lcom/baidu/android/pushservice/f;

    iput-object p2, p0, Lcom/baidu/android/pushservice/f$4;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/android/pushservice/f$4;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/f$4;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/android/pushservice/i/k;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/f$4;->c:Lcom/baidu/android/pushservice/f;

    invoke-static {v1}, Lcom/baidu/android/pushservice/f;->c(Lcom/baidu/android/pushservice/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->h:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/android/pushservice/f$4;->b:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->i:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/f$4;->a:Ljava/lang/String;

    const-string v2, "030303"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/android/pushservice/f$4;->c:Lcom/baidu/android/pushservice/f;

    invoke-static {v1}, Lcom/baidu/android/pushservice/f;->c(Lcom/baidu/android/pushservice/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/s;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->l:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/android/pushservice/f$4;->c:Lcom/baidu/android/pushservice/f;

    invoke-static {v1}, Lcom/baidu/android/pushservice/f;->c(Lcom/baidu/android/pushservice/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/u;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/baidu/android/pushservice/f$4;->a:Ljava/lang/String;

    const-string v2, "030301"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/android/pushservice/f$4;->c:Lcom/baidu/android/pushservice/f;

    invoke-static {v1}, Lcom/baidu/android/pushservice/f;->c(Lcom/baidu/android/pushservice/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/s;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "PushConnection"

    const-string v1, "insertAgent exception"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f$4;->c:Lcom/baidu/android/pushservice/f;

    invoke-static {v2}, Lcom/baidu/android/pushservice/f;->c(Lcom/baidu/android/pushservice/f;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1
.end method
