.class public final enum Lcom/easyview/ndt/LogUtil$LogType;
.super Ljava/lang/Enum;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easyview/ndt/LogUtil$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/easyview/ndt/LogUtil$LogType;

.field public static final enum d:Lcom/easyview/ndt/LogUtil$LogType;

.field public static final enum e:Lcom/easyview/ndt/LogUtil$LogType;

.field public static final enum i:Lcom/easyview/ndt/LogUtil$LogType;

.field public static final enum v:Lcom/easyview/ndt/LogUtil$LogType;

.field public static final enum w:Lcom/easyview/ndt/LogUtil$LogType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/easyview/ndt/LogUtil$LogType;

    const-string v1, "v"

    invoke-direct {v0, v1, v2, v2}, Lcom/easyview/ndt/LogUtil$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/easyview/ndt/LogUtil$LogType;->v:Lcom/easyview/ndt/LogUtil$LogType;

    .line 32
    new-instance v0, Lcom/easyview/ndt/LogUtil$LogType;

    const-string v1, "d"

    invoke-direct {v0, v1, v3, v3}, Lcom/easyview/ndt/LogUtil$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/easyview/ndt/LogUtil$LogType;->d:Lcom/easyview/ndt/LogUtil$LogType;

    .line 33
    new-instance v0, Lcom/easyview/ndt/LogUtil$LogType;

    const-string v1, "i"

    invoke-direct {v0, v1, v4, v4}, Lcom/easyview/ndt/LogUtil$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/easyview/ndt/LogUtil$LogType;->i:Lcom/easyview/ndt/LogUtil$LogType;

    .line 34
    new-instance v0, Lcom/easyview/ndt/LogUtil$LogType;

    const-string v1, "w"

    invoke-direct {v0, v1, v5, v5}, Lcom/easyview/ndt/LogUtil$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/easyview/ndt/LogUtil$LogType;->w:Lcom/easyview/ndt/LogUtil$LogType;

    .line 35
    new-instance v0, Lcom/easyview/ndt/LogUtil$LogType;

    const-string v1, "e"

    invoke-direct {v0, v1, v6, v6}, Lcom/easyview/ndt/LogUtil$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/easyview/ndt/LogUtil$LogType;->e:Lcom/easyview/ndt/LogUtil$LogType;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/easyview/ndt/LogUtil$LogType;

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->v:Lcom/easyview/ndt/LogUtil$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->d:Lcom/easyview/ndt/LogUtil$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->i:Lcom/easyview/ndt/LogUtil$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->w:Lcom/easyview/ndt/LogUtil$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/easyview/ndt/LogUtil$LogType;->e:Lcom/easyview/ndt/LogUtil$LogType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/easyview/ndt/LogUtil$LogType;->ENUM$VALUES:[Lcom/easyview/ndt/LogUtil$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "tp"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/easyview/ndt/LogUtil$LogType;->type:I

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easyview/ndt/LogUtil$LogType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/easyview/ndt/LogUtil$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easyview/ndt/LogUtil$LogType;

    return-object v0
.end method

.method public static values()[Lcom/easyview/ndt/LogUtil$LogType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/easyview/ndt/LogUtil$LogType;->ENUM$VALUES:[Lcom/easyview/ndt/LogUtil$LogType;

    array-length v1, v0

    new-array v2, v1, [Lcom/easyview/ndt/LogUtil$LogType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/easyview/ndt/LogUtil$LogType;->type:I

    return v0
.end method
