.class public Lcom/tencent/android/tpush/service/channel/security/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/tencent/android/tpush/service/channel/security/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/security/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/android/tpush/service/channel/security/a;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/android/tpush/service/channel/security/a;->a([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BIII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v1, Lcom/tencent/android/tpush/service/channel/security/c;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/tencent/android/tpush/service/channel/security/c;-><init>(I[B)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/channel/security/c;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget v0, v1, Lcom/tencent/android/tpush/service/channel/security/c;->b:I

    iget-object v2, v1, Lcom/tencent/android/tpush/service/channel/security/c;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 153
    iget-object v0, v1, Lcom/tencent/android/tpush/service/channel/security/c;->a:[B

    .line 160
    :goto_0
    return-object v0

    .line 158
    :cond_1
    iget v0, v1, Lcom/tencent/android/tpush/service/channel/security/c;->b:I

    new-array v0, v0, [B

    .line 159
    iget-object v2, v1, Lcom/tencent/android/tpush/service/channel/security/c;->a:[B

    iget v1, v1, Lcom/tencent/android/tpush/service/channel/security/c;->b:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
