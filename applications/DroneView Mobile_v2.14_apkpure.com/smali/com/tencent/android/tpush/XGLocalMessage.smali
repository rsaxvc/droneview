.class public Lcom/tencent/android/tpush/XGLocalMessage;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:J

.field private x:I

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/tencent/android/tpush/XGLocalMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGLocalMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    .line 26
    const-string v0, "00"

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    .line 27
    const-string v0, "00"

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->h:I

    .line 29
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->i:I

    .line 30
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->j:I

    .line 31
    iput v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->k:I

    .line 32
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->l:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->m:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->n:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->o:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->p:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->q:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->r:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->s:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->t:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->u:Ljava/lang/String;

    .line 42
    const-string v0, "{}"

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->v:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->x:I

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->y:J

    return-void
.end method


# virtual methods
.method public getAction_type()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->p:I

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getBuilderId()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->w:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCustom_content()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 216
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 218
    iget-object v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lcom/tencent/android/tpush/XGLocalMessage;->a:Ljava/lang/String;

    const-string v2, "XGLocalMessage.getDate()"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    sget-object v1, Lcom/tencent/android/tpush/XGLocalMessage;->a:Ljava/lang/String;

    const-string v2, "XGLocalMessage.getDate()"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpirationTimeMs()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->y:J

    return-wide v0
.end method

.method public getHour()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 142
    const-string v0, "00"

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon_res()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_type()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->k:I

    return v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getLights()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->j:I

    return v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 167
    const-string v0, "00"

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->x:I

    return v0
.end method

.method public getPackageDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getRing()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->h:I

    return v0
.end method

.method public getRing_raw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_id()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->l:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrate()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->i:I

    return v0
.end method

.method public setAction_type(I)V
    .locals 0

    .prologue
    .line 358
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->p:I

    .line 359
    return-void
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->q:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setBuilderId(J)V
    .locals 0

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->w:J

    .line 202
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCustomContent(Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->v:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setExpirationTimeMs(J)V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 55
    iput-wide p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->y:J

    .line 57
    :cond_0
    return-void
.end method

.method public setHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setIcon_res(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->n:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setIcon_type(I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->k:I

    .line 289
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->s:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setLights(I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->j:I

    .line 275
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setNotificationId(I)V
    .locals 0

    .prologue
    .line 447
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->x:I

    .line 448
    return-void
.end method

.method public setPackageDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->t:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->u:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setRing(I)V
    .locals 0

    .prologue
    .line 246
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->h:I

    .line 247
    return-void
.end method

.method public setRing_raw(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->m:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setSmall_icon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->o:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setStyle_id(I)V
    .locals 0

    .prologue
    .line 302
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->l:I

    .line 303
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    .line 76
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->r:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setVibrate(I)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->i:I

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    const-string v1, "XGLocalMessage [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", builderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->w:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
