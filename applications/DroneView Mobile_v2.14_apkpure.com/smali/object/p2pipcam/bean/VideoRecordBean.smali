.class public Lobject/p2pipcam/bean/VideoRecordBean;
.super Ljava/lang/Object;
.source "VideoRecordBean.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private height:I

.field private length:[B

.field private picture:[B

.field private time:[B

.field private tspan:I

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->height:I

    return v0
.end method

.method public getLength()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->length:[B

    return-object v0
.end method

.method public getPicture()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->picture:[B

    return-object v0
.end method

.method public getTime()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->time:[B

    return-object v0
.end method

.method public getTspan()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->tspan:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lobject/p2pipcam/bean/VideoRecordBean;->width:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    iput-object p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->bitmap:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 37
    iput p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->height:I

    .line 38
    return-void
.end method

.method public setLength([B)V
    .locals 0
    .param p1, "length"    # [B

    .prologue
    .line 61
    iput-object p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->length:[B

    .line 62
    return-void
.end method

.method public setPicture([B)V
    .locals 0
    .param p1, "picture"    # [B

    .prologue
    .line 77
    iput-object p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->picture:[B

    .line 78
    return-void
.end method

.method public setTime([B)V
    .locals 0
    .param p1, "time"    # [B

    .prologue
    .line 69
    iput-object p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->time:[B

    .line 70
    return-void
.end method

.method public setTspan(I)V
    .locals 0
    .param p1, "tspan"    # I

    .prologue
    .line 53
    iput p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->tspan:I

    .line 54
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 21
    iput p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->type:I

    .line 22
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 29
    iput p1, p0, Lobject/p2pipcam/bean/VideoRecordBean;->width:I

    .line 30
    return-void
.end method
