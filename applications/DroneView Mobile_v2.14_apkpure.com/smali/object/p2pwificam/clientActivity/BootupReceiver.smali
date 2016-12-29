.class public Lobject/p2pwificam/clientActivity/BootupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startNDTService(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p1}, Lobject/p2pipcam/utils/Pub;->get_event_notification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lobject/p2pipcam/utils/NDTSUtils;->Start(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    return-void
.end method
