.class public Lcom/easyview/common/CgiUtils;
.super Ljava/lang/Object;
.source "CgiUtils.java"


# instance fields
.field private _info:Lcom/easyview/common/EV_NetInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parsePathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 58
    move-object v1, p1

    .line 59
    .local v1, "str":Ljava/lang/String;
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "k":I
    if-ne v0, v3, :cond_0

    .line 65
    .end local p1    # "result":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 61
    .restart local p1    # "result":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    if-ne v0, v3, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 65
    goto :goto_0
.end method


# virtual methods
.method public ConfigWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "keytype"    # I

    .prologue
    const/4 v6, 0x1

    .line 42
    const-string v3, "http://%s/cgi-bin/setwifiattr.cgi?-cmd=setwifiattr&-wktype=%d&-wepid=0&-enable=1&-ssid=%s&-key=%s&-checkname=admin&-checkpasswd=YWRtaW4%%3D&"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 43
    aput-object p1, v4, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    .line 42
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "u":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v1    # "u":Ljava/net/URL;
    :goto_0
    return v6

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public GetSnapFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v7, "http://%s/cgi-bin/hi3510/param.cgi?cmd=snap&"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 21
    .local v6, "url":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    .local v5, "u":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 23
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 24
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "result":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/easyview/common/CgiUtils;->parsePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    .line 37
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "u":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 37
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    .line 35
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public SetInfo(Lcom/easyview/common/EV_NetInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/easyview/common/EV_NetInfo;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/easyview/common/CgiUtils;->_info:Lcom/easyview/common/EV_NetInfo;

    .line 16
    return-void
.end method
