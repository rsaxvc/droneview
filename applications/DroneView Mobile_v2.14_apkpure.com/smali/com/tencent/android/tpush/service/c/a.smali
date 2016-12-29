.class public Lcom/tencent/android/tpush/service/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;I)V

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->b(Z)V

    .line 56
    sget-object v0, Lcom/tencent/android/tpush/stat/StatReportStrategy;->BATCH:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Lcom/tencent/android/tpush/stat/StatReportStrategy;)V

    .line 57
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 14

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    const-string v0, "type"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 85
    const-string v2, "busiMsgId"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 87
    const-string v2, "timestamps"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 89
    const-string v2, "msgId"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 90
    const-string v2, "accId"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 92
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 93
    const-string v11, "type"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v0, "busiMsgId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string v0, "msgId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    const-string v1, "SdkAck"

    invoke-static/range {v0 .. v6}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "XgStat"

    const-string v2, "reportSDKAck"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "XgStat"

    const-string v2, "reportSrvAck"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    const-string v0, "XgStat"

    const-string v1, "ServiceStat reportAck 15 with null list "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "XgStat"

    const-string v2, "reportAck"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 132
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/android/tpush/stat/h;->c(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "XgStat"

    const-string v2, "reportNotifactionClickedOrClear"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
