.class public Lcom/tencent/android/tpush/service/XGPushService;
.super Landroid/app/Service;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->SERVICESCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field private static a:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/XGPushService;->a:Landroid/app/Service;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Service;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/tencent/android/tpush/service/XGPushService;->a:Landroid/app/Service;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.tencent.android.tpush.debug,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/service/d/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 39
    if-ne v2, v0, :cond_0

    .line 41
    :goto_0
    sput-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    .line 42
    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    .line 48
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 39
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    sput-object p0, Lcom/tencent/android/tpush/service/XGPushService;->a:Landroid/app/Service;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 56
    const/16 v0, -0x7ce

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/XGPushService;->startForeground(ILandroid/app/Notification;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;)V

    .line 60
    invoke-static {v0}, Lcom/tencent/android/tpush/service/m;->c(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGPushService;->b()V

    .line 62
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "XGPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->a()Lcom/tencent/android/tpush/service/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/m;->b()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->a()Lcom/tencent/android/tpush/service/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/m;->c()V

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 82
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->q(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x2

    .line 90
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGPushService;->b()V

    .line 87
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tpush.wifi.bandon"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 89
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->a()Lcom/tencent/android/tpush/service/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/android/tpush/service/m;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
