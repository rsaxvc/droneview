.class public Lcom/easyview/common/CamUtils;
.super Ljava/lang/Object;
.source "CamUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SearchOneInfo(I)Lcom/easyview/common/EV_NetInfo;
    .locals 5
    .param p0, "retry"    # I

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 13
    .local v0, "count":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p0, :cond_0

    .line 31
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 16
    :cond_0
    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/easyview/common/EVIPCam;->Search(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 18
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/easyview/common/EV_NetInfo;>;"
    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 22
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/easyview/common/EV_NetInfo;

    goto :goto_1

    .line 26
    :cond_1
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static findInfo(Lcom/easyview/common/EV_NetInfo;I)Z
    .locals 7
    .param p0, "info"    # Lcom/easyview/common/EV_NetInfo;
    .param p1, "retry"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "count":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    .line 52
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 38
    :cond_0
    const/16 v4, 0x3e8

    invoke-static {v4}, Lcom/easyview/common/EVIPCam;->Search(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 39
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/easyview/common/EV_NetInfo;>;"
    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    :cond_2
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/easyview/common/EV_NetInfo;

    .line 43
    .local v2, "i":Lcom/easyview/common/EV_NetInfo;
    iget-object v5, v2, Lcom/easyview/common/EV_NetInfo;->DevID:Ljava/lang/String;

    iget-object v6, p0, Lcom/easyview/common/EV_NetInfo;->DevID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1
.end method
