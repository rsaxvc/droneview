.class public Lcom/easyview/ndt/NDTService;
.super Landroid/app/Service;
.source "NDTService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/ndt/NDTService$NDTCommHeader;,
        Lcom/easyview/ndt/NDTService$NDTEvent;,
        Lcom/easyview/ndt/NDTService$NDTEvent_1;,
        Lcom/easyview/ndt/NDTService$NDTSubData;,
        Lcom/easyview/ndt/NDTService$ThreadNDT;
    }
.end annotation


# static fields
.field private static AES128Key:Ljava/lang/String; = null

.field private static InitString:Ljava/lang/String; = null

.field static final MAX_NOTIFY_ID:I = 0x67

.field static final MIN_NOTIFY_ID:I = 0x65

.field public static final NDT_COMM_CANCEL:B = 0x2t

.field public static final NDT_COMM_SUB:B = 0x1t

.field public static final NDT_SYMBOL:S = 0x444es

.field private static NDT_TYPE_SUB_FAIL:I = 0x0

.field static final TAG:Ljava/lang/String; = "NDTService"

.field private static WakeLock:Z

.field private static _callback:Lcom/easyview/ndt/INDTServiceCallback;

.field private static _device_count:I

.field private static _mapEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _notify_id:I

.field private static _threads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easyview/ndt/NDTService$ThreadNDT;",
            ">;"
        }
    .end annotation
.end field

.field static final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/easyview/ndt/INDTServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Lcom/easyview/ndt/INDTService$Stub;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "EBGAEIBIKHJJGFJKEOGCFAEPHPMAHONDGJFPBKCPAJJMLFKBDBAGCJPBGOLKIKLKAJMJKFDOOFMOBECEJIMM"

    sput-object v0, Lcom/easyview/ndt/NDTService;->InitString:Ljava/lang/String;

    .line 42
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/easyview/ndt/NDTService;->AES128Key:Ljava/lang/String;

    .line 43
    const/16 v0, 0x61

    sput v0, Lcom/easyview/ndt/NDTService;->NDT_TYPE_SUB_FAIL:I

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/easyview/ndt/NDTService;->WakeLock:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    .line 50
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/easyview/ndt/NDTService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/easyview/ndt/NDTService;->_callback:Lcom/easyview/ndt/INDTServiceCallback;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/easyview/ndt/NDTService;->_device_count:I

    .line 56
    const/16 v0, 0x65

    sput v0, Lcom/easyview/ndt/NDTService;->_notify_id:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Lcom/easyview/ndt/NDTService$1;

    invoke-direct {v0, p0}, Lcom/easyview/ndt/NDTService$1;-><init>(Lcom/easyview/ndt/NDTService;)V

    iput-object v0, p0, Lcom/easyview/ndt/NDTService;->mBinder:Lcom/easyview/ndt/INDTService$Stub;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    return-void
.end method

