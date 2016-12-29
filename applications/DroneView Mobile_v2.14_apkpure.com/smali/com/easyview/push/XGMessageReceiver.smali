.class public Lcom/easyview/push/XGMessageReceiver;
.super Lcom/tencent/android/tpush/XGPushBaseReceiver;
.source "XGMessageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteTagResult(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public onNotifactionClickedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushClickedResult;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/tencent/android/tpush/XGPushClickedResult;

    .prologue
    .line 23
    return-void
.end method

.method public onNotifactionShowedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushShowedResult;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/tencent/android/tpush/XGPushShowedResult;

    .prologue
    .line 29
    return-void
.end method

.method public onRegisterResult(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Lcom/tencent/android/tpush/XGPushRegisterResult;

    .prologue
    .line 35
    return-void
.end method

.method public onSetTagResult(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public onTextMessage(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushTextMessage;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/tencent/android/tpush/XGPushTextMessage;

    .prologue
    .line 47
    return-void
.end method

.method public onUnregisterResult(Landroid/content/Context;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I

    .prologue
    .line 53
    return-void
.end method
