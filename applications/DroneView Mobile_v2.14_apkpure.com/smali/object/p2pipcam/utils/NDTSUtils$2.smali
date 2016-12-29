.class Lobject/p2pipcam/utils/NDTSUtils$2;
.super Ljava/lang/Object;
.source "NDTSUtils.java"

# interfaces
.implements Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/utils/NDTSUtils;->Stop(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;


# direct methods
.method constructor <init>(Lcom/easyview/ndt/NDTServiceUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/NDTSUtils$2;->val$ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnConnected()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lobject/p2pipcam/utils/NDTSUtils$2;->val$ndtUtil:Lcom/easyview/ndt/NDTServiceUtil;

    invoke-virtual {v0}, Lcom/easyview/ndt/NDTServiceUtil;->Stop()V

    .line 133
    return-void
.end method

.method public OnEvent(Ljava/lang/String;IIII)I
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "type"    # I
    .param p4, "time"    # I
    .param p5, "value"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method
