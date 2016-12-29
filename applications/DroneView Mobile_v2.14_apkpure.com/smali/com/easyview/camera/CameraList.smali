.class public Lcom/easyview/camera/CameraList;
.super Lcom/easyview/basecamera/BaseCameraList;
.source "CameraList.java"


# static fields
.field private static _inst:Lcom/easyview/camera/CameraList;


# instance fields
.field private _listPPCS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/ppcs/PPCSCamera;",
            ">;"
        }
    .end annotation
.end field

.field private _listTUTK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/tutk/TUTKCamera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/easyview/camera/CameraList;

    invoke-direct {v0}, Lcom/easyview/camera/CameraList;-><init>()V

    sput-object v0, Lcom/easyview/camera/CameraList;->_inst:Lcom/easyview/camera/CameraList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/easyview/basecamera/BaseCameraList;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easyview/camera/CameraList;->_listTUTK:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easyview/camera/CameraList;->_listPPCS:Ljava/util/List;

    .line 10
    return-void
.end method

.method public static GetInstance()Lcom/easyview/camera/CameraList;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/easyview/camera/CameraList;->_inst:Lcom/easyview/camera/CameraList;

    return-object v0
.end method


# virtual methods
.method public Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p2}, Lcom/easyview/ppcs/PPCSCamera;->IsValidID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    new-instance v0, Lcom/easyview/ppcs/PPCSCamera;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/easyview/ppcs/PPCSCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    iget-object v1, p0, Lcom/easyview/camera/CameraList;->_listPPCS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-super {p0, v0}, Lcom/easyview/basecamera/BaseCameraList;->Add(Lcom/easyview/basecamera/BaseCamera;)Z

    move-result v1

    .line 33
    .end local v0    # "camera":Lcom/easyview/ppcs/PPCSCamera;
    :goto_0
    return v1

    .line 27
    :cond_0
    invoke-static {p2}, Lcom/easyview/tutk/TUTKCamera;->IsValidID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    new-instance v0, Lcom/easyview/tutk/TUTKCamera;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/easyview/tutk/TUTKCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v0, "camera":Lcom/easyview/tutk/TUTKCamera;
    iget-object v1, p0, Lcom/easyview/camera/CameraList;->_listTUTK:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-super {p0, v0}, Lcom/easyview/basecamera/BaseCameraList;->Add(Lcom/easyview/basecamera/BaseCamera;)Z

    move-result v1

    goto :goto_0

    .line 33
    .end local v0    # "camera":Lcom/easyview/tutk/TUTKCamera;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public CloseAll()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/easyview/camera/CameraList;->_listPPCS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    return-void

    .line 47
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 49
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->Stop()V

    goto :goto_0
.end method

.method public ReConnect()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/easyview/camera/CameraList;->_listPPCS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    return-void

    .line 37
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 39
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->isOnline()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->Start()V

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/easyview/camera/CameraList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCamera(I)Lcom/easyview/camera/EVBaseCamera;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/easyview/camera/CameraList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/easyview/camera/CameraList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/camera/EVBaseCamera;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
