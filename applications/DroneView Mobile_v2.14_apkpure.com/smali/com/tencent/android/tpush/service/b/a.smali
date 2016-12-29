.class public Lcom/tencent/android/tpush/service/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->INTENTSCHEMECHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static a:J

.field private static b:Lcom/tencent/android/tpush/service/b/a;

.field private static final c:[B

.field private static d:J

.field private static volatile e:Z

.field private static volatile f:Z

.field private static volatile g:Z


# instance fields
.field private h:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/tencent/android/tpush/service/b/a;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/b/a;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/b/a;->b:Lcom/tencent/android/tpush/service/b/a;

    .line 89
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/android/tpush/service/b/a;->c:[B

    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/service/b/a;->d:J

    .line 99
    sput-boolean v2, Lcom/tencent/android/tpush/service/b/a;->e:Z

    .line 101
    sput-boolean v2, Lcom/tencent/android/tpush/service/b/a;->f:Z

    .line 103
    sput-boolean v2, Lcom/tencent/android/tpush/service/b/a;->g:Z

    .line 1764
    const-wide/32 v0, 0x4ab50

    sput-wide v0, Lcom/tencent/android/tpush/service/b/a;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    .line 122
    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/b/a;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/tencent/android/tpush/service/b/a;->b:Lcom/tencent/android/tpush/service/b/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 134
    sget-boolean v3, Lcom/tencent/android/tpush/service/b/a;->e:Z

    if-eqz v3, :cond_0

    .line 135
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> msg ack is uploading , this time will give up! MessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 142
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/android/tpush/service/b/a;->e:Z

    .line 143
    sput-wide v0, Lcom/tencent/android/tpush/service/b/a;->d:J

    .line 149
    :goto_1
    const/4 v0, 0x5

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->a(ILjava/util/List;)V

    .line 150
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/b/b;

    invoke-direct {v1, p0, v2, p1}, Lcom/tencent/android/tpush/service/b/b;-><init>(Lcom/tencent/android/tpush/service/b/a;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/tencent/android/tpush/service/p;->a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/p;)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null report list with msgId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 1807
    :try_start_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 1808
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p4, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1810
    :cond_0
    invoke-static {p4}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 1811
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    const-string v1, ".tpns.msg.id.cached"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1821
    :goto_0
    return-void

    .line 1816
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    const-string v1, "MessageManager"

    const-string v2, "putSettings"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 1428
    const-string v0, "MessageManager"

    const-string v1, "dispatchMessageOnTime"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "multiPkg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1431
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "accId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    cmp-long v1, v1, v9

    if-nez v1, :cond_1

    .line 1434
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1440
    :goto_0
    const-string v0, "MessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMessageOnTime pkgs "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 1443
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1446
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1447
    const-string v0, "MessageManager"

    const-string v5, ">> msg.appPkgName is null!"

    invoke-static {v0, v5}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1437
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/b/j;->a()Lcom/tencent/android/tpush/service/b/j;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/android/tpush/service/b/j;->a(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1451
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v3, v4}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1453
    const-string v5, "MessageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchMessageOnTime appPkgName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not installed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/android/tpush/service/p;->a(Ljava/lang/String;)V

    .line 1457
    invoke-static {}, Lcom/tencent/android/tpush/service/b/j;->a()Lcom/tencent/android/tpush/service/b/j;

    move-result-object v5

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/tencent/android/tpush/service/b/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1459
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5, v0, v6}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    const-string v5, "MessageManager"

    const-string v6, "dispatchMessageOnTime"

    invoke-static {v5, v6, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1464
    :cond_3
    :try_start_2
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/a;

    move-result-object v5

    .line 1466
    if-eqz v5, :cond_0

    .line 1469
    iget v6, v5, Lcom/tencent/android/tpush/data/a;->e:I

    if-lez v6, :cond_4

    .line 1471
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5, v0, v6}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1476
    :cond_4
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {p0, v6, v0, v7, v8}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1481
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, v5, Lcom/tencent/android/tpush/data/a;->a:J

    invoke-static {v6, v7, v8}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1484
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1488
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {p0, v5, v0, v6, v7}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1490
    const-string v0, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> msgId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been acked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1494
    :cond_5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    iput-object v0, p3, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 1496
    iget-wide v5, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    .line 1497
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 1499
    :cond_6
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, p2, p1}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1501
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/b/a;->c()V

    .line 1503
    iget-object v5, p3, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    invoke-virtual {p0, v5, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1508
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/b/a;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/b/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/b/a;Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/b/a;Landroid/content/Context;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 11

    .prologue
    .line 1553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1554
    new-instance v4, Lcom/tencent/android/tpush/data/MessageId;

    invoke-direct {v4}, Lcom/tencent/android/tpush/data/MessageId;-><init>()V

    .line 1555
    iget-wide v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    iput-wide v0, v4, Lcom/tencent/android/tpush/data/MessageId;->id:J

    .line 1556
    const/4 v0, 0x0

    iput-short v0, v4, Lcom/tencent/android/tpush/data/MessageId;->isAck:S

    .line 1557
    iget-wide v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    iput-wide v0, v4, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    .line 1558
    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/tencent/android/tpush/data/MessageId;->host:J

    .line 1559
    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->e()I

    move-result v0

    iput v0, v4, Lcom/tencent/android/tpush/data/MessageId;->port:I

    .line 1560
    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/p;->a(Z)B

    move-result v0

    iput-byte v0, v4, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    .line 1561
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->f(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, v4, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    .line 1562
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->g(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, v4, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    .line 1563
    iput-wide p2, v4, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    .line 1564
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    .line 1565
    iput-wide v2, v4, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    .line 1566
    iget-object v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 1567
    iget-wide v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    iput-wide v0, v4, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    .line 1568
    iget-wide v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    iput-wide v0, v4, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    .line 1569
    iget-wide v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    iput-wide v0, v4, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    .line 1570
    iget-wide v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    iput-wide v0, v4, Lcom/tencent/android/tpush/data/MessageId;->multiPkg:J

    .line 1571
    iget-object v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    .line 1573
    const-wide/32 v0, 0xf731400

    .line 1575
    iget v5, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    if-lez v5, :cond_1

    .line 1576
    iget v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 1581
    :cond_0
    :goto_0
    iget-wide v5, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    iget-wide v5, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1582
    iget-wide v5, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 1588
    :goto_1
    const-string v5, "confirmMs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> msg distribute @msgId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @accId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @timeUs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @recTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @msg.date="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @msg.busiMsgId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @msg.timestamp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @msg.type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @msg.multiPkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @msg.serverTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @msg.ttl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @expire_time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @currentTimeMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1613
    iget-object v6, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    const-string v6, "msgId"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1615
    const-string v6, "title"

    iget-object v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    const-string v6, "content"

    iget-object v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->content:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    const-string v6, "date"

    iget-object v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    const-string v6, "type"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1619
    const-string v6, "accId"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1620
    const-string v6, "busiMsgId"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1621
    const-string v6, "timestamps"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1622
    const-string v6, "multiPkg"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1623
    const-string v6, "server_time"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1624
    const-string v6, "time_gap"

    iget-wide v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    sub-long/2addr v2, v7

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1625
    const-string v2, "ttl"

    iget v3, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1626
    const-string v2, "expire_time"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1629
    const-string v0, "svrAck"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1631
    const-string v0, "svrPkgName"

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    :try_start_0
    const-string v0, "enKeySet"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "content"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    :goto_2
    iget-object v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v4}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 1643
    return-void

    .line 1577
    :cond_1
    iget-wide v5, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget v5, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    if-nez v5, :cond_0

    .line 1578
    const-wide/16 v0, 0x7530

    goto/16 :goto_0

    .line 1585
    :cond_2
    add-long/2addr v0, v2

    goto/16 :goto_1

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    const-string v1, "MessageManager"

    const-string v2, "distribute2SDK"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 66
    sput-boolean p0, Lcom/tencent/android/tpush/service/b/a;->e:Z

    return p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1826
    :try_start_0
    const-string v0, ".tpns.msg.id.cached"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1832
    :goto_0
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1833
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1837
    :goto_1
    return-object v0

    .line 1830
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1834
    :catch_0
    move-exception v0

    .line 1835
    const-string v1, "MessageManager"

    const-string v2, "getSettings"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1837
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 1771
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->b(Z)I

    move-result v0

    .line 1772
    if-lez v0, :cond_0

    .line 1773
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/b/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    :cond_0
    monitor-exit p0

    return-void

    .line 1771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 5

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)Ljava/util/ArrayList;

    move-result-object v0

    .line 289
    sget-boolean v1, Lcom/tencent/android/tpush/service/b/a;->f:Z

    if-eqz v1, :cond_1

    .line 290
    const-string v1, "MessageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServiceAck ack is uploading , this time will give up!  msgId =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_1
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    iget-wide v3, p2, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 299
    :cond_2
    const-string v0, "MessageManager"

    const-string v1, "requestServiceAck with null list , give up this time"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 302
    :cond_3
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/tencent/android/tpush/service/b/a;->f:Z

    .line 303
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/b/c;

    invoke-direct {v2, p0, p2, p1}, Lcom/tencent/android/tpush/service/b/c;-><init>(Lcom/tencent/android/tpush/service/b/a;Lcom/tencent/android/tpush/data/MessageId;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/p;->a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/p;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 66
    sput-boolean p0, Lcom/tencent/android/tpush/service/b/a;->f:Z

    return p0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1781
    iget-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 1782
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/b/f;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/b/f;-><init>(Lcom/tencent/android/tpush/service/b/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.service.channel.cacheMsgBeatIntent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1793
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.service.channel.cacheMsgBeatIntent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    .line 1799
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/u;->a()Lcom/tencent/android/tpush/service/u;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/tencent/android/tpush/service/b/a;->a:J

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/tencent/android/tpush/service/u;->a(IJLandroid/app/PendingIntent;)V

    .line 1802
    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .prologue
    .line 66
    sput-boolean p0, Lcom/tencent/android/tpush/service/b/a;->g:Z

    return p0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 554
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    const-string v0, ".tpns.msg.id.service"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_1

    .line 559
    check-cast v0, Ljava/util/ArrayList;

    .line 563
    :goto_0
    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 769
    const/4 v1, 0x0

    .line 770
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 772
    const-string v0, ".tpns.msg.id.clicked"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_1

    .line 775
    check-cast v0, Ljava/util/ArrayList;

    .line 778
    :goto_0
    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 874
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 876
    const/4 v0, 0x0

    .line 877
    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 879
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 881
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 882
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 883
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 884
    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/MessageId;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 885
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 886
    :cond_1
    :try_start_1
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 887
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 893
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 618
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 621
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;-><init>()V

    .line 622
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->accessId:J

    .line 623
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    .line 624
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->broadcastId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->broadcastId:J

    .line 625
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->timestamp:J

    .line 626
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->type:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->type:J

    .line 627
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->clickTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->clickTime:J

    .line 628
    iget v0, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->action:I

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->action:J

    .line 635
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_0

    .line 641
    :goto_0
    return-object v1

    :cond_1
    move-object v0, v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 472
    sget-object v3, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v3

    .line 473
    const/4 v0, 0x0

    .line 474
    if-eqz p1, :cond_6

    .line 476
    const/4 v1, 0x0

    .line 477
    :try_start_0
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 478
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 483
    if-eqz p2, :cond_1

    iget-object v6, p2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    :cond_1
    const/4 v1, 0x1

    .line 486
    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v2

    .line 491
    :cond_4
    if-nez v1, :cond_5

    .line 493
    :try_start_1
    iget-object v1, p2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/tencent/android/tpush/service/b/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 497
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 498
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 499
    invoke-virtual {v0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 500
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    :cond_5
    :goto_1
    :try_start_2
    const-string v1, "all"

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 511
    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 502
    :cond_7
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 505
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 907
    const/4 v1, 0x0

    .line 908
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    const-string v0, ".tpns.msg.id"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_1

    .line 913
    check-cast v0, Ljava/util/ArrayList;

    .line 916
    :goto_0
    if-nez v0, :cond_0

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 919
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 435
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;-><init>()V

    .line 436
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 437
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 438
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->apn:B

    .line 439
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->isp:B

    .line 440
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->host:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locip:J

    .line 441
    iget v4, v0, Lcom/tencent/android/tpush/data/MessageId;->port:I

    iput v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locport:I

    .line 442
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->pack:B

    .line 443
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    .line 444
    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-static {p1, v4, v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getQua(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->qua:Ljava/lang/String;

    .line 445
    iget-object v4, v0, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->serviceHost:Ljava/lang/String;

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    .line 447
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 448
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 449
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 450
    const/4 v4, 0x1

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->ackType:B

    .line 451
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->receiveTime:J

    .line 452
    sget-boolean v4, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v4, :cond_1

    .line 453
    const-string v4, "MessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ack to server : @msgId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @accId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @timeUs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @confirmMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @recTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @msgType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " @broadcastId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_0

    .line 467
    :goto_0
    return-object v1

    :cond_2
    move-object v0, v1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 220
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 221
    :try_start_0
    const-string v0, "msgId"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 222
    const-string v0, "packName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    const/4 v0, 0x4

    invoke-static {v0, v3, v4}, Lcom/tencent/android/tpush/a/a;->a(IJ)V

    .line 225
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 226
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;JS)V

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 5

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    new-instance v2, Lcom/tencent/android/tpush/data/MessageId;

    invoke-direct {v2}, Lcom/tencent/android/tpush/data/MessageId;-><init>()V

    .line 266
    iget-wide v3, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    iput-wide v3, v2, Lcom/tencent/android/tpush/data/MessageId;->id:J

    .line 267
    iget-wide v3, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    iput-wide v3, v2, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    .line 268
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/d/f;->b(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/android/tpush/data/MessageId;->host:J

    .line 269
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->e()I

    move-result v3

    iput v3, v2, Lcom/tencent/android/tpush/data/MessageId;->port:I

    .line 270
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/p;->a(Z)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    .line 271
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/d/f;->f(Landroid/content/Context;)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    .line 272
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/d/f;->g(Landroid/content/Context;)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    .line 273
    iput-wide p3, v2, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    .line 274
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    .line 275
    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    .line 276
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 277
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    .line 278
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    .line 279
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    .line 280
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->multiPkg:J

    .line 281
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    .line 282
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 283
    invoke-direct {p0, p1, v2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 284
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 1193
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 1194
    if-eqz p1, :cond_3

    .line 1196
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1199
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1202
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1203
    iget-object v5, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1204
    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 1206
    const-string v6, "busiMsgId"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, p3, v5

    if-nez v5, :cond_0

    .line 1208
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1211
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1213
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1215
    :cond_3
    monitor-exit v2

    .line 1216
    return-void

    .line 1215
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JS)V
    .locals 7

    .prologue
    .line 950
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 951
    const/4 v1, 0x0

    .line 952
    if-eqz p1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v0, p3, v3

    if-lez v0, :cond_1

    .line 954
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 956
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 957
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 958
    iget-wide v5, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v5, v5, p3

    if-nez v5, :cond_4

    .line 959
    iput-short p5, v0, Lcom/tencent/android/tpush/data/MessageId;->isAck:S

    .line 960
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 962
    goto :goto_0

    .line 963
    :cond_0
    if-eqz v1, :cond_2

    .line 964
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 976
    :cond_1
    :goto_2
    monitor-exit v2

    .line 977
    return-void

    .line 966
    :cond_2
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMsgIdFlag Failed with no equal MessageId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pkgName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const/16 v0, 0xb

    invoke-static {v0, p3, p4}, Lcom/tencent/android/tpush/a/a;->a(IJ)V

    goto :goto_2

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 972
    :cond_3
    const/16 v0, 0xc

    :try_start_1
    invoke-static {v0, p3, p4}, Lcom/tencent/android/tpush/a/a;->a(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1131
    sget-object v3, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v3

    .line 1132
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 1135
    new-instance v4, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    invoke-direct {v4}, Lcom/tencent/android/tpush/data/CachedMessageIntent;-><init>()V

    .line 1136
    iput-object p2, v4, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    .line 1137
    const-string v1, "msgId"

    const-wide/16 v5, -0x1

    invoke-virtual {p3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v4, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    .line 1139
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    .line 1141
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1143
    if-nez v1, :cond_2

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1158
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 1159
    const-string v2, "MessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too much cache msg, try to cut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/android/tpush/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1163
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1166
    :cond_1
    monitor-exit v3

    .line 1167
    return-void

    .line 1146
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 1147
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1149
    invoke-virtual {v0, v4}, Lcom/tencent/android/tpush/data/CachedMessageIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1151
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1154
    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto :goto_0

    .line 1166
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 9

    .prologue
    .line 518
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 519
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 522
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 524
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 526
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 527
    iget-wide v5, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v7, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 529
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 533
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 536
    :cond_2
    monitor-exit v2

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/PushClickEntity;)V
    .locals 9

    .prologue
    .line 787
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 788
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 791
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 793
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 794
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 795
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 796
    iget-wide v5, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iget-wide v7, p3, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 798
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 801
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 802
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 805
    :cond_2
    monitor-exit v2

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1652
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1653
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1655
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1674
    :catch_0
    move-exception v0

    .line 1675
    const-string v1, "MessageManager"

    const-string v2, "onCrtlMsgHandle"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1658
    :pswitch_1
    :try_start_1
    const-string v1, "pushIdList"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1660
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1661
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1667
    :pswitch_2
    const-string v1, "enabled"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1668
    const-string v1, "MessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLogToFile with cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 541
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 542
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 544
    :try_start_0
    const-string v0, ".tpns.msg.id.service"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 547
    :cond_0
    monitor-exit v1

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 382
    sget-object v6, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v6

    .line 383
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    .line 386
    :try_start_1
    const-string v0, "all"

    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 389
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 391
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 392
    iget-object v1, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 394
    if-nez v1, :cond_6

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    iget-object v2, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 398
    :goto_1
    const/4 v4, 0x1

    move v5, v3

    .line 399
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_5

    .line 400
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 401
    iget-wide v9, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v11, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    cmp-long v1, v9, v11

    if-nez v1, :cond_2

    .line 402
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v3

    .line 408
    :goto_3
    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    :try_start_2
    const-string v1, "MessageManager"

    const-string v2, "+++ clear msg id exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    :cond_1
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    return-void

    .line 399
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 413
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 425
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 422
    :cond_4
    :try_start_5
    const-string v0, "MessageManager"

    const-string v1, "deleteServiceMsgIdBatch with null context or null list"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_5
    move v1, v4

    goto :goto_3

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    .line 1248
    sget-object v4, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v4

    .line 1249
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    .line 1252
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1255
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1256
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1257
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1259
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/data/CachedMessageIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1260
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    iget-object v2, v1, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1263
    if-nez v2, :cond_1

    .line 1264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    :cond_1
    iget-object v1, v1, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    :try_start_2
    const-string v1, "MessageManager"

    const-string v2, "deleteCachedMsgIntent"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1290
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1291
    return-void

    .line 1256
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1270
    :cond_4
    :try_start_3
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1272
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1273
    iget-object v1, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1275
    if-nez v1, :cond_5

    .line 1276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    iget-object v0, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1290
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1281
    :cond_6
    :try_start_5
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1282
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1841
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/b/g;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/service/b/g;-><init>(Lcom/tencent/android/tpush/service/b/a;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 1893
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;)V
    .locals 5

    .prologue
    .line 1681
    iget-object v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    .line 1682
    iget-wide v1, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1683
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/a;

    move-result-object v1

    .line 1685
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/android/tpush/data/a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1687
    iget-object v0, v1, Lcom/tencent/android/tpush/data/a;->d:Ljava/lang/String;

    .line 1690
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->content:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1513
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1514
    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-nez v1, :cond_5

    .line 1517
    :cond_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1518
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".PUSH_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1521
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_4

    .line 1522
    :cond_1
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_2

    .line 1523
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> send message intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :cond_2
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1549
    :cond_3
    :goto_0
    return-void

    .line 1528
    :cond_4
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> send rpc message intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-virtual {p0, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1536
    :cond_5
    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_3

    .line 1538
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".PUSH_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1541
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 1543
    :cond_6
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1546
    :cond_7
    invoke-virtual {p0, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 1647
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/service/b/a;->b(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 1648
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 729
    const/4 v0, 0x0

    .line 730
    if-eqz p1, :cond_2

    .line 732
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 733
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 735
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 736
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 739
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 744
    :cond_2
    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 830
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 831
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 832
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;-><init>()V

    .line 833
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 834
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 835
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->apn:B

    .line 836
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->isp:B

    .line 837
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->host:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locip:J

    .line 838
    iget v4, v0, Lcom/tencent/android/tpush/data/MessageId;->port:I

    iput v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locport:I

    .line 839
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->pack:B

    .line 840
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    .line 841
    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-static {p1, v4, v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getQua(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->qua:Ljava/lang/String;

    .line 842
    iget-object v4, v0, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->serviceHost:Ljava/lang/String;

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    .line 844
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 845
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 846
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 847
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->receiveTime:J

    .line 856
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_0

    .line 862
    :goto_0
    return-object v1

    :cond_1
    move-object v0, v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    .prologue
    .line 234
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 236
    const-string v2, "packName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 238
    const-string v2, "msgId"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 239
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-gtz v2, :cond_1

    .line 240
    const-string v2, "XGService"

    const-string v3, "@@ msgClick: Not add LocalMsg"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string v2, "accId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 244
    const-string v2, "busiMsgId"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 246
    const-string v2, "timestamps"

    const-wide/16 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 248
    const-string v2, "clickTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 250
    const-string v2, "action"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 252
    new-instance v2, Lcom/tencent/android/tpush/data/PushClickEntity;

    const-wide/16 v12, 0x1

    invoke-direct/range {v2 .. v16}, Lcom/tencent/android/tpush/data/PushClickEntity;-><init>(JJJJLjava/lang/String;JJI)V

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/PushClickEntity;)V

    .line 257
    invoke-virtual/range {p0 .. p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1016
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1017
    :try_start_0
    const-string v0, "XGService"

    const-string v1, "clearLocalMsg context==null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1020
    :cond_1
    :try_start_1
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ clearLocalMsg(current pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remote pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1025
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1026
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1028
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :try_start_2
    iget-object v4, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-static {v4}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1027
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1033
    :cond_3
    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 1035
    const-string v5, "msgId"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    .line 1037
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    :try_start_3
    const-string v4, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1043
    :cond_4
    :try_start_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1044
    invoke-virtual {p0, p1, p2, v2}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 1220
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 1221
    if-eqz p1, :cond_4

    .line 1223
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1226
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1229
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1230
    iget-wide v5, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    cmp-long v5, v5, p3

    if-nez v5, :cond_0

    .line 1232
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1235
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1236
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCachedMsgIntentByPkgName do not have MessageId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1240
    :cond_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1242
    :cond_4
    monitor-exit v2

    .line 1243
    return-void

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .locals 8

    .prologue
    .line 1355
    sget-object v3, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v3

    .line 1356
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 1359
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1361
    if-nez v1, :cond_1

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    :goto_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1375
    :cond_0
    monitor-exit v3

    .line 1376
    return-void

    .line 1364
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1365
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 1366
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 1367
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    .line 1368
    goto :goto_0

    .line 1364
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1375
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 810
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 811
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 813
    :try_start_0
    const-string v0, ".tpns.msg.id.clicked"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 816
    :cond_0
    monitor-exit v1

    .line 817
    return-void

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 572
    sget-object v6, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v6

    .line 573
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 576
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 578
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 580
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 581
    iget-object v1, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 583
    if-nez v1, :cond_5

    .line 584
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 585
    iget-object v2, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 587
    :goto_1
    const/4 v4, 0x1

    move v5, v3

    .line 588
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 589
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;

    .line 590
    iget-wide v9, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iget-wide v11, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    cmp-long v1, v9, v11

    if-nez v1, :cond_2

    .line 591
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v3

    .line 596
    :goto_3
    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v0, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    :try_start_2
    const-string v1, "MessageManager"

    const-string v2, "+++ clear msg id exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    return-void

    .line 588
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 601
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 602
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 610
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method public b(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 1702
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1704
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/tencent/android/tpush/a/a;->b(ILjava/util/List;)V

    .line 1705
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;

    .line 1709
    const-string v0, "MessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distributeFromServer : accid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",busiId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",msgId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",ts="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",multi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",date="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",serverTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",ttl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 1724
    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    const-string v0, "MessageManager"

    const-string v1, ">> messageDistribute, msg.appPkgName is null!"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1732
    :cond_0
    iget-wide v0, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    const-wide/16 v3, 0x3

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 1733
    invoke-virtual {p0, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;)V

    .line 1739
    :cond_1
    iget-wide v0, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_2

    .line 1740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 1741
    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    sub-long v3, v0, v3

    .line 1742
    sub-long/2addr v0, v3

    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    sub-long/2addr v0, v3

    .line 1745
    iget-wide v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    cmp-long v3, v3, v7

    if-ltz v3, :cond_2

    iget v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    if-lez v3, :cond_2

    iget v3, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    int-to-long v3, v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_2

    .line 1747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageDistribute check server time failed, msg discarded cause msg is timeout, msg.ttl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<reviseMaxTimeoutSec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1752
    const-string v1, "MessageManager"

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1756
    :cond_2
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/tencent/android/tpush/service/b/a;->a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V

    goto/16 :goto_0

    .line 1760
    :cond_3
    invoke-static {p1}, Lcom/tencent/android/tpush/service/c/a;->a(Ljava/util/ArrayList;)V

    .line 1761
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    if-eqz p1, :cond_2

    .line 751
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 752
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 758
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 763
    :cond_2
    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1110
    const/4 v1, 0x0

    .line 1111
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1113
    const-string v0, ".tpns.msg.id.cached"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_1

    .line 1116
    check-cast v0, Ljava/util/ArrayList;

    .line 1119
    :goto_0
    if-nez v0, :cond_0

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :cond_0
    :goto_1
    return-object v0

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 653
    sget-boolean v0, Lcom/tencent/android/tpush/service/b/a;->g:Z

    if-eqz v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 658
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/android/tpush/service/b/a;->g:Z

    .line 663
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/b/d;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/tencent/android/tpush/service/b/d;-><init>(Lcom/tencent/android/tpush/service/b/a;Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/p;->b(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/p;)V

    goto :goto_0

    .line 660
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/android/tpush/service/b/a;->g:Z

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 932
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 933
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 935
    :try_start_0
    const-string v0, ".tpns.msg.id"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 937
    :cond_0
    monitor-exit v1

    .line 938
    return-void

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroid/content/Context;Ljava/util/List;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 1303
    sget-object v6, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v6

    .line 1304
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 1308
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1309
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1310
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 1313
    iget-object v1, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1315
    if-nez v1, :cond_5

    .line 1316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    iget-object v2, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1319
    :goto_1
    const/4 v4, 0x1

    move v5, v3

    .line 1320
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 1321
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 1322
    iget-wide v9, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v11, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    cmp-long v1, v9, v11

    if-nez v1, :cond_2

    move v1, v3

    .line 1329
    :goto_3
    if-eqz v1, :cond_0

    .line 1330
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v0, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    :try_start_2
    const-string v1, "MessageManager"

    const-string v2, "deleteMsgIdBatch"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1344
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1345
    return-void

    .line 1320
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 1334
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1335
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1344
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 1387
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 1389
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 1392
    iget-wide v2, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 1393
    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/MessageId;->a()Z

    move-result v0

    .line 1398
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 1086
    const/4 v0, 0x0

    .line 1087
    if-eqz p1, :cond_2

    .line 1089
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1090
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1092
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1095
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1098
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1103
    :cond_2
    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1182
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 1183
    if-eqz p1, :cond_0

    .line 1185
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1188
    :cond_0
    monitor-exit v1

    .line 1189
    return-void

    .line 1188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 1171
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 1172
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 1173
    :try_start_0
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCachedMsgIntentByPkgName, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v0, ".tpns.msg.id.cached"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1177
    :cond_0
    monitor-exit v1

    .line 1178
    return-void

    .line 1177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 1410
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1416
    iget-wide v2, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    const/4 v0, 0x1

    .line 1423
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
