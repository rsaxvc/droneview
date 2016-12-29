.class Lobject/p2pwificam/clientActivity/CameraApplication$1;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CameraApplication;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CameraApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CameraApplication$1;->this$0:Lobject/p2pwificam/clientActivity/CameraApplication;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    const-string v8, "app"

    const-string v9, "uncaughtException"

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "info":Ljava/lang/String;
    const/4 v0, 0x0

    .line 40
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 42
    .local v6, "printStream":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .end local v6    # "printStream":Ljava/io/PrintStream;
    .local v7, "printStream":Ljava/io/PrintStream;
    :try_start_2
    invoke-virtual {p2, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 46
    .local v2, "data":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 52
    .end local v4    # "info":Ljava/lang/String;
    .local v5, "info":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 53
    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 55
    :cond_0
    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v7

    .end local v7    # "printStream":Ljava/io/PrintStream;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 62
    .end local v2    # "data":[B
    .end local v5    # "info":Ljava/lang/String;
    .restart local v4    # "info":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CameraApplication$1;->this$0:Lobject/p2pwificam/clientActivity/CameraApplication;

    invoke-virtual {v8, v4}, Lobject/p2pwificam/clientActivity/CameraApplication;->writeErrorLog(Ljava/lang/String;)V

    .line 67
    return-void

    .line 48
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    if-eqz v6, :cond_2

    .line 53
    :try_start_5
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    .line 55
    :cond_2
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 58
    :catch_1
    move-exception v3

    .line 59
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 52
    :goto_2
    if-eqz v6, :cond_3

    .line 53
    :try_start_6
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    .line 55
    :cond_3
    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 61
    :cond_4
    :goto_3
    throw v8

    .line 58
    :catch_2
    move-exception v3

    .line 59
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 58
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "info":Ljava/lang/String;
    .end local v6    # "printStream":Ljava/io/PrintStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "info":Ljava/lang/String;
    .restart local v7    # "printStream":Ljava/io/PrintStream;
    :catch_3
    move-exception v3

    .line 59
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v6, v7

    .end local v7    # "printStream":Ljava/io/PrintStream;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "info":Ljava/lang/String;
    .restart local v4    # "info":Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "printStream":Ljava/io/PrintStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "printStream":Ljava/io/PrintStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "printStream":Ljava/io/PrintStream;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 48
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "printStream":Ljava/io/PrintStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "printStream":Ljava/io/PrintStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "printStream":Ljava/io/PrintStream;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method
