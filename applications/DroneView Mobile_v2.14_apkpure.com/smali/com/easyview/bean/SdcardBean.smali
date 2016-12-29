.class public Lcom/easyview/bean/SdcardBean;
.super Ljava/lang/Object;
.source "SdcardBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private did:Ljava/lang/String;

.field private record_conver_enable:I

.field private record_mode:I

.field private record_sd_status:I

.field private record_size:I

.field private record_time_enable:I

.field private record_timer:I

.field private sdfree:I

.field private sdtotal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/easyview/bean/SdcardBean;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordMode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->record_mode:I

    return v0
.end method

.method public getRecord_conver_enable()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->record_conver_enable:I

    return v0
.end method

.method public getRecord_sd_status()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->record_sd_status:I

    return v0
.end method

.method public getRecord_size()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->record_size:I

    return v0
.end method

.method public getRecord_time_enable()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->record_time_enable:I

    return v0
.end method

.method public getRecord_timer()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->record_timer:I

    return v0
.end method

.method public getSdfree()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->sdfree:I

    return v0
.end method

.method public getSdtotal()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/easyview/bean/SdcardBean;->sdtotal:I

    return v0
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/easyview/bean/SdcardBean;->did:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setRecordMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->record_mode:I

    .line 91
    return-void
.end method

.method public setRecord_conver_enable(I)V
    .locals 0
    .param p1, "record_conver_enable"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->record_conver_enable:I

    .line 34
    return-void
.end method

.method public setRecord_sd_status(I)V
    .locals 0
    .param p1, "record_sd_status"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->record_sd_status:I

    .line 66
    return-void
.end method

.method public setRecord_size(I)V
    .locals 0
    .param p1, "record_size"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->record_size:I

    .line 50
    return-void
.end method

.method public setRecord_time_enable(I)V
    .locals 0
    .param p1, "record_time_enable"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->record_time_enable:I

    .line 58
    return-void
.end method

.method public setRecord_timer(I)V
    .locals 0
    .param p1, "record_timer"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->record_timer:I

    .line 42
    return-void
.end method

.method public setSdfree(I)V
    .locals 0
    .param p1, "sdfree"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->sdfree:I

    .line 82
    return-void
.end method

.method public setSdtotal(I)V
    .locals 0
    .param p1, "sdtotal"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/easyview/bean/SdcardBean;->sdtotal:I

    .line 74
    return-void
.end method
