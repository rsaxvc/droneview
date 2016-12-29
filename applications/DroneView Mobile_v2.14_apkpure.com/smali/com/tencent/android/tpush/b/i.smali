.class public Lcom/tencent/android/tpush/b/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Landroid/content/Context;

.field private h:Landroid/content/Intent;

.field private i:Lcom/tencent/android/tpush/b/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-wide v1, p0, Lcom/tencent/android/tpush/b/i;->a:J

    .line 103
    iput-wide v1, p0, Lcom/tencent/android/tpush/b/i;->b:J

    .line 104
    iput-wide v1, p0, Lcom/tencent/android/tpush/b/i;->c:J

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/b/i;->d:Ljava/lang/String;

    .line 106
    iput-wide v1, p0, Lcom/tencent/android/tpush/b/i;->e:J

    .line 107
    iput-wide v1, p0, Lcom/tencent/android/tpush/b/i;->f:J

    .line 109
    iput-object v3, p0, Lcom/tencent/android/tpush/b/i;->g:Landroid/content/Context;

    .line 110
    iput-object v3, p0, Lcom/tencent/android/tpush/b/i;->h:Landroid/content/Intent;

    .line 111
    iput-object v3, p0, Lcom/tencent/android/tpush/b/i;->i:Lcom/tencent/android/tpush/b/a;

    .line 27
    iput-object p1, p0, Lcom/tencent/android/tpush/b/i;->g:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/tencent/android/tpush/b/i;->h:Landroid/content/Intent;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/android/tpush/b/i;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 54
    new-instance v1, Lcom/tencent/android/tpush/b/i;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/b/i;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    iput-object v2, v1, Lcom/tencent/android/tpush/b/i;->d:Ljava/lang/String;

    .line 61
    const-string v0, "msgId"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/android/tpush/b/i;->a:J

    .line 62
    const-string v0, "accId"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/android/tpush/b/i;->b:J

    .line 64
    const-string v0, "busiMsgId"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/android/tpush/b/i;->c:J

    .line 66
    const-string v0, "timestamps"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/android/tpush/b/i;->e:J

    .line 68
    const-string v0, "type"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/android/tpush/b/i;->f:J

    .line 69
    const/4 v0, 0x0

    .line 70
    iget-wide v3, v1, Lcom/tencent/android/tpush/b/i;->f:J

    long-to-int v3, v3

    packed-switch v3, :pswitch_data_0

    .line 83
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error type for message, drop it, type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/android/tpush/b/i;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {p0, v1}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    iput-object v0, v1, Lcom/tencent/android/tpush/b/i;->i:Lcom/tencent/android/tpush/b/a;

    .line 90
    iget-object v0, v1, Lcom/tencent/android/tpush/b/i;->i:Lcom/tencent/android/tpush/b/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->b()V

    .line 92
    :cond_0
    return-object v1

    .line 72
    :pswitch_0
    new-instance v0, Lcom/tencent/android/tpush/b/j;

    invoke-direct {v0, v2}, Lcom/tencent/android/tpush/b/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_1
    new-instance v0, Lcom/tencent/android/tpush/b/d;

    invoke-direct {v0, v2}, Lcom/tencent/android/tpush/b/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p0, v1}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/android/tpush/b/i;->i:Lcom/tencent/android/tpush/b/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/b/i;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/android/tpush/b/b;->b(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/tencent/android/tpush/b/i;->a:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/tencent/android/tpush/b/i;->b:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/tencent/android/tpush/b/i;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/tencent/android/tpush/b/i;->e:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/android/tpush/b/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/tencent/android/tpush/b/a;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/android/tpush/b/i;->i:Lcom/tencent/android/tpush/b/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string v1, "PushMessageManager [msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/b/i;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accessId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/b/i;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", busiMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/b/i;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/b/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/b/i;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/b/i;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/b/i;->h:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageHolder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/b/i;->i:Lcom/tencent/android/tpush/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
