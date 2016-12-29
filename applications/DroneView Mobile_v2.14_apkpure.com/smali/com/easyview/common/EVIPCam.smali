.class public Lcom/easyview/common/EVIPCam;
.super Ljava/lang/Object;
.source "EVIPCam.java"


# static fields
.field private static infos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easyview/common/EV_NetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    const/4 v1, 0x0

    sput-object v1, Lcom/easyview/common/EVIPCam;->infos:Ljava/util/ArrayList;

    .line 15
    :try_start_0
    const-string v1, "evipc"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 17
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary evipc lib,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "devID"    # Ljava/lang/String;
    .param p1, "IP"    # Ljava/lang/String;
    .param p2, "Port"    # Ljava/lang/String;
    .param p3, "P2P"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v1, "EVIPCam"

    const-string v2, "add:%s %s %s %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Lcom/easyview/common/EV_NetInfo;

    invoke-direct {v0}, Lcom/easyview/common/EV_NetInfo;-><init>()V

    .line 24
    .local v0, "i":Lcom/easyview/common/EV_NetInfo;
    iput-object p0, v0, Lcom/easyview/common/EV_NetInfo;->DevID:Ljava/lang/String;

    .line 25
    iput-object p3, v0, Lcom/easyview/common/EV_NetInfo;->P2P:Ljava/lang/String;

    .line 26
    iput-object p1, v0, Lcom/easyview/common/EV_NetInfo;->IP:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lcom/easyview/common/EV_NetInfo;->Port:Ljava/lang/String;

    .line 28
    sget-object v1, Lcom/easyview/common/EVIPCam;->infos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public static native LanSearch(I)V
.end method

.method public static native Modify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static Search(I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "waitms"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easyview/common/EV_NetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/easyview/common/EVIPCam;->infos:Ljava/util/ArrayList;

    .line 34
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/easyview/common/EVIPCam;->LanSearch(I)V

    .line 36
    sget-object v0, Lcom/easyview/common/EVIPCam;->infos:Ljava/util/ArrayList;

    return-object v0
.end method
