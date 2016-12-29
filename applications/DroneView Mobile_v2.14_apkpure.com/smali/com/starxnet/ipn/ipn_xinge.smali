.class public Lcom/starxnet/ipn/ipn_xinge;
.super Ljava/lang/Object;
.source "ipn_xinge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPN"


# instance fields
.field private EventName:Ljava/lang/String;

.field private InitString:Ljava/lang/String;

.field private final SUB_TOKEN:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field private appName:Ljava/lang/String;

.field private gAESKey:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isSubscribe:Z

.field private mXinGeToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "DoorBell"

    iput-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->EventName:Ljava/lang/String;

    .line 24
    const-string v0, "NDHAFDNBFLPLPOJEHCcFeNACgOeDMlhLmPeDpOLMIGPCnaBdDFjFkKKBLJfFoOdnOBbLeFjonKfJeBpihNoJmJHFcBMDaPjAkOfCoE"

    iput-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->InitString:Ljava/lang/String;

    .line 25
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    .line 26
    const-string v0, "idoorphone"

    iput-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->appName:Ljava/lang/String;

    .line 27
    const-string v0, "subscribe_token"

    iput-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->SUB_TOKEN:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/starxnet/ipn/ipn_xinge;->isSubscribe:Z

    .line 67
    new-instance v0, Lcom/starxnet/ipn/ipn_xinge$1;

    invoke-direct {v0, p0}, Lcom/starxnet/ipn/ipn_xinge$1;-><init>(Lcom/starxnet/ipn/ipn_xinge;)V

    iput-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/starxnet/ipn/ipn_xinge;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/starxnet/ipn/ipn_xinge;->checkNetState()V

    return-void
.end method

