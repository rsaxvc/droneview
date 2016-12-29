.class public Lcom/tencent/android/tpush/common/p;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/android/tpush/common/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 385
    sput-boolean v1, Lcom/tencent/android/tpush/common/p;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    sget-object v1, Lcom/tencent/android/tpush/common/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :goto_0
    return v0

    .line 102
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 103
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->setContext(Landroid/content/Context;)V

    .line 105
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 106
    invoke-static {p0}, Lcom/tencent/android/tpush/service/m;->c(Landroid/content/Context;)V

    .line 108
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    const-string v0, "Util"

    const-string v1, "XG is disable"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v0, 0x2717

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    const-string v0, "Util"

    const-string v1, "can not load library from so file"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/16 v0, 0x2714

    goto :goto_0

    .line 118
    :cond_4
    invoke-static {}, Lcom/tencent/android/tpush/common/l;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 124
    const/16 v0, 0x2713

    goto :goto_0

    .line 128
    :cond_5
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 129
    const-string v0, "Util"

    const-string v1, "The service rpc.XGRemoteService is unfined, Please add it in AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v0, -0x2715

    goto :goto_0

    .line 136
    :cond_6
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/f;->n(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    sget-object v1, Lcom/tencent/android/tpush/common/p;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "Util"

    const-string v2, "Util -> initGlobal"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 449
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    const-string v1, "Util"

    const-string v2, "getDateString"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    const-string v0, "20141111"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const-string v0, "0"

    .line 73
    :goto_0
    return-object v0

    .line 60
    :cond_0
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 65
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    .line 66
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 67
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    const-string v0, "0"

    goto :goto_0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 587
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/v;->a()Lcom/tencent/android/tpush/service/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/v;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 593
    :cond_0
    const-string v0, "Util"

    const-string v1, "stop WakeLock CPU"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_1
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    const-string v1, "Util"

    const-string v2, "stopWakeLock"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 351
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 360
    if-eq v2, v3, :cond_0

    .line 361
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 3

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "Util"

    const-string v2, "safeUnregisterReceiver error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 601
    .line 606
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 609
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 611
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 612
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 617
    :goto_1
    :try_start_3
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFile IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 621
    if-eqz v3, :cond_0

    .line 622
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 624
    :cond_0
    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 632
    :cond_1
    :goto_2
    return v0

    .line 614
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 615
    const/4 v0, 0x1

    .line 621
    if-eqz v4, :cond_3

    .line 622
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 624
    :cond_3
    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 627
    :catch_1
    move-exception v1

    goto :goto_2

    .line 620
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 621
    :goto_3
    if-eqz v3, :cond_4

    .line 622
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 624
    :cond_4
    if-eqz v2, :cond_5

    .line 625
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 629
    :cond_5
    :goto_4
    throw v0

    .line 627
    :catch_2
    move-exception v1

    goto :goto_4

    .line 620
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 627
    :catch_3
    move-exception v1

    goto :goto_2

    .line 616
    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PUSH_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "Util"

    const-string v2, "Util -> isAIDLConfiged"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 175
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    if-eqz p0, :cond_0

    .line 197
    const-string v0, "tpush.running.service.name"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 216
    if-eqz p0, :cond_3

    .line 218
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 220
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 225
    const-class v1, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 228
    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.tencent.android.tpush.service.XGPushService"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    :cond_1
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 234
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "XGService"

    const-string v2, "getServiceStatus"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 247
    if-eqz p0, :cond_1

    .line 249
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/m;->c(Landroid/content/Context;)V

    .line 250
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/android/tpush/common/o;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/common/o;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/m;->a(Landroid/content/Context;)V

    .line 258
    const-string v0, "XGService"

    const-string v1, "Action -> start Local Service()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/common/q;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/common/q;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    .line 283
    :cond_1
    return-void

    .line 262
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.SDK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 303
    const-string v1, ""

    .line 305
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 308
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    if-nez v0, :cond_0

    .line 310
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 313
    :goto_1
    const-string v2, "Util"

    const-string v3, "get app version error"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 312
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static g(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 389
    if-nez p0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    sget-boolean v0, Lcom/tencent/android/tpush/common/p;->b:Z

    if-nez v0, :cond_0

    .line 394
    :try_start_0
    const-class v0, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    const-class v0, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    const-class v0, Lcom/tencent/android/tpush/rpc/XGRemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 405
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 407
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 408
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 410
    const-class v5, Lcom/tencent/android/tpush/XGPushBaseReceiver;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/tencent/android/tpush/XGPushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 413
    :cond_2
    invoke-static {p0, v3}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string v1, "Util"

    const-string v2, "enableComponents"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/android/tpush/common/p;->b:Z

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    .line 459
    if-nez p0, :cond_1

    move v0, v1

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".enableService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    invoke-static {p0, v2, v3}, Lcom/tencent/android/tpush/service/d/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    .line 467
    sget v2, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".enableService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/tencent/android/tpush/service/d/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    .line 471
    :cond_2
    sget v2, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    if-ne v2, v4, :cond_5

    .line 472
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 473
    invoke-static {p0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 475
    invoke-static {v2}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 476
    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 478
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 479
    array-length v5, v3

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v3, v2

    .line 481
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 482
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 488
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-lez v2, :cond_4

    .line 489
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->enableService(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 496
    :cond_4
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-lez v2, :cond_5

    .line 497
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 499
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->enableService(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 507
    :cond_5
    sget v2, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 483
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 529
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 531
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 535
    :goto_0
    return v0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    const-string v1, "TPush"

    const-string v2, "Util -> isScreenOn"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 546
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 547
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 549
    const-string v1, "status"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 550
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 551
    :goto_0
    if-nez v1, :cond_2

    .line 561
    :goto_1
    return v0

    .line 550
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 554
    :cond_2
    const-string v1, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 558
    :catch_0
    move-exception v1

    .line 559
    const-string v2, "TPush"

    const-string v3, "Util -> getChangedStatus"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 565
    if-nez p0, :cond_0

    .line 566
    const-string v0, "Util"

    const-string v1, "Util -> getWakeCpu error null context"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 570
    :cond_0
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 571
    const/4 v1, 0x1

    const-string v2, "TPUSH"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 573
    invoke-static {}, Lcom/tencent/android/tpush/service/v;->a()Lcom/tencent/android/tpush/service/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/service/v;->a(Landroid/os/PowerManager$WakeLock;)V

    .line 574
    invoke-static {}, Lcom/tencent/android/tpush/service/v;->a()Lcom/tencent/android/tpush/service/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/v;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    invoke-static {}, Lcom/tencent/android/tpush/service/v;->a()Lcom/tencent/android/tpush/service/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/v;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 577
    :cond_1
    const-string v0, "Util"

    const-string v1, "get Wake Cpu "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    const-string v1, "Util"

    const-string v2, "get Wake cpu"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
