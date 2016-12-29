.class public Lcom/easyview/push/XGPushUtils;
.super Ljava/lang/Object;
.source "XGPushUtils.java"


# static fields
.field private static _token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/easyview/push/XGPushUtils;->_token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    sput-object p0, Lcom/easyview/push/XGPushUtils;->_token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/easyview/push/XGPushUtils;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/easyview/push/XGPushUtils$1;

    invoke-direct {v1, p0}, Lcom/easyview/push/XGPushUtils$1;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 41
    return-void
.end method
