.class final Lcom/google/zxing/client/result/URLTOResultParser;
.super Ljava/lang/Object;
.source "URLTOResultParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 6
    .param p0, "result"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x6

    .line 34
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "rawText":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "urlto:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "URLTO:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v1

    .line 38
    :cond_1
    const/16 v4, 0x3a

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 39
    .local v2, "titleEnd":I
    if-ltz v2, :cond_0

    .line 42
    if-gt v2, v5, :cond_2

    .line 43
    .local v1, "title":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "uri":Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v4, v3, v1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_0

    .line 42
    .end local v1    # "title":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
