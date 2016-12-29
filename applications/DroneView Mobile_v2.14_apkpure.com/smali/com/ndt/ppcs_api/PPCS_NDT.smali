.class public Lcom/ndt/ppcs_api/PPCS_NDT;
.super Ljava/lang/Object;
.source "PPCS_NDT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;,
        Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;,
        Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;,
        Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    }
.end annotation


# static fields
.field private static AES128Key:Ljava/lang/String; = null

.field private static InitString:Ljava/lang/String; = null

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final NDT_COMM_CANCEL:B = 0x2t

.field public static final NDT_COMM_SUB:B = 0x1t

.field public static final NDT_SYMBOL:S = 0x444es

.field private static _soundPool:Landroid/media/SoundPool;

.field static checkPPCS:Ljava/lang/Runnable;

.field private static handler:Landroid/os/Handler;

.field static isLowFlow:Z

.field static lowFlowCount:I

.field private static netMode:I

.field private static threadSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;",
            ">;"
        }
    .end annotation
.end field

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v0, "EBGAEIBIKHJJGFJKEOGCFAEPHPMAHONDGJFPBKCPAJJMLFKBDBAGCJPBGOLKIKLKAJMJKFDOOFMOBECEJIMM"

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->InitString:Ljava/lang/String;

    .line 47
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->AES128Key:Ljava/lang/String;

    .line 48
    const-string v0, "NDT"

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    .line 85
    sput v1, Lcom/ndt/ppcs_api/PPCS_NDT;->netMode:I

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->handler:Landroid/os/Handler;

    .line 203
    sput-boolean v1, Lcom/ndt/ppcs_api/PPCS_NDT;->isLowFlow:Z

    .line 204
    sput v1, Lcom/ndt/ppcs_api/PPCS_NDT;->lowFlowCount:I

    .line 236
    new-instance v0, Lcom/ndt/ppcs_api/PPCS_NDT$1;

    invoke-direct {v0}, Lcom/ndt/ppcs_api/PPCS_NDT$1;-><init>()V

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->checkPPCS:Ljava/lang/Runnable;

    .line 240
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Add(Ljava/lang/String;)V
    .locals 2
    .param p0, "did"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;

    invoke-direct {v0, p0}, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "thread":Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    sget-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v0}, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->start()V

    goto :goto_0
.end method

