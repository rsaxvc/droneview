.class public Lobject/p2pipcam/utils/CgiUtil;
.super Ljava/lang/Object;
.source "CgiUtil.java"

# interfaces
.implements Lobject/p2pipcam/utils/HttpUtil$HttpResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/CgiUtil$CgiResult;,
        Lobject/p2pipcam/utils/CgiUtil$CmdThread;
    }
.end annotation


# static fields
.field public static final DECODER_CONTROL:I = 0x2

.field public static final GET_CAMERA_PARAMS:I = 0x1

.field private static final MAX_LIST_SIZE:I = 0x32

.field public static final SET_BRIGTHNESS:I = 0x3

.field public static final SET_CONTRAST:I = 0x4

.field private static final STR_CGI:Ljava/lang/String; = "cgi"

.field private static final STR_LOG:Ljava/lang/String; = "CgiUtil"

.field private static final STR_OPERATION:Ljava/lang/String; = "operation"

.field private static final STR_RESULT:Ljava/lang/String; = "result"


# instance fields
.field private bCmdThreadRuning:Z

.field private cgiResult:Lobject/p2pipcam/utils/CgiUtil$CgiResult;

.field private cmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private httpUtil:Lobject/p2pipcam/utils/HttpUtil;

.field private nPort:I

.field private strIpAddr:Ljava/lang/String;

.field private strPwd:Ljava/lang/String;

.field private strUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lobject/p2pipcam/utils/CgiUtil$CgiResult;)V
    .locals 1
    .param p1, "ipaddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "cgiresult"    # Lobject/p2pipcam/utils/CgiUtil$CgiResult;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/CgiUtil;->bCmdThreadRuning:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/utils/CgiUtil;->cmdList:Ljava/util/List;

    .line 32
    new-instance v0, Lobject/p2pipcam/utils/HttpUtil;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/HttpUtil;-><init>(Lobject/p2pipcam/utils/HttpUtil$HttpResult;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/CgiUtil;->httpUtil:Lobject/p2pipcam/utils/HttpUtil;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/utils/CgiUtil;->cgiResult:Lobject/p2pipcam/utils/CgiUtil$CgiResult;

    .line 41
    iput-object p1, p0, Lobject/p2pipcam/utils/CgiUtil;->strIpAddr:Ljava/lang/String;

    .line 42
    iput p2, p0, Lobject/p2pipcam/utils/CgiUtil;->nPort:I

    .line 43
    iput-object p3, p0, Lobject/p2pipcam/utils/CgiUtil;->strUser:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lobject/p2pipcam/utils/CgiUtil;->strPwd:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lobject/p2pipcam/utils/CgiUtil;->cgiResult:Lobject/p2pipcam/utils/CgiUtil$CgiResult;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/utils/CgiUtil;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lobject/p2pipcam/utils/CgiUtil;->bCmdThreadRuning:Z

    return v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/CgiUtil;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lobject/p2pipcam/utils/CgiUtil;->getCMD()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/utils/CgiUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lobject/p2pipcam/utils/CgiUtil;->strIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pipcam/utils/CgiUtil;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lobject/p2pipcam/utils/CgiUtil;->nPort:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/utils/CgiUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lobject/p2pipcam/utils/CgiUtil;->strUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pipcam/utils/CgiUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lobject/p2pipcam/utils/CgiUtil;->strPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pipcam/utils/CgiUtil;)Lobject/p2pipcam/utils/HttpUtil;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lobject/p2pipcam/utils/CgiUtil;->httpUtil:Lobject/p2pipcam/utils/HttpUtil;

    return-object v0
.end method

.method private getCMD()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v2, p0, Lobject/p2pipcam/utils/CgiUtil;->cmdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 63
    iget-object v2, p0, Lobject/p2pipcam/utils/CgiUtil;->cmdList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 64
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v1, "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "cgi"

    const-string v2, "cgi"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "operation"

    const-string v2, "operation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "result"

    const-string v2, "result"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lobject/p2pipcam/utils/CgiUtil;->cmdList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    monitor-exit p0

    .line 71
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "mapItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    :cond_0
    monitor-exit p0

    const/4 v1, 0x0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCameraParams(Ljava/lang/String;)V
    .locals 17
    .param p1, "strResult"    # Ljava/lang/String;

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pipcam/utils/CgiUtil;->cgiResult:Lobject/p2pipcam/utils/CgiUtil$CgiResult;

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, "strResult::"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v14, "var quality=([0-9]{1,3});var vbright=([0-9]{1,3});var vcontrast=([0-9]{1,3});var mode=([0-9]{1,3});var flip=([0-9]{1,3});var framerate=([0-9]{1,3});"

    .line 127
    .local v14, "strPattern":Ljava/lang/String;
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 128
    .local v12, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 129
    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, "resolution":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 133
    .local v15, "vbright":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, "vcontrast":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, "mode":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "flip":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x6

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "framerate":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pipcam/utils/CgiUtil;->cgiResult:Lobject/p2pipcam/utils/CgiUtil$CgiResult;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 144
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 145
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 146
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 147
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 148
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 143
    invoke-interface/range {v1 .. v7}, Lobject/p2pipcam/utils/CgiUtil$CgiResult;->CameraParams(IIIIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addCMD(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "strCGI"    # Ljava/lang/String;
    .param p2, "operation"    # I
    .param p3, "bResult"    # Z

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v1, p0, Lobject/p2pipcam/utils/CgiUtil;->cmdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lobject/p2pipcam/utils/CgiUtil;->cmdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 52
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "cgi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "operation"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "result"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lobject/p2pipcam/utils/CgiUtil;->cmdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit p0

    .line 58
    return-void

    .line 49
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public httpResult(Ljava/lang/String;I)V
    .locals 3
    .param p1, "strResult"    # Ljava/lang/String;
    .param p2, "operation"    # I

    .prologue
    .line 112
    const-string v0, "CgiUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    packed-switch p2, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/CgiUtil;->getCameraParams(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/utils/CgiUtil;->bCmdThreadRuning:Z

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pipcam/utils/CgiUtil$CmdThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pipcam/utils/CgiUtil$CmdThread;-><init>(Lobject/p2pipcam/utils/CgiUtil;Lobject/p2pipcam/utils/CgiUtil$CmdThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/CgiUtil;->bCmdThreadRuning:Z

    .line 82
    return-void
.end method
