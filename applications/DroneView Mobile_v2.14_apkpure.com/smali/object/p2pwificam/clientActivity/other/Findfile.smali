.class public Lobject/p2pwificam/clientActivity/other/Findfile;
.super Ljava/lang/Object;
.source "Findfile.java"


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "init"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/Findfile;->list:Ljava/util/List;

    .line 15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/Findfile;->start(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public Find(Ljava/lang/String;)V
    .locals 5
    .param p1, "xx"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/io/File;

    .line 55
    .local v1, "files":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 56
    array-length v3, v1

    if-nez v3, :cond_1

    .line 71
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    return-void

    .line 58
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 60
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/Findfile;->list:Ljava/util/List;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/other/Findfile;->Find(Ljava/lang/String;)V

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/Findfile;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/Findfile;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;)V
    .locals 5
    .param p1, "yiji"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/io/File;

    .line 24
    .local v1, "files":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 25
    array-length v3, v1

    if-nez v3, :cond_1

    .line 41
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    return-void

    .line 27
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 29
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/Findfile;->list:Ljava/util/List;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/other/Findfile;->Find(Ljava/lang/String;)V

    .line 27
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