.method public static DeInitialize()V
    .locals 5

    .prologue
    .line 109
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/ndt/ppcs_api/PPCS_NDT;->checkPPCS:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeInitialize..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v1, "thread":Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 127
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    const-string v3, "DeInitialize.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_DeInitialize()I

    .line 129
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    const-string v3, "DeInitialize"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->releaseWakeLock()V

    .line 131
    return-void

    .line 117
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "thread":Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    check-cast v1, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;

    .line 118
    .restart local v1    # "thread":Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    invoke-virtual {v1}, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->stopNDT()V

    .line 120
    :try_start_0
    invoke-virtual {v1}, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static Initialize()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 87
    sget-object v3, Lcom/ndt/ppcs_api/PPCS_NDT;->InitString:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/ndt/ppcs_api/PPCS_NDT;->AES128Key:Ljava/lang/String;

    invoke-static {v3, v9, v4, v5}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_Initialize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v3, Landroid/media/SoundPool;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v11, v9}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v3, Lcom/ndt/ppcs_api/PPCS_NDT;->_soundPool:Landroid/media/SoundPool;

    .line 89
    sget-object v3, Lcom/ndt/ppcs_api/PPCS_NDT;->_soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050004

    invoke-virtual {v3, v4, v5, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 90
    new-instance v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;

    invoke-direct {v0}, Lcom/ndt/ppcs_api/st_NDT_NetInfo;-><init>()V

    .line 91
    .local v0, "info":Lcom/ndt/ppcs_api/st_NDT_NetInfo;
    const-string v3, "www.baidu.com"

    invoke-static {v3}, Lcom/ndt/ppcs_api/PPCS_NDT;->pingWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "result":Ljava/lang/String;
    const-string v3, "NDT"

    const-string v4, "ping:%s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v3, 0x7d0

    invoke-static {v0, v3}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_NetworkDetect(Lcom/ndt/ppcs_api/st_NDT_NetInfo;I)I

    move-result v2

    .line 94
    .local v2, "ret":I
    const-string v3, "NDT"

    const-string v4, "init detect ret:%d ack:%d wan:%s:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget-byte v6, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->bServerHelloAck:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanIP:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v5, v6

    iget v6, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanPort:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "www.qq.com"

    invoke-static {v3}, Lcom/ndt/ppcs_api/PPCS_NDT;->pingWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v3, "NDT"

    const-string v4, "ping:%s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->checkNetState()V

    .line 105
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->acquireWakeLock()V

    .line 106
    return-void
.end method

.method public static KeepAlive()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 174
    new-instance v5, Lstruct/StructPacker;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v5, v7}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 175
    .local v5, "packer":Lstruct/StructPacker;
    new-instance v4, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;

    invoke-direct {v4}, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;-><init>()V

    .line 176
    .local v4, "header":Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;
    const/16 v7, 0x444e

    iput-short v7, v4, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->symbol:S

    .line 177
    iput-byte v11, v4, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->size:B

    .line 178
    const/4 v7, 0x1

    iput-byte v7, v4, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->type:B

    .line 179
    new-instance v6, Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;

    invoke-direct {v6}, Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;-><init>()V

    .line 180
    .local v6, "subData":Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;
    iget-object v7, v6, Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;->ClientName:Lstruct/CString;

    const-string v8, "keep"

    invoke-virtual {v7, v8}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 182
    :try_start_0
    invoke-virtual {v5, v4}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v5, v6}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    invoke-virtual {v5}, Lstruct/StructPacker;->toArray()[B

    move-result-object v1

    .line 191
    .local v1, "data":[B
    sget-object v7, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Alive "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v7, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 200
    return-void

    .line 184
    .end local v1    # "data":[B
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Lstruct/StructException;
    invoke-virtual {v3}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v3    # "e":Lstruct/StructException;
    .restart local v1    # "data":[B
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "did":Ljava/lang/String;
    sget-object v8, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Alive NDT_PPCS_SendTo ..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    array-length v8, v1

    invoke-static {v2, v1, v8, v11}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_SendTo(Ljava/lang/String;[BII)I

    move-result v0

    .line 196
    .local v0, "DeviceHandle":I
    sget-object v8, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Alive NDT_PPCS_SendTo:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " did:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static Remove(Ljava/lang/String;)V
    .locals 3
    .param p0, "did"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;

    .line 145
    .local v1, "thread":Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    invoke-virtual {v1}, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->stopNDT()V

    .line 147
    :try_start_0
    invoke-virtual {v1}, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->threadSet:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v1    # "thread":Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    :cond_0
    return-void

    .line 148
    .restart local v1    # "thread":Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->checkNetState()V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/ndt/ppcs_api/PPCS_NDT;->netMode:I

    return v0
.end method

.method private static acquireWakeLock()V
    .locals 3

    .prologue
    .line 158
    sget-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 160
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 161
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    sget-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    :cond_0
    return-void
.end method

.method private static checkNetState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isNeedLowFlow()Z

    move-result v0

    .line 208
    .local v0, "isNeedLowFlow":Z
    if-eqz v0, :cond_2

    .line 210
    sget v1, Lcom/ndt/ppcs_api/PPCS_NDT;->lowFlowCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/ndt/ppcs_api/PPCS_NDT;->lowFlowCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    .line 212
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 214
    sget-boolean v1, Lcom/ndt/ppcs_api/PPCS_NDT;->isLowFlow:Z

    if-nez v1, :cond_1

    .line 216
    sget-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Stop CameraList"

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/CameraList;->Stop()V

    .line 218
    sput-boolean v4, Lcom/ndt/ppcs_api/PPCS_NDT;->isLowFlow:Z

    .line 230
    :cond_1
    :goto_1
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    sput v3, Lcom/ndt/ppcs_api/PPCS_NDT;->netMode:I

    .line 234
    :goto_2
    sget-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/ndt/ppcs_api/PPCS_NDT;->checkPPCS:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    return-void

    .line 211
    :cond_2
    sput v3, Lcom/ndt/ppcs_api/PPCS_NDT;->lowFlowCount:I

    goto :goto_0

    .line 222
    :cond_3
    sget-boolean v1, Lcom/ndt/ppcs_api/PPCS_NDT;->isLowFlow:Z

    if-eqz v1, :cond_1

    .line 224
    sget-object v1, Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Start CameraList"

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/CameraList;->Start()V

    .line 226
    sput-boolean v3, Lcom/ndt/ppcs_api/PPCS_NDT;->isLowFlow:Z

    goto :goto_1

    .line 232
    :cond_4
    sput v4, Lcom/ndt/ppcs_api/PPCS_NDT;->netMode:I

    goto :goto_2
.end method

.method public static pingWithResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 473
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

    .line 474
    .local v2, "p":Ljava/lang/Process;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 475
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 476
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 479
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 482
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 483
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 486
    .restart local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 493
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private static releaseWakeLock()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/ndt/ppcs_api/PPCS_NDT;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    :cond_0
    return-void
.end method
