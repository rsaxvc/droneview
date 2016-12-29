.class final enum Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DONE:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

.field private static final synthetic ENUM$VALUES:[Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->PREVIEW:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 48
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->SUCCESS:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 49
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->DONE:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->PREVIEW:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->SUCCESS:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->DONE:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->ENUM$VALUES:[Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    return-object v0
.end method

.method public static values()[Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;->ENUM$VALUES:[Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    array-length v1, v0

    new-array v2, v1, [Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
