.class public Lobject/p2pipcam/bean/CameraParamsBean;
.super Ljava/lang/Object;
.source "CameraParamsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1a489f74a2dbec0cL


# instance fields
.field private alarm:I

.field private authority:Z

.field private bmp:Landroid/graphics/Bitmap;

.field private did:Ljava/lang/String;

.field private mode:I

.field private motion_sensitivity:I

.field private name:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private selected:Z

.field private status:I

.field private sum:I

.field private sum_pic:I

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarm()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->alarm:I

    return v0
.end method

.method public getBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitivity()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->motion_sensitivity:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->status:I

    return v0
.end method

.method public getSum()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->sum:I

    return v0
.end method

.method public getSum_pic()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->sum_pic:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthority()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->authority:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lobject/p2pipcam/bean/CameraParamsBean;->selected:Z

    return v0
.end method

.method public setAlarm(I)V
    .locals 0
    .param p1, "alarm"    # I

    .prologue
    .line 60
    iput p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->alarm:I

    .line 61
    return-void
.end method

.method public setAuthority(Z)V
    .locals 0
    .param p1, "authority"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->authority:Z

    .line 69
    return-void
.end method

.method public setBmp(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    iput-object p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->bmp:Landroid/graphics/Bitmap;

    .line 77
    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->did:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 45
    iput p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->mode:I

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->name:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->pwd:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->selected:Z

    .line 38
    return-void
.end method

.method public setSensitivity(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 53
    iput p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->motion_sensitivity:I

    .line 54
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 92
    iput p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->status:I

    .line 93
    return-void
.end method

.method public setSum(I)V
    .locals 0
    .param p1, "sum"    # I

    .prologue
    .line 84
    iput p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->sum:I

    .line 85
    return-void
.end method

.method public setSum_pic(I)V
    .locals 0
    .param p1, "sum_pic"    # I

    .prologue
    .line 25
    iput p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->sum_pic:I

    .line 26
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->user:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraParamsBean [did="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/CameraParamsBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
