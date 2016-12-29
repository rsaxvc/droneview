.class public Lobject/p2pipcam/utils/NDTSUtils;
.super Ljava/lang/Object;
.source "NDTSUtils.java"


# static fields
.field private static _context:Landroid/content/Context;

.field private static _handler:Landroid/os/Handler;

.field private static ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    .line 22
    sput-object v0, Lobject/p2pipcam/utils/NDTSUtils;->_context:Landroid/content/Context;

    .line 23
    new-instance v0, Lobject/p2pipcam/utils/NDTSUtils$1;

    invoke-direct {v0}, Lobject/p2pipcam/utils/NDTSUtils$1;-><init>()V

    sput-object v0, Lobject/p2pipcam/utils/NDTSUtils;->_handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "did"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/easyview/ndt/NDTServiceUtil;->Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static Close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v0, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "NDT"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    invoke-virtual {v0}, Lcom/easyview/ndt/NDTServiceUtil;->Close()V

    .line 112
    sput-object v2, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    .line 113
    sput-object v2, Lobject/p2pipcam/utils/NDTSUtils;->_context:Landroid/content/Context;

    .line 115
    :cond_0
    return-void
.end method

.method public static Remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "did"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lobject/p2pipcam/utils/NDTSUtils;->ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    invoke-virtual {v0, p0}, Lcom/easyview/ndt/NDTServiceUtil;->Remove(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static Restart(Landroid/content/Context;I)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 118
    return-void
.end method

.method public static Start(Landroid/content/Context;I)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 35
    sput-object p0, Lobject/p2pipcam/utils/NDTSUtils;->_context:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public static Stop(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string v1, "NDT"

    const-string v2, "NDTSUtils stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/easyview/ndt/NDTServiceUtil;

    invoke-direct {v0}, Lcom/easyview/ndt/NDTServiceUtil;-><init>()V

    .line 129
    .local v0, "ndtUtil":Lcom/easyview/ndt/NDTServiceUtil;
    const/4 v1, 0x1

    new-instance v2, Lobject/p2pipcam/utils/NDTSUtils$2;

    invoke-direct {v2, v0}, Lobject/p2pipcam/utils/NDTSUtils$2;-><init>(Lcom/easyview/ndt/NDTServiceUtil;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/easyview/ndt/NDTServiceUtil;->Start(Landroid/content/Context;ILcom/easyview/ndt/NDTServiceUtil$IConnectedListener;)V

    .line 142
    return-void
.end method

.method static synthetic access$0(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lobject/p2pipcam/utils/NDTSUtils;->_handler:Landroid/os/Handler;

    return-void
.end method
