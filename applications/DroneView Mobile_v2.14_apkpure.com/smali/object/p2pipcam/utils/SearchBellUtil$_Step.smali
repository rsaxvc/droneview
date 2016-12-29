.class final enum Lobject/p2pipcam/utils/SearchBellUtil$_Step;
.super Ljava/lang/Enum;
.source "SearchBellUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/SearchBellUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "_Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lobject/p2pipcam/utils/SearchBellUtil$_Step;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECT_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

.field private static final synthetic ENUM$VALUES:[Lobject/p2pipcam/utils/SearchBellUtil$_Step;

.field public static final enum SEARCH_AP:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

.field public static final enum SEARCH_AP_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

.field public static final enum SEARCH_WIFI_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    const-string v1, "CONNECT_DEV"

    invoke-direct {v0, v1, v2}, Lobject/p2pipcam/utils/SearchBellUtil$_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->CONNECT_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    .line 24
    new-instance v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    const-string v1, "SEARCH_WIFI_DEV"

    invoke-direct {v0, v1, v3}, Lobject/p2pipcam/utils/SearchBellUtil$_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->SEARCH_WIFI_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    .line 25
    new-instance v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    const-string v1, "SEARCH_AP"

    invoke-direct {v0, v1, v4}, Lobject/p2pipcam/utils/SearchBellUtil$_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->SEARCH_AP:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    .line 26
    new-instance v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    const-string v1, "SEARCH_AP_DEV"

    invoke-direct {v0, v1, v5}, Lobject/p2pipcam/utils/SearchBellUtil$_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->SEARCH_AP_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    sget-object v1, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->CONNECT_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    aput-object v1, v0, v2

    sget-object v1, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->SEARCH_WIFI_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    aput-object v1, v0, v3

    sget-object v1, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->SEARCH_AP:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    aput-object v1, v0, v4

    sget-object v1, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->SEARCH_AP_DEV:Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    aput-object v1, v0, v5

    sput-object v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->ENUM$VALUES:[Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lobject/p2pipcam/utils/SearchBellUtil$_Step;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    return-object v0
.end method

.method public static values()[Lobject/p2pipcam/utils/SearchBellUtil$_Step;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lobject/p2pipcam/utils/SearchBellUtil$_Step;->ENUM$VALUES:[Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    array-length v1, v0

    new-array v2, v1, [Lobject/p2pipcam/utils/SearchBellUtil$_Step;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
