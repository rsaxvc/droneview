.class public Lcom/easyview/basecamera/QueryFunction;
.super Ljava/lang/Object;
.source "QueryFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/basecamera/QueryFunction$IFunction;
    }
.end annotation


# instance fields
.field private _function:Lcom/easyview/basecamera/QueryFunction$IFunction;

.field private _handler:Landroid/os/Handler;

.field private _respond:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private _runnable:Ljava/lang/Runnable;

.field private _timeout:I

.field respond:Lcom/easyview/basecamera/ICamera$IRespondListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/easyview/basecamera/QueryFunction;->_timeout:I

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->_handler:Landroid/os/Handler;

    .line 16
    iput-object v1, p0, Lcom/easyview/basecamera/QueryFunction;->_function:Lcom/easyview/basecamera/QueryFunction$IFunction;

    .line 17
    iput-object v1, p0, Lcom/easyview/basecamera/QueryFunction;->_respond:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 38
    new-instance v0, Lcom/easyview/basecamera/QueryFunction$1;

    invoke-direct {v0, p0}, Lcom/easyview/basecamera/QueryFunction$1;-><init>(Lcom/easyview/basecamera/QueryFunction;)V

    iput-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->_runnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/easyview/basecamera/QueryFunction$2;

    invoke-direct {v0, p0}, Lcom/easyview/basecamera/QueryFunction$2;-><init>(Lcom/easyview/basecamera/QueryFunction;)V

    iput-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->respond:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 8
    return-void
.end method

.method static synthetic access$0(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/QueryFunction$IFunction;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->_function:Lcom/easyview/basecamera/QueryFunction$IFunction;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easyview/basecamera/QueryFunction;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easyview/basecamera/QueryFunction;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->_runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/easyview/basecamera/QueryFunction;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/easyview/basecamera/QueryFunction;->_timeout:I

    return v0
.end method

.method static synthetic access$4(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/ICamera$IRespondListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->_respond:Lcom/easyview/basecamera/ICamera$IRespondListener;

    return-object v0
.end method


# virtual methods
.method public Start(Lcom/easyview/basecamera/QueryFunction$IFunction;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "func"    # Lcom/easyview/basecamera/QueryFunction$IFunction;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/easyview/basecamera/QueryFunction;->_function:Lcom/easyview/basecamera/QueryFunction$IFunction;

    .line 21
    iput-object p2, p0, Lcom/easyview/basecamera/QueryFunction;->_respond:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 22
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/easyview/basecamera/QueryFunction;->_runnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/easyview/basecamera/QueryFunction;->_timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    return-void
.end method

.method public Start(Ljava/lang/Object;Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 37
    return-void
.end method
