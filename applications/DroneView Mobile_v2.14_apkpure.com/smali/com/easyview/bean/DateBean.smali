.class public Lcom/easyview/bean/DateBean;
.super Ljava/lang/Object;
.source "DateBean.java"


# instance fields
.field private now:I

.field private ntp_enable:I

.field private ntp_ser:Ljava/lang/String;

.field private tz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNow()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/easyview/bean/DateBean;->now:I

    return v0
.end method

.method public getNtp_enable()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/easyview/bean/DateBean;->ntp_enable:I

    return v0
.end method

.method public getNtp_ser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/easyview/bean/DateBean;->ntp_ser:Ljava/lang/String;

    return-object v0
.end method

.method public getTz()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/easyview/bean/DateBean;->tz:I

    return v0
.end method

.method public setNow(I)V
    .locals 0
    .param p1, "now"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/easyview/bean/DateBean;->now:I

    .line 13
    return-void
.end method

.method public setNtp_enable(I)V
    .locals 0
    .param p1, "ntp_enable"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/easyview/bean/DateBean;->ntp_enable:I

    .line 25
    return-void
.end method

.method public setNtp_ser(Ljava/lang/String;)V
    .locals 0
    .param p1, "ntp_ser"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/easyview/bean/DateBean;->ntp_ser:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTz(I)V
    .locals 0
    .param p1, "tz"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/easyview/bean/DateBean;->tz:I

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DateBean [now="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/easyview/bean/DateBean;->now:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/DateBean;->tz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ntp_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    iget v1, p0, Lcom/easyview/bean/DateBean;->ntp_enable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ntp_ser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/DateBean;->ntp_ser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
