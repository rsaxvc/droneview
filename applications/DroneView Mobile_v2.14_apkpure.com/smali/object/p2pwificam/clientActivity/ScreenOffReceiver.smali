.class public Lobject/p2pwificam/clientActivity/ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOffReceiver.java"


# static fields
.field private static _activity:Landroid/app/Activity;

.field private static _receiver:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;


# instance fields
.field private _handler:Landroid/os/Handler;

.field private _runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;

    .line 62
    sput-object v0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_receiver:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_handler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver$1;-><init>(Lobject/p2pwificam/clientActivity/ScreenOffReceiver;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_runnable:Ljava/lang/Runnable;

    .line 15
    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;

    return-void
.end method

.method public static register(Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    sput-object p0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;

    .line 72
    new-instance v1, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    invoke-direct {v1}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;-><init>()V

    sput-object v1, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_receiver:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    .line 74
    sget-object v1, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_receiver:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public static unregister(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 78
    sget-object v0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_receiver:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_receiver:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_receiver:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    const-string v1, "NDT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScreenOffReceiver "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