.method private LoadDID()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 660
    const-string v1, "service_did"

    invoke-virtual {p0, v1, v9}, Lcom/easyview/ndt/NDTService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 661
    .local v8, "preference":Landroid/content/SharedPreferences;
    const-string v1, "count"

    invoke-interface {v8, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/easyview/ndt/NDTService;->_device_count:I

    .line 662
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v1, Lcom/easyview/ndt/NDTService;->_device_count:I

    if-lt v6, v1, :cond_0

    .line 674
    const-string v1, "NDTService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Load Devices:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/easyview/ndt/NDTService;->_device_count:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget v1, Lcom/easyview/ndt/NDTService;->_device_count:I

    return v1

    .line 664
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "did_"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "key":Ljava/lang/String;
    const-string v1, ""

    invoke-interface {v8, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "did":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "name_"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-interface {v8, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "passwd_"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-interface {v8, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "passwd":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "client_"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-interface {v8, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, "client":Ljava/lang/String;
    const-string v1, "NDTService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "did:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Lcom/easyview/ndt/NDTService$ThreadNDT;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/easyview/ndt/NDTService$ThreadNDT;-><init>(Lcom/easyview/ndt/NDTService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .local v0, "thread":Lcom/easyview/ndt/NDTService$ThreadNDT;
    sget-object v1, Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-virtual {v0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->start()V

    .line 662
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private LoadStopFlag()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 716
    const-string v1, "service_did"

    invoke-virtual {p0, v1, v2}, Lcom/easyview/ndt/NDTService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 717
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "stop_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private SaveStopFlag(Z)V
    .locals 4
    .param p1, "stop_flag"    # Z

    .prologue
    .line 709
    const-string v2, "service_did"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/easyview/ndt/NDTService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 710
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 711
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "stop_flag"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 712
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    return-void
.end method

.method static synthetic access$0()Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easyview/ndt/NDTService;Z)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/easyview/ndt/NDTService;->SaveStopFlag(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/easyview/ndt/INDTServiceCallback;)V
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/easyview/ndt/NDTService;->_callback:Lcom/easyview/ndt/INDTServiceCallback;

    return-void
.end method

.method static synthetic access$3()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/easyview/ndt/NDTService;->NDT_TYPE_SUB_FAIL:I

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 271
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/easyview/ndt/NDTService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 272
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 273
    iget-object v1, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 275
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public static pingWithResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 723
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ping -c 1 -w 100 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 724
    .local v2, "p":Ljava/lang/Process;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 725
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 726
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 729
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 730
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 732
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 733
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 739
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 744
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 736
    .restart local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 743
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/ndt/NDTService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 282
    :cond_0
    return-void
.end method

.method public static sendEvent(Ljava/lang/String;IIII)I
    .locals 8
    .param p0, "did"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "time"    # I
    .param p4, "value"    # I

    .prologue
    .line 253
    const/4 v7, 0x0

    .line 254
    .local v7, "result":I
    sget-object v0, Lcom/easyview/ndt/NDTService;->_callback:Lcom/easyview/ndt/INDTServiceCallback;

    if-eqz v0, :cond_0

    .line 257
    :try_start_0
    sget-object v0, Lcom/easyview/ndt/NDTService;->_callback:Lcom/easyview/ndt/INDTServiceCallback;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/easyview/ndt/INDTServiceCallback;->handlerCommEvent(Ljava/lang/String;IIII)I

    move-result v7

    .line 258
    const-string v0, "NDTService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerCommEvent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return v7

    .line 259
    :catch_0
    move-exception v6

    .line 261
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public LoadEventText()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 695
    sget-object v6, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 696
    const-string v6, "event_text"

    invoke-virtual {p0, v6, v8}, Lcom/easyview/ndt/NDTService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 697
    .local v4, "preference":Landroid/content/SharedPreferences;
    const-string v6, "count"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 698
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 705
    const-string v6, "NDTService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Load Devices:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/easyview/ndt/NDTService;->_device_count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void

    .line 700
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "type_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 702
    .local v1, "eventType":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "text_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, "text":Ljava/lang/String;
    sget-object v6, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public SaveDID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "client"    # Ljava/lang/String;

    .prologue
    .line 645
    const-string v3, "service_did"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/easyview/ndt/NDTService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 646
    .local v2, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 647
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "did_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/easyview/ndt/NDTService;->_device_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "name_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/easyview/ndt/NDTService;->_device_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "passwd_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/easyview/ndt/NDTService;->_device_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "client_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/easyview/ndt/NDTService;->_device_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    const-string v3, "count"

    sget v4, Lcom/easyview/ndt/NDTService;->_device_count:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    return-void
.end method

.method public SaveDevices()V
    .locals 4

    .prologue
    .line 636
    const/4 v1, 0x0

    sput v1, Lcom/easyview/ndt/NDTService;->_device_count:I

    .line 637
    sget-object v1, Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    const-string v1, "NDTService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save Devices:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/easyview/ndt/NDTService;->_device_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 637
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/ndt/NDTService$ThreadNDT;

    .line 638
    .local v0, "thread":Lcom/easyview/ndt/NDTService$ThreadNDT;
    invoke-virtual {v0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->Save()V

    .line 639
    sget v2, Lcom/easyview/ndt/NDTService;->_device_count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/easyview/ndt/NDTService;->_device_count:I

    goto :goto_0
.end method

.method public SaveEventText()V
    .locals 8

    .prologue
    .line 679
    const-string v5, "event_text"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/easyview/ndt/NDTService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 680
    .local v4, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 681
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 682
    .local v2, "index":I
    sget-object v5, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 690
    const-string v5, "count"

    sget-object v6, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 692
    return-void

    .line 682
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 684
    .local v1, "eventType":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "type_"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 686
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "text_"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    sget-object v5, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    const-string v0, "NDTService"

    const-string v1, "onBind()  ================="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/easyview/ndt/NDTService;->mBinder:Lcom/easyview/ndt/INDTService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 167
    const-string v0, "NDTService"

    const-string v1, "onCreate()  ================="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/easyview/ndt/NDTService;->InitString:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/easyview/ndt/NDTService;->AES128Key:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_Initialize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/easyview/ndt/NDTService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/ndt/LogUtil;->setLogFileName(Ljava/lang/String;)V

    .line 170
    sget-boolean v0, Lcom/easyview/ndt/NDTService;->WakeLock:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/easyview/ndt/NDTService;->acquireWakeLock()V

    .line 171
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 220
    sget-object v2, Lcom/easyview/ndt/NDTService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 221
    sget-object v2, Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    sget-object v2, Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 232
    invoke-static {}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_DeInitialize()I

    .line 233
    sget-boolean v2, Lcom/easyview/ndt/NDTService;->WakeLock:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/easyview/ndt/NDTService;->releaseWakeLock()V

    .line 234
    :cond_0
    const-string v2, "NDTService"

    const-string v3, "onDestroy()  ================="

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 236
    return-void

    .line 221
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/ndt/NDTService$ThreadNDT;

    .line 222
    .local v1, "thread":Lcom/easyview/ndt/NDTService$ThreadNDT;
    invoke-virtual {v1}, Lcom/easyview/ndt/NDTService$ThreadNDT;->stopNDT()V

    .line 224
    :try_start_0
    invoke-virtual {v1}, Lcom/easyview/ndt/NDTService$ThreadNDT;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v4, 0x0

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "mode":I
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "mode"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    :cond_0
    const-string v1, "NDTService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStart()  mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sput v4, Lcom/easyview/ndt/NDTService;->_device_count:I

    .line 189
    if-nez v0, :cond_1

    .line 191
    const-string v1, "NDTService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStart()  start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/easyview/ndt/NDTService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/easyview/ndt/NDTService;->LoadStopFlag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/easyview/ndt/NDTService;->LoadDID()I

    .line 195
    invoke-virtual {p0}, Lcom/easyview/ndt/NDTService;->LoadEventText()V

    .line 205
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 207
    invoke-direct {p0, v4}, Lcom/easyview/ndt/NDTService;->SaveStopFlag(Z)V

    .line 213
    :cond_2
    const-string v1, "NDTService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStart()  ================="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 215
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    const-string v1, "NDTService"

    const-string v2, "onUnbind()  ================="

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/easyview/ndt/NDTService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 160
    .local v0, "mn":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    sput-object v1, Lcom/easyview/ndt/NDTService;->_callback:Lcom/easyview/ndt/INDTServiceCallback;

    .line 161
    const/4 v1, 0x1

    return v1
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "event_type"    # I
    .param p4, "event_value"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 596
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 597
    .local v3, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 599
    .local v8, "strDate":Ljava/lang/String;
    move-object v9, p2

    .line 600
    .local v9, "title":Ljava/lang/String;
    sget-object v11, Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 602
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v6, "notificationIntent":Landroid/content/Intent;
    const-string v11, "object.p2pwificam.clientActivity.StartActivity"

    invoke-virtual {v6, p0, v11}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v11, "cameraid"

    invoke-virtual {v6, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v11, "mode"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 608
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/easyview/ndt/NDTService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/easyview/ndt/R$layout;->notification_layout:I

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 609
    .local v10, "views":Landroid/widget/RemoteViews;
    sget v11, Lcom/easyview/ndt/R$id;->no_title:I

    invoke-virtual {v10, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 610
    sget v11, Lcom/easyview/ndt/R$id;->no_time:I

    invoke-virtual {v10, v11, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 611
    sget v11, Lcom/easyview/ndt/R$id;->no_img:I

    sget v12, Lcom/easyview/ndt/R$drawable;->app:I

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 612
    sget v11, Lcom/easyview/ndt/R$id;->no_content:I

    invoke-virtual {v10, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 614
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/easyview/ndt/NDTService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 616
    .local v4, "nm":Landroid/app/NotificationManager;
    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    sget v12, Lcom/easyview/ndt/R$drawable;->app:I

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 618
    invoke-virtual {v11, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 619
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 620
    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 621
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 623
    .local v5, "noti":Landroid/app/Notification;
    iget v11, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v5, Landroid/app/Notification;->flags:I

    .line 624
    const-string v11, "-"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 625
    .local v7, "s":[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 627
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/easyview/ndt/NDTService;->_notify_id:I

    .line 629
    :goto_0
    sget v11, Lcom/easyview/ndt/NDTService;->_notify_id:I

    invoke-virtual {v4, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 630
    sget v11, Lcom/easyview/ndt/NDTService;->_notify_id:I

    const/16 v12, 0x67

    if-le v11, v12, :cond_0

    const/16 v11, 0x65

    sput v11, Lcom/easyview/ndt/NDTService;->_notify_id:I

    .line 633
    :cond_0
    return-void

    .line 628
    :cond_1
    const/16 v11, 0x65

    sput v11, Lcom/easyview/ndt/NDTService;->_notify_id:I

    goto :goto_0
.end method
