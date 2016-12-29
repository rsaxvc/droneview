.class public Lcom/easyview/common/EVTimeZone;
.super Ljava/lang/Object;
.source "EVTimeZone.java"


# instance fields
.field public hour:I

.field public minute:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "h"    # I
    .param p3, "m"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/easyview/common/EVTimeZone;->name:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/easyview/common/EVTimeZone;->hour:I

    .line 10
    iput p3, p0, Lcom/easyview/common/EVTimeZone;->minute:I

    .line 11
    return-void
.end method


# virtual methods
.method public getGMTDiff()I
    .locals 2

    .prologue
    .line 14
    iget v0, p0, Lcom/easyview/common/EVTimeZone;->hour:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/easyview/common/EVTimeZone;->hour:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/easyview/common/EVTimeZone;->minute:I

    add-int/2addr v0, v1

    .line 15
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/easyview/common/EVTimeZone;->hour:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/easyview/common/EVTimeZone;->minute:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
