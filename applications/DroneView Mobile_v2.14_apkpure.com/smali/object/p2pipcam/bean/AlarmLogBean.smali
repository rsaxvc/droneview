.class public Lobject/p2pipcam/bean/AlarmLogBean;
.super Ljava/lang/Object;
.source "AlarmLogBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private camName:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private createtime:Ljava/lang/String;

.field private did:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lobject/p2pipcam/bean/AlarmLogBean;->camName:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lobject/p2pipcam/bean/AlarmLogBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lobject/p2pipcam/bean/AlarmLogBean;->createtime:Ljava/lang/String;

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lobject/p2pipcam/bean/AlarmLogBean;->did:Ljava/lang/String;

    return-object v0
.end method

.method public setCamName(Ljava/lang/String;)V
    .locals 0
    .param p1, "camName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->camName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->content:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCreatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createtime"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->createtime:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->did:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlarmLogBean [camName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->camName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", did="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/AlarmLogBean;->createtime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
