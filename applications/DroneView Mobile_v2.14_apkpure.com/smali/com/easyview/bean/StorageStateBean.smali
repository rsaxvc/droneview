.class public Lcom/easyview/bean/StorageStateBean;
.super Ljava/lang/Object;
.source "StorageStateBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private record_duration:I

.field private record_state:I

.field private remain_bytes:I

.field private total_bytes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordDuration()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/easyview/bean/StorageStateBean;->record_duration:I

    return v0
.end method

.method public getRecordState()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/easyview/bean/StorageStateBean;->record_state:I

    return v0
.end method

.method public getRemainBytes()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/easyview/bean/StorageStateBean;->remain_bytes:I

    return v0
.end method

.method public getTotalBytes()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/easyview/bean/StorageStateBean;->total_bytes:I

    return v0
.end method

.method public setRecordDuration(I)V
    .locals 0
    .param p1, "record_duration"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/easyview/bean/StorageStateBean;->record_duration:I

    .line 39
    return-void
.end method

.method public setRecordState(I)V
    .locals 0
    .param p1, "record_state"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/easyview/bean/StorageStateBean;->record_state:I

    .line 33
    return-void
.end method

.method public setRemainBytes(I)V
    .locals 0
    .param p1, "remain_bytes"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/easyview/bean/StorageStateBean;->remain_bytes:I

    .line 27
    return-void
.end method

.method public setTotalBytes(I)V
    .locals 0
    .param p1, "total_bytes"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/easyview/bean/StorageStateBean;->total_bytes:I

    .line 21
    return-void
.end method
