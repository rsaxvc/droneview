.class public final Lcom/easyview/common/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/easyview/common/Pair;, "Lcom/easyview/common/Pair<TA;TB;>;"
    .local p1, "first":Ljava/lang/Object;, "TA;"
    .local p2, "second":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/easyview/common/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/easyview/common/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "first":Ljava/lang/Object;, "TA;"
    .local p1, "second":Ljava/lang/Object;, "TB;"
    new-instance v0, Lcom/easyview/common/Pair;

    invoke-direct {v0, p0, p1}, Lcom/easyview/common/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/easyview/common/Pair;, "Lcom/easyview/common/Pair<TA;TB;>;"
    const/4 v1, 0x0

    .line 20
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 27
    check-cast v0, Lcom/easyview/common/Pair;

    .line 28
    .local v0, "other":Lcom/easyview/common/Pair;
    iget-object v2, p0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    iget-object v3, v0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    .line 29
    iget-object v2, p0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    iget-object v3, v0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    :cond_2
    iget-object v2, p0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    iget-object v3, v0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    .line 33
    iget-object v2, p0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    iget-object v3, v0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/easyview/common/Pair;, "Lcom/easyview/common/Pair<TA;TB;>;"
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x7

    .line 43
    .local v0, "hash":I
    iget-object v1, p0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 43
    :goto_0
    add-int/lit16 v0, v1, 0x103

    .line 45
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 46
    return v0

    :cond_1
    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    .local p0, "this":Lcom/easyview/common/Pair;, "Lcom/easyview/common/Pair<TA;TB;>;"
    const-string v0, "Pair[%s,%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/easyview/common/Pair;->first:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/easyview/common/Pair;->second:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