.method static synthetic access$1(Lcom/starxnet/ipn/ipn_xinge;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/starxnet/ipn/ipn_xinge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/starxnet/ipn/ipn_xinge;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    return-object v0
.end method

.method private checkNetState()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/starxnet/ipn/ipn_xinge;->registerPush()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/starxnet/ipn/ipn_xinge;->isNeedSubscribe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-boolean v0, p0, Lcom/starxnet/ipn/ipn_xinge;->isSubscribe:Z

    if-nez v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/starxnet/ipn/ipn_xinge;->subscribeDevices()V

    .line 98
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/CameraList;->Stop()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/starxnet/ipn/ipn_xinge;->isSubscribe:Z

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/starxnet/ipn/ipn_xinge$4;

    invoke-direct {v1, p0}, Lcom/starxnet/ipn/ipn_xinge$4;-><init>(Lcom/starxnet/ipn/ipn_xinge;)V

    .line 115
    const-wide/16 v2, 0x1388

    .line 111
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void

    .line 103
    :cond_2
    iget-boolean v0, p0, Lcom/starxnet/ipn/ipn_xinge;->isSubscribe:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/CameraList;->Start()V

    .line 106
    invoke-direct {p0}, Lcom/starxnet/ipn/ipn_xinge;->unSubscribeDevices()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/starxnet/ipn/ipn_xinge;->isSubscribe:Z

    goto :goto_0
.end method

.method private isNeedSubscribe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v3, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 80
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 81
    .local v0, "isScreenOn":Z
    if-nez v0, :cond_0

    .line 83
    .end local v0    # "isScreenOn":Z
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 377
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xinge:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private querySubscribeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 176
    const/4 v5, 0x0

    .line 177
    .local v5, "subscribeToken":Ljava/lang/String;
    const/16 v6, 0xa0

    new-array v4, v6, [B

    .line 178
    .local v4, "subToken":[B
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 179
    move-object v0, p1

    .line 180
    .local v0, "QueryTokenPassword":Ljava/lang/String;
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    invoke-virtual {v6, p1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 182
    .local v3, "setting":Landroid/content/SharedPreferences;
    const/4 v6, -0x1

    const-string v7, "./debug.log"

    invoke-static {v6, v7}, Lcom/starxnet/ipn/iPN_API;->iPN_Debug(ILjava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->InitString:Ljava/lang/String;

    iget-object v7, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/starxnet/ipn/iPN_API;->iPN_Initialize(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "did="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EventName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/starxnet/ipn/ipn_xinge;->EventName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "QueryTokenPassword="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    const/4 v2, -0x1

    .line 188
    .local v2, "rc":I
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->EventName:Ljava/lang/String;

    iget-object v7, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    invoke-static {p1, v6, v0, v4, v7}, Lcom/starxnet/ipn/iPN_API;->iPN_QueryToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    move-result v2

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "length":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    aget-byte v6, v4, v1

    if-nez v6, :cond_1

    .line 193
    :cond_0
    new-instance v5, Ljava/lang/String;

    .end local v5    # "subscribeToken":Ljava/lang/String;
    const-string v6, "US-ASCII"

    invoke-direct {v5, v4, v9, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 196
    .restart local v5    # "subscribeToken":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 197
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rc------------------:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    packed-switch v2, :pswitch_data_0

    .line 245
    :pswitch_0
    const/4 v5, 0x0

    .line 251
    .end local v5    # "subscribeToken":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 192
    .restart local v5    # "subscribeToken":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "iPN_Query_Token Succeed!\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The return subscribeToken="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "SUBSCRIBETOKEN"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerPush()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    new-instance v1, Lcom/starxnet/ipn/ipn_xinge$3;

    invoke-direct {v1, p0}, Lcom/starxnet/ipn/ipn_xinge$3;-><init>(Lcom/starxnet/ipn/ipn_xinge;)V

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 66
    return-void
.end method

.method private subscribeDevice(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v3, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    .local v1, "setting":Landroid/content/SharedPreferences;
    const-string v3, "SUBSCRIBETOKEN"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "token":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/starxnet/ipn/ipn_xinge;->querySubscribeToken(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 151
    :goto_1
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/starxnet/ipn/ipn_xinge;->subscribeXinGe(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private subscribeDevices()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/camera/CameraList;->count()I

    move-result v1

    .line 124
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 129
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/easyview/camera/CameraList;->getCamera(I)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    .line 127
    .local v0, "camera":Lcom/easyview/camera/EVBaseCamera;
    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/starxnet/ipn/ipn_xinge;->subscribeDevice(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private subscribeXinGe(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 256
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    invoke-virtual {v6, p1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 257
    .local v4, "setting":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "TOKEN"

    invoke-interface {v6, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    const-string v7, "subscribe_token"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 260
    .local v3, "setsubtoken":Landroid/content/SharedPreferences;
    const-string v6, "SUBTOKEN"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "subTokens":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "subToken+"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "subscribeToken+"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 264
    const/4 v2, -0x1

    .line 334
    :goto_0
    return v2

    .line 266
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mXinGeToken="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "mXinGeId":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mXinGeId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    const/4 v6, 0x1

    new-array v0, v6, [I

    .line 272
    .local v0, "SubscriberID":[I
    aput v1, v0, v9

    .line 274
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->InitString:Ljava/lang/String;

    iget-object v7, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/starxnet/ipn/iPN_API;->iPN_Initialize(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v2, -0x1

    .line 276
    .local v2, "rc":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "subscribeToken="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "---gAESKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "---mXinGeToken:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "---SubscriberID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    iget-object v6, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/starxnet/ipn/ipn_xinge;->mXinGeToken:Ljava/lang/String;

    invoke-static {p2, v6, v7, v0}, Lcom/starxnet/ipn/iPN_API;->iPN_Subscribe_XinGe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I

    move-result v2

    .line 278
    if-nez v2, :cond_1

    .line 279
    const-string v6, "IPN"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "iPN_Subscribe_XinGe Succeed!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "iPN_Subscribe_XinGe Succeed!\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The return SubscriberID="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "XINGEID"

    aget v8, v0, v9

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 284
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "iPN_Subscribe_XinGe Failed!\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rc="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const-string v6, "iPN_Subscribe_XinGe Failed!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    .line 287
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 328
    :pswitch_0
    const-string v6, "QueryTokenPassword Or NotOpen!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :pswitch_1
    const-string v6, "Invalid AuthCode!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :pswitch_2
    const-string v6, "Invalid Token!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :pswitch_3
    const-string v6, "Max Event!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :pswitch_4
    const-string v6, "Event Exist!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :pswitch_5
    const-string v6, "Event NotExist!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :pswitch_6
    const-string v6, "SubscriberID NotExist!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :pswitch_7
    const-string v6, "Internal Error!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :pswitch_8
    const-string v6, "Table NotExist!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :pswitch_9
    const-string v6, "Already Published!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :pswitch_a
    const-string v6, "Already Subscribed!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :pswitch_b
    const-string v6, "Already Posted!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :pswitch_c
    const-string v6, "TimeOut!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :pswitch_d
    const-string v6, "Connect Error!"

    invoke-direct {p0, v6}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private unSubscribeDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, "setting":Landroid/content/SharedPreferences;
    const-string v2, "SUBSCRIBETOKEN"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "token":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/starxnet/ipn/ipn_xinge;->unSubscribeXinGe(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unSubscribeDevices()V
    .locals 4

    .prologue
    .line 157
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/camera/CameraList;->count()I

    move-result v1

    .line 158
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 164
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/easyview/camera/CameraList;->getCamera(I)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    .line 161
    .local v0, "camera":Lcom/easyview/camera/EVBaseCamera;
    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/starxnet/ipn/ipn_xinge;->unSubscribeDevice(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private unSubscribeXinGe(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 344
    iget-object v5, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    invoke-virtual {v5, p1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 345
    .local v2, "setting":Landroid/content/SharedPreferences;
    if-nez p2, :cond_0

    .line 346
    const-string v5, "Invalid Token!"

    invoke-direct {p0, v5}, Lcom/starxnet/ipn/ipn_xinge;->log(Ljava/lang/String;)V

    move v1, v4

    .line 374
    :goto_0
    return v1

    .line 349
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "subscribeToken="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    const-string v5, "XINGEID"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 351
    .local v0, "mXinGeId":I
    if-nez v0, :cond_1

    move v1, v4

    .line 352
    goto :goto_0

    .line 354
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mXinGeId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    const/4 v5, 0x1

    new-array v3, v5, [I

    .line 358
    .local v3, "unSubscriberID":[I
    aput v0, v3, v8

    .line 360
    const/4 v1, -0x1

    .line 361
    .local v1, "rc":I
    const-string v5, "./debug.log"

    invoke-static {v4, v5}, Lcom/starxnet/ipn/iPN_API;->iPN_Debug(ILjava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/starxnet/ipn/ipn_xinge;->InitString:Ljava/lang/String;

    iget-object v5, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/starxnet/ipn/iPN_API;->iPN_Initialize(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v4, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    aget v5, v3, v8

    invoke-static {p2, v4, v5}, Lcom/starxnet/ipn/iPN_API;->iPN_UnSubscribe_XinGe(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 364
    if-nez v1, :cond_2

    .line 365
    const-string v4, "IPN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "iPN_UnSubscribe_XinGe Succeed!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "iPN_UnSubscribe_XinGe Succeed!\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The return unSubscriberID="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "XINGEID"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 371
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "iPN_UnSubscribe_XinGe Failed!\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rc="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public Init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/starxnet/ipn/ipn_xinge;->_context:Landroid/content/Context;

    .line 35
    const-string v1, "subscribe_token"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, "setsubtoken":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SUBTOKEN"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    invoke-direct {p0}, Lcom/starxnet/ipn/ipn_xinge;->registerPush()V

    .line 38
    iget-object v1, p0, Lcom/starxnet/ipn/ipn_xinge;->InitString:Ljava/lang/String;

    iget-object v2, p0, Lcom/starxnet/ipn/ipn_xinge;->gAESKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/starxnet/ipn/iPN_API;->iPN_Initialize(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/starxnet/ipn/ipn_xinge;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/starxnet/ipn/ipn_xinge$2;

    invoke-direct {v2, p0}, Lcom/starxnet/ipn/ipn_xinge$2;-><init>(Lcom/starxnet/ipn/ipn_xinge;)V

    .line 44
    const-wide/16 v3, 0x1388

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method
