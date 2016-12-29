.class public Lobject/p2pipcam/bean/EventDetailBean;
.super Ljava/lang/Object;
.source "EventDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private camName:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private createtime:Ljava/lang/String;

.field public devID:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private endTime:I

.field private eventIndex:I

.field private eventTime:I

.field private eventTimeStr:Ljava/lang/String;

.field private eventType:I

.field private eventTypeStr:Ljava/lang/String;

.field private fileID:I

.field private haveLocalVideo:I

.field private havePicture:I

.field private is_can_sel:Z

.field private is_downing:Z

.field private is_selected:Z

.field private periodStr:Ljava/lang/String;

.field private picturePath:Ljava/lang/String;

.field private recordIndex:I

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    .line 37
    iput-boolean v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_downing:Z

    .line 38
    iput-boolean v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_can_sel:Z

    .line 39
    iput-boolean v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_selected:Z

    .line 41
    iput-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTimeStr:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTypeStr:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->periodStr:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    .line 51
    iput p2, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    .line 52
    return-void
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "inSampleSize"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 200
    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->havePicture:I

    if-ne v4, v5, :cond_2

    .line 202
    const/4 v0, 0x0

    .line 206
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 211
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 212
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 213
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 214
    iget-object v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v3

    .line 224
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_1

    .line 216
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getCamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->camName:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->createtime:Ljava/lang/String;

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->endTime:I

    return v0
.end method

.method public getEventIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventIndex:I

    return v0
.end method

.method public getEventRes()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventType:I

    invoke-static {v0}, Lobject/p2pipcam/utils/Pub;->getEventRes(I)I

    move-result v0

    return v0
.end method

.method public getEventText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTypeStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventType:I

    iget v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->endTime:I

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->getEventText(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTypeStr:Ljava/lang/String;

    .line 190
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTime()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventType:I

    return v0
.end method

.method public getHaveLocalVideo()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    .line 271
    .local v1, "strKey":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    .line 272
    :cond_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    iget v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/easyview/table/RecordTable;->getHaveVideo(Ljava/lang/String;III)I

    move-result v2

    iput v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    .line 273
    iget v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    if-ne v2, v7, :cond_1

    .line 275
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    iget v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/easyview/table/RecordTable;->getVideoPath(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    const-string v2, "EventBean"

    const-string v3, "video file not exits:%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    iget v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/easyview/table/RecordTable;->setHaveVideo(Ljava/lang/String;III)Z

    .line 280
    iput v6, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    .line 284
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    iget v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    return v2
.end method

.method public getHavePicture()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->havePicture:I

    return v0
.end method

.method public getIndexFileText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    const-string v0, "INDEX:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 161
    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->periodStr:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 163
    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    .line 164
    .local v1, "strKey":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    .line 165
    :cond_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    iget v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/easyview/table/RecordTable;->getDuration(Ljava/lang/String;III)I

    move-result v0

    .line 166
    .local v0, "duration":I
    if-nez v0, :cond_1

    .line 168
    iget v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->endTime:I

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    sub-int v0, v2, v3

    .line 169
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 171
    :cond_1
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->periodStr:Ljava/lang/String;

    .line 173
    .end local v0    # "duration":I
    .end local v1    # "strKey":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->periodStr:Ljava/lang/String;

    return-object v2
.end method

.method public getPicturePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicturePath(Z)Ljava/lang/String;
    .locals 4
    .param p1, "update"    # Z

    .prologue
    .line 82
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v0

    iget v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/easyview/table/EventTable;->getPicturePath(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->havePicture:I

    .line 84
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    return v0
.end method

.method public getTimeFileText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    const-string v0, "TIME:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 148
    iget-object v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTimeStr:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 151
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "f":Ljava/text/SimpleDateFormat;
    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    int-to-long v2, v4

    .line 153
    .local v2, "ms":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 154
    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 155
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTimeStr:Ljava/lang/String;

    .line 157
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    .end local v2    # "ms":J
    :cond_0
    iget-object v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTimeStr:Ljava/lang/String;

    return-object v4
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 292
    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 294
    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    .line 295
    .local v0, "strKey":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    .line 296
    :cond_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v1

    iget v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/easyview/table/RecordTable;->getVideoPath(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    .line 298
    .end local v0    # "strKey":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    return-object v1
.end method

.method public isCanSel()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_can_sel:Z

    return v0
.end method

.method public isDowning()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_downing:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_selected:Z

    return v0
.end method

.method public recycleBitmap()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public remove()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 236
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventType:I

    iget v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/easyview/table/EventTable;->delEvent(Ljava/lang/String;II)Z

    .line 237
    iget v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventType:I

    const/16 v3, 0x201

    if-ne v2, v3, :cond_2

    .line 239
    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    .line 240
    .local v1, "strKey":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->devID:Ljava/lang/String;

    .line 241
    :cond_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    iget v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/easyview/table/RecordTable;->getHaveVideo(Ljava/lang/String;III)I

    move-result v2

    iput v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    .line 242
    iget v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    if-ne v2, v6, :cond_1

    .line 244
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    iget v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/easyview/table/RecordTable;->getVideoPath(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    const-string v2, "EventBean"

    const-string v3, "del video:%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lobject/p2pipcam/bean/EventDetailBean;->videoPath:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 251
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    iget v3, p0, Lobject/p2pipcam/bean/EventDetailBean;->fileID:I

    iget v4, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/easyview/table/RecordTable;->delete(Ljava/lang/String;II)Z

    .line 253
    .end local v1    # "strKey":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lobject/p2pipcam/bean/EventDetailBean;->removePicture()V

    .line 254
    return-void
.end method

.method public removePicture()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 257
    iget v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->havePicture:I

    if-ne v1, v3, :cond_0

    .line 259
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "EventBean"

    const-string v2, "del picture:%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 265
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public setCamName(Ljava/lang/String;)V
    .locals 0
    .param p1, "camName"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->camName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setCanSel(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_can_sel:Z

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_selected:Z

    .line 317
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->content:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setCreatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createtime"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->createtime:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setEndTime(I)V
    .locals 0
    .param p1, "endTime"    # I

    .prologue
    .line 111
    iput p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->endTime:I

    .line 112
    return-void
.end method

.method public setEventIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 67
    iput p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventIndex:I

    .line 68
    return-void
.end method

.method public setEventTime(I)V
    .locals 0
    .param p1, "eventTime"    # I

    .prologue
    .line 104
    iput p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventTime:I

    .line 105
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 96
    iput p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->eventType:I

    .line 97
    return-void
.end method

.method public setHaveLocalVideo(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 288
    iput p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->haveLocalVideo:I

    .line 289
    return-void
.end method

.method public setHavePicture(I)V
    .locals 0
    .param p1, "havePicture"    # I

    .prologue
    .line 74
    iput p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->havePicture:I

    .line 75
    return-void
.end method

.method public setIsDowning(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_downing:Z

    .line 308
    return-void
.end method

.method public setPicturePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "picturePath"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->picturePath:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .param p1, "recordIndex"    # I

    .prologue
    .line 58
    iput p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->recordIndex:I

    .line 59
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lobject/p2pipcam/bean/EventDetailBean;->is_selected:Z

    .line 325
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlarmLogBean [camName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->camName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", did="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/EventDetailBean;->createtime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
