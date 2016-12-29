.class public Lobject/p2pipcam/bean/FtpBean;
.super Ljava/lang/Object;
.source "FtpBean.java"


# instance fields
.field private dir:Ljava/lang/String;

.field private mode:I

.field private port:I

.field private pwd:Ljava/lang/String;

.field private svr_ftp:Ljava/lang/String;

.field private upload_interval:I

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lobject/p2pipcam/bean/FtpBean;->dir:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lobject/p2pipcam/bean/FtpBean;->mode:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lobject/p2pipcam/bean/FtpBean;->port:I

    return v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lobject/p2pipcam/bean/FtpBean;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSvr_ftp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lobject/p2pipcam/bean/FtpBean;->svr_ftp:Ljava/lang/String;

    return-object v0
.end method

.method public getUpload_interval()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lobject/p2pipcam/bean/FtpBean;->upload_interval:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lobject/p2pipcam/bean/FtpBean;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lobject/p2pipcam/bean/FtpBean;->dir:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 46
    iput p1, p0, Lobject/p2pipcam/bean/FtpBean;->mode:I

    .line 47
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 40
    iput p1, p0, Lobject/p2pipcam/bean/FtpBean;->port:I

    .line 41
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lobject/p2pipcam/bean/FtpBean;->pwd:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSvr_ftp(Ljava/lang/String;)V
    .locals 0
    .param p1, "svr_ftp"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lobject/p2pipcam/bean/FtpBean;->svr_ftp:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setUpload_interval(I)V
    .locals 0
    .param p1, "upload_interval"    # I

    .prologue
    .line 52
    iput p1, p0, Lobject/p2pipcam/bean/FtpBean;->upload_interval:I

    .line 53
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lobject/p2pipcam/bean/FtpBean;->user:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FtpBean [svr_ftp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lobject/p2pipcam/bean/FtpBean;->svr_ftp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/FtpBean;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lobject/p2pipcam/bean/FtpBean;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lobject/p2pipcam/bean/FtpBean;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lobject/p2pipcam/bean/FtpBean;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    const-string v1, ", upload_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lobject/p2pipcam/bean/FtpBean;->upload_interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/FtpBean;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
