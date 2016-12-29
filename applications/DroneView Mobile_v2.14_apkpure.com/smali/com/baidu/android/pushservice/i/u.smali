.class public Lcom/baidu/android/pushservice/i/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/baidu/android/pushservice/i/j;

.field private final c:Lcom/baidu/android/pushservice/i/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/u;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/android/pushservice/i/s;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/i/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/u;->c:Lcom/baidu/android/pushservice/i/s;

    invoke-static {p1}, Lcom/baidu/android/pushservice/i/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/j;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/j;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/b;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/d;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/h;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/h;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/o;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/o;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J
    .locals 3

    new-instance v0, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/android/pushservice/i/k;->g:J

    invoke-static {p0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->h:Ljava/lang/String;

    iput p2, v0, Lcom/baidu/android/pushservice/i/k;->i:I

    iput-object p3, v0, Lcom/baidu/android/pushservice/i/k;->l:Ljava/lang/String;

    iput-object p1, v0, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/i/u;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/i/u$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/i/u$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/u$1;->start()V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/u;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/i/j;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/u;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)J

    move-result-wide v3

    sub-long v3, v1, v3

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/u;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/u;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->h(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    :goto_1
    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x2932e00

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->c:Lcom/baidu/android/pushservice/i/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->c:Lcom/baidu/android/pushservice/i/s;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/s;->b()V

    :cond_0
    return-void
.end method

.method public a(ZLcom/baidu/android/pushservice/util/i;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/j;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/j;

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/j;

    invoke-virtual {v0, p2}, Lcom/baidu/android/pushservice/i/j;->a(Lcom/baidu/android/pushservice/util/i;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i/u;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/j;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/i/j;->b(Z)V

    :cond_2
    return-void
.end method
