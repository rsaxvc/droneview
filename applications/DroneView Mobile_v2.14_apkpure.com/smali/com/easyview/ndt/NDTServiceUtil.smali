.class public Lcom/easyview/ndt/NDTServiceUtil;
.super Ljava/lang/Object;
.source "NDTServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;,
        Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;
    }
.end annotation


# static fields
.field public static final MODE_INIT_DEVICE:I = 0x2

.field public static final MODE_VIDEO_CALL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NDTUtil"

.field private static _instance:Lcom/easyview/ndt/NDTServiceUtil;


# instance fields
.field private _callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

.field private _connectedListener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

.field private _context:Landroid/content/Context;

.field private _mode:I

.field private _service:Landroid/content/Intent;

.field private haveSetEventText:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mService:Lcom/easyview/ndt/INDTService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/easyview/ndt/NDTServiceUtil;->_instance:Lcom/easyview/ndt/NDTServiceUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->_service:Landroid/content/Intent;

    .line 24
    iput-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    .line 25
    iput-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->_context:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->_connectedListener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    .line 27
    iput-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    .line 28
    iput v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_mode:I

    .line 91
    iput-boolean v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->haveSetEventText:Z

    .line 165
    new-instance v0, Lcom/easyview/ndt/NDTServiceUtil$1;

    invoke-direct {v0, p0}, Lcom/easyview/ndt/NDTServiceUtil$1;-><init>(Lcom/easyview/ndt/NDTServiceUtil;)V

    iput-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->mConn:Landroid/content/ServiceConnection;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/easyview/ndt/NDTServiceUtil;Lcom/easyview/ndt/INDTService;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    return-void
.end method

.method static synthetic access$1(Lcom/easyview/ndt/NDTServiceUtil;)Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->_connectedListener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easyview/ndt/NDTServiceUtil;Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_connectedListener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    return-void
.end method

.method static synthetic access$3(Lcom/easyview/ndt/NDTServiceUtil;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->_mode:I

    return v0
.end method

.method static synthetic access$4(Lcom/easyview/ndt/NDTServiceUtil;)Lcom/easyview/ndt/INDTService;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/easyview/ndt/NDTServiceUtil;)Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    return-object v0
.end method

.method private setPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-interface {v1, p1, p2}, Lcom/easyview/ndt/INDTService;->setPasswd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "did"    # Ljava/lang/String;
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lcom/easyview/ndt/NDTServiceUtil;->_instance:Lcom/easyview/ndt/NDTServiceUtil;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/easyview/ndt/NDTServiceUtil;->_instance:Lcom/easyview/ndt/NDTServiceUtil;

    invoke-direct {v0, p0, p1}, Lcom/easyview/ndt/NDTServiceUtil;->setPasswd(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "client"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/easyview/ndt/INDTService;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public Close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    const-string v1, "NDTUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Close "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->setListener(Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;)V

    .line 74
    const-string v1, "NDTUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterCallback "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    invoke-interface {v1, v2}, Lcom/easyview/ndt/INDTService;->unregisterCallback(Lcom/easyview/ndt/INDTServiceCallback;)V

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    iput-object v4, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    .line 84
    :cond_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public Remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-interface {v1, p1}, Lcom/easyview/ndt/INDTService;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public Start(Landroid/content/Context;ILcom/easyview/ndt/NDTServiceUtil$IConnectedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "listener"    # Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-eqz v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 32
    :cond_0
    iput p2, p0, Lcom/easyview/ndt/NDTServiceUtil;->_mode:I

    .line 33
    iput-object p1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_context:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/easyview/ndt/NDTService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    iput-object p3, p0, Lcom/easyview/ndt/NDTServiceUtil;->_connectedListener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    .line 38
    new-instance v1, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    invoke-direct {v1, p0}, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;-><init>(Lcom/easyview/ndt/NDTServiceUtil;)V

    iput-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    .line 39
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    invoke-virtual {v1, p3}, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->setListener(Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;)V

    .line 40
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    const-string v1, "NDTUtil"

    const-string v2, "NDTUtil bindService fail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    sput-object p0, Lcom/easyview/ndt/NDTServiceUtil;->_instance:Lcom/easyview/ndt/NDTServiceUtil;

    goto :goto_0
.end method

.method public Stop()V
    .locals 3

    .prologue
    .line 48
    const-string v1, "NDTUtil"

    const-string v2, "NDTUtil stop."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    const-string v1, "NDTUtil"

    const-string v2, "NDTUtil stop."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-interface {v1}, Lcom/easyview/ndt/INDTService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public WriteLog(Z)V
    .locals 2
    .param p1, "w"    # Z

    .prologue
    .line 135
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-interface {v1, p1}, Lcom/easyview/ndt/INDTService;->writeLog(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public haveBind()Z
    .locals 3

    .prologue
    .line 87
    const-string v0, "NDTUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NDTUtil haveBind:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEventText(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    if-nez v3, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-boolean v3, p0, Lcom/easyview/ndt/NDTServiceUtil;->haveSetEventText:Z

    if-nez v3, :cond_0

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-interface {v3}, Lcom/easyview/ndt/INDTService;->clearEventText()V

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 107
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/easyview/ndt/NDTServiceUtil;->haveSetEventText:Z

    goto :goto_0

    .line 98
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 100
    .local v2, "type":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v1}, Lcom/easyview/ndt/INDTService;->addEventText(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 103
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
