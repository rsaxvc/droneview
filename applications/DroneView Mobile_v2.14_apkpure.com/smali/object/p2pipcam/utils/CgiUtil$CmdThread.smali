.class Lobject/p2pipcam/utils/CgiUtil$CmdThread;
.super Ljava/lang/Object;
.source "CgiUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/CgiUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/CgiUtil;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/utils/CgiUtil;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/utils/CgiUtil;Lobject/p2pipcam/utils/CgiUtil$CmdThread;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/CgiUtil$CmdThread;-><init>(Lobject/p2pipcam/utils/CgiUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 88
    :goto_0
    iget-object v6, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    # getter for: Lobject/p2pipcam/utils/CgiUtil;->bCmdThreadRuning:Z
    invoke-static {v6}, Lobject/p2pipcam/utils/CgiUtil;->access$0(Lobject/p2pipcam/utils/CgiUtil;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 106
    :goto_1
    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v6, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    # invokes: Lobject/p2pipcam/utils/CgiUtil;->getCMD()Ljava/util/Map;
    invoke-static {v6}, Lobject/p2pipcam/utils/CgiUtil;->access$1(Lobject/p2pipcam/utils/CgiUtil;)Ljava/util/Map;

    move-result-object v2

    .line 91
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 92
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 102
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v6, "cgi"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    .local v4, "strCGI":Ljava/lang/String;
    const-string v6, "operation"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 97
    .local v3, "oper":I
    const-string v6, "result"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 98
    .local v0, "bRes":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    # getter for: Lobject/p2pipcam/utils/CgiUtil;->strIpAddr:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pipcam/utils/CgiUtil;->access$2(Lobject/p2pipcam/utils/CgiUtil;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    # getter for: Lobject/p2pipcam/utils/CgiUtil;->nPort:I
    invoke-static {v7}, Lobject/p2pipcam/utils/CgiUtil;->access$3(Lobject/p2pipcam/utils/CgiUtil;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 99
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    # getter for: Lobject/p2pipcam/utils/CgiUtil;->strUser:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pipcam/utils/CgiUtil;->access$4(Lobject/p2pipcam/utils/CgiUtil;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&pwd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    # getter for: Lobject/p2pipcam/utils/CgiUtil;->strPwd:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pipcam/utils/CgiUtil;->access$5(Lobject/p2pipcam/utils/CgiUtil;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "strUrl":Ljava/lang/String;
    const-string v6, "CgiUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "strUrl: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v6, p0, Lobject/p2pipcam/utils/CgiUtil$CmdThread;->this$0:Lobject/p2pipcam/utils/CgiUtil;

    # getter for: Lobject/p2pipcam/utils/CgiUtil;->httpUtil:Lobject/p2pipcam/utils/HttpUtil;
    invoke-static {v6}, Lobject/p2pipcam/utils/CgiUtil;->access$6(Lobject/p2pipcam/utils/CgiUtil;)Lobject/p2pipcam/utils/HttpUtil;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v0}, Lobject/p2pipcam/utils/HttpUtil;->send_get_request(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
