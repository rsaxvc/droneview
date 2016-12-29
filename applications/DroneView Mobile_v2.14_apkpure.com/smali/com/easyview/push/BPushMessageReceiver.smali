.class public Lcom/easyview/push/BPushMessageReceiver;
.super Lcom/baidu/android/pushservice/PushMessageReceiver;
.source "BPushMessageReceiver.java"


# static fields
.field public static final MODE_INIT_DEVICE:I = 0x2

.field public static final MODE_VIDEO_CALL:I = 0x4


# instance fields
.field private _call_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushMessageReceiver;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/push/BPushMessageReceiver;->_call_time:I

    .line 47
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p3, "appid"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "channelId"    # Ljava/lang/String;
    .param p6, "requestId"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBind errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    const-string v2, " requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "responseString":Ljava/lang/String;
    sget-object v1, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v2, "OnBind"

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onDelTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p5, "arg4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, "arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onDelTags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public onListTags(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p4, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onListTags errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "responseString":Ljava/lang/String;
    sget-object v1, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "custom_string"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v11, 0x0

    .line 81
    .local v11, "customJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v11    # "customJson":Lorg/json/JSONObject;
    .local v12, "customJson":Lorg/json/JSONObject;
    const/16 v18, 0x0

    .line 83
    .local v18, "myvalue":Ljava/lang/String;
    :try_start_1
    const-string v2, "description"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 86
    const-string v2, "custom_content"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 88
    const-string v2, "custom_content"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 89
    .local v10, "custom":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 90
    .local v3, "did":Ljava/lang/String;
    const/4 v4, 0x0

    .line 91
    .local v4, "event_index":I
    const/4 v5, 0x0

    .line 92
    .local v5, "event_type":I
    const/4 v6, 0x0

    .line 93
    .local v6, "event_value":I
    const/4 v7, 0x0

    .line 94
    .local v7, "event_time":I
    const/4 v8, 0x0

    .line 95
    .local v8, "file_id":I
    const/16 v19, 0x0

    .line 96
    .local v19, "t":I
    const/4 v9, 0x0

    .line 97
    .local v9, "c":I
    const-string v2, "did"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "did"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_0
    const-string v2, "index"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "index"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 99
    :cond_1
    const-string v2, "type"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "type"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 100
    :cond_2
    const-string v2, "value"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "value"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 101
    :cond_3
    const-string v2, "time"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "time"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 102
    :cond_4
    const-string v2, "file_id"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "file_id"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 103
    :cond_5
    const-string v2, "time"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 105
    const-string v2, "time"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 107
    :cond_6
    const-string v2, "count"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 109
    const-string v2, "count"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 111
    :cond_7
    invoke-static/range {p1 .. p1}, Lobject/p2pipcam/utils/Pub;->getSaveLogFile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 113
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/ndt/LogUtil;->writeLogToFile(Ljava/lang/Boolean;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/ndt/LogUtil;->setLogFileName(Ljava/lang/String;)V

    .line 116
    :cond_8
    sget-object v2, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[bpush]event did:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " index:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " type:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 119
    .local v13, "date":Ljava/util/Date;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v15, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v15, "f":Ljava/text/SimpleDateFormat;
    int-to-long v0, v7

    move-wide/from16 v16, v0

    .line 121
    .local v16, "ms":J
    const-wide/16 v20, 0x3e8

    mul-long v16, v16, v20

    .line 122
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 123
    sget-object v2, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[bpush] type:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " i:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " t:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 125
    invoke-static/range {v2 .. v8}, Lobject/p2pipcam/utils/Pub;->onEvent(Landroid/content/Context;Ljava/lang/String;IIIII)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    .line 151
    .end local v3    # "did":Ljava/lang/String;
    .end local v4    # "event_index":I
    .end local v5    # "event_type":I
    .end local v6    # "event_value":I
    .end local v7    # "event_time":I
    .end local v8    # "file_id":I
    .end local v9    # "c":I
    .end local v10    # "custom":Lorg/json/JSONObject;
    .end local v12    # "customJson":Lorg/json/JSONObject;
    .end local v13    # "date":Ljava/util/Date;
    .end local v15    # "f":Ljava/text/SimpleDateFormat;
    .end local v16    # "ms":J
    .end local v18    # "myvalue":Ljava/lang/String;
    .end local v19    # "t":I
    .restart local v11    # "customJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v14

    .line 149
    .local v14, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v11    # "customJson":Lorg/json/JSONObject;
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v12    # "customJson":Lorg/json/JSONObject;
    .restart local v18    # "myvalue":Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v11, v12

    .end local v12    # "customJson":Lorg/json/JSONObject;
    .restart local v11    # "customJson":Lorg/json/JSONObject;
    goto :goto_1

    .end local v11    # "customJson":Lorg/json/JSONObject;
    .restart local v12    # "customJson":Lorg/json/JSONObject;
    :cond_9
    move-object v11, v12

    .end local v12    # "customJson":Lorg/json/JSONObject;
    .restart local v11    # "customJson":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public onNotificationArrived(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 158
    return-void
.end method

.method public onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 165
    return-void
.end method

.method public onSetTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p5, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, "sucessTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "failTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetTags errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string v2, " sucessTags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failTags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string v2, " requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "responseString":Ljava/lang/String;
    sget-object v1, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onUnbind(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lcom/easyview/push/BPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
