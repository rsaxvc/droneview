.class public Lobject/p2pipcam/bean/PlayBackBean;
.super Ljava/lang/Object;
.source "PlayBackBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private did:Ljava/lang/String;

.field private path:Ljava/lang/String;


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
    .line 14
    iget-object v0, p0, Lobject/p2pipcam/bean/PlayBackBean;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lobject/p2pipcam/bean/PlayBackBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lobject/p2pipcam/bean/PlayBackBean;->did:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lobject/p2pipcam/bean/PlayBackBean;->path:Ljava/lang/String;

    .line 27
    return-void
.end method
