.class public Lcom/easyview/push/BPushUtils;
.super Ljava/lang/Object;
.source "BPushUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/PushSettings;->enableDebugMode(Landroid/content/Context;Z)V

    .line 22
    const/4 v0, 0x0

    const-string v1, "PoGEUsaCwFZDkkt2mVfWm6aI"

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcom/easyview/push/BPushUtils;->update(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .locals 9
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v4, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getCameras(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 30
    .local v1, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/easyview/ppcs/PPCSCamera;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 46
    const-string v5, "BPush"

    const-string v6, "setTags"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p0, v4}, Lcom/baidu/android/pushservice/PushManager;->setTags(Landroid/content/Context;Ljava/util/List;)V

    .line 48
    const-string v5, "BPush"

    const-string v6, "listTags"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0}, Lcom/baidu/android/pushservice/PushManager;->listTags(Landroid/content/Context;)V

    .line 50
    return-void

    .line 30
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 32
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "did":Ljava/lang/String;
    invoke-static {p0, v2}, Lobject/p2pipcam/utils/Pub;->getDeviceState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 34
    .local v3, "state":I
    const/4 v6, 0x5

    if-eq v3, v6, :cond_1

    .line 35
    const/16 v6, 0x8

    if-eq v3, v6, :cond_1

    .line 36
    const/16 v6, 0x9

    if-ne v3, v6, :cond_2

    .line 39
    :cond_1
    const-string v6, "BPush"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "can\'t addTag:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :cond_2
    const-string v6, "BPush"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "addTag:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
