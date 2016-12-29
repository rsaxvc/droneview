.class public Lobject/p2pipcam/bean/MovieInfo;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public camerName:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public displayName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public videoName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCamerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lobject/p2pipcam/bean/MovieInfo;->camerName:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lobject/p2pipcam/bean/MovieInfo;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lobject/p2pipcam/bean/MovieInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pipcam/bean/MovieInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lobject/p2pipcam/bean/MovieInfo;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lobject/p2pipcam/bean/MovieInfo;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method public setCamerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "camerName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lobject/p2pipcam/bean/MovieInfo;->camerName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 85
    iput-object p1, p0, Lobject/p2pipcam/bean/MovieInfo;->date:Ljava/util/Date;

    .line 86
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lobject/p2pipcam/bean/MovieInfo;->displayName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lobject/p2pipcam/bean/MovieInfo;->path:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lobject/p2pipcam/bean/MovieInfo;->size:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setVideoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lobject/p2pipcam/bean/MovieInfo;->videoName:Ljava/lang/String;

    .line 25
    return-void
.end method
