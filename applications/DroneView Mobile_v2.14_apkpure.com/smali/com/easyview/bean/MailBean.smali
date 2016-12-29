.class public Lcom/easyview/bean/MailBean;
.super Ljava/lang/Object;
.source "MailBean.java"


# instance fields
.field private auth:I

.field private isChecked:Z

.field private port:I

.field private pwd:Ljava/lang/String;

.field private receiver1:Ljava/lang/String;

.field private receiver2:Ljava/lang/String;

.field private receiver3:Ljava/lang/String;

.field private receiver4:Ljava/lang/String;

.field private sender:Ljava/lang/String;

.field private ssl:I

.field private svr:Ljava/lang/String;

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
.method public getAuth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/easyview/bean/MailBean;->auth:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/easyview/bean/MailBean;->port:I

    return v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->receiver1:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->receiver2:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->receiver3:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->receiver4:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getSsl()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/easyview/bean/MailBean;->ssl:I

    return v0
.end method

.method public getSvr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->svr:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/easyview/bean/MailBean;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/easyview/bean/MailBean;->isChecked:Z

    return v0
.end method

.method public setAuth(I)V
    .locals 0
    .param p1, "auth"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/easyview/bean/MailBean;->auth:I

    .line 95
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/easyview/bean/MailBean;->isChecked:Z

    .line 22
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/easyview/bean/MailBean;->port:I

    .line 40
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->pwd:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setReceiver1(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiver1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->receiver1:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setReceiver2(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiver2"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->receiver2:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setReceiver3(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiver3"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->receiver3:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setReceiver4(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiver4"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->receiver4:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->sender:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSsl(I)V
    .locals 0
    .param p1, "ssl"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/easyview/bean/MailBean;->ssl:I

    .line 52
    return-void
.end method

.method public setSvr(Ljava/lang/String;)V
    .locals 0
    .param p1, "svr"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->svr:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/easyview/bean/MailBean;->user:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailBean [svr="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->svr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/MailBean;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string v1, ", pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/MailBean;->ssl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->sender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/MailBean;->auth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string v1, ", receiver1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->receiver1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiver2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->receiver2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, ", receiver3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->receiver3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiver4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/MailBean;->receiver4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
