.class Lcom/tencent/android/tpush/stat/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:I

.field b:Lorg/json/JSONObject;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/d;->b:Lorg/json/JSONObject;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/d;->c:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/stat/d;->d:I

    .line 33
    iput p1, p0, Lcom/tencent/android/tpush/stat/d;->a:I

    .line 34
    return-void
.end method
