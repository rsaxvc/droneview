.class Lcom/tencent/android/tpush/service/ac;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/ac;->a:Ljava/lang/String;

    .line 288
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/android/tpush/service/ac;->b:F

    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/ac;->c:J

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/android/tpush/service/ac;)I
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/tencent/android/tpush/service/ac;->b:F

    iget v1, p1, Lcom/tencent/android/tpush/service/ac;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 297
    const/4 v0, -0x1

    .line 301
    :goto_0
    return v0

    .line 298
    :cond_0
    iget v0, p0, Lcom/tencent/android/tpush/service/ac;->b:F

    iget v1, p1, Lcom/tencent/android/tpush/service/ac;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 286
    check-cast p1, Lcom/tencent/android/tpush/service/ac;

    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/ac;->a(Lcom/tencent/android/tpush/service/ac;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const-string v1, "pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/ac;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",accid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/ac;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/service/ac;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
