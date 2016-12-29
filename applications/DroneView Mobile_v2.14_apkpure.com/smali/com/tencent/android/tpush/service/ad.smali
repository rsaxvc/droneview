.class Lcom/tencent/android/tpush/service/ad;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field a:Ljava/io/InputStream;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/android/tpush/service/XGWatchdog;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/tencent/android/tpush/service/ad;->c:Lcom/tencent/android/tpush/service/XGWatchdog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 592
    iput-object p2, p0, Lcom/tencent/android/tpush/service/ad;->a:Ljava/io/InputStream;

    .line 593
    iput-object p3, p0, Lcom/tencent/android/tpush/service/ad;->b:Ljava/lang/String;

    .line 594
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 598
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/ad;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 599
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 601
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v2, p0, Lcom/tencent/android/tpush/service/ad;->b:Ljava/lang/String;

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    const-string v2, "xguardian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime exe return err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 610
    :cond_0
    return-void

    .line 605
    :cond_1
    :try_start_1
    const-string v2, "xguardian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime exe return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
