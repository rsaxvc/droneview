.class final enum Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;
.super Ljava/lang/Enum;
.source "DeviceInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DeviceInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Config_Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COINFIG_FAIL:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field public static final enum CONFIG_FINISH:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field public static final enum CONFIG_WIFI:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field public static final enum CONNECT_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field public static final enum CONNECT_NET:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field private static final synthetic ENUM$VALUES:[Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field public static final enum FIND_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field public static final enum SEARCH_AP:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

.field public static final enum SEARCH_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "SEARCH_AP"

    invoke-direct {v0, v1, v3}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->SEARCH_AP:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 176
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "CONNECT_DEV"

    invoke-direct {v0, v1, v4}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONNECT_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 177
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "SEARCH_DEV"

    invoke-direct {v0, v1, v5}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->SEARCH_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 178
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "CONFIG_WIFI"

    invoke-direct {v0, v1, v6}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONFIG_WIFI:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 179
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "CONNECT_NET"

    invoke-direct {v0, v1, v7}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONNECT_NET:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 180
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "FIND_DEV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->FIND_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 181
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "COINFIG_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->COINFIG_FAIL:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 182
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    const-string v1, "CONFIG_FINISH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONFIG_FINISH:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 174
    const/16 v0, 0x8

    new-array v0, v0, [Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->SEARCH_AP:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v1, v0, v3

    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONNECT_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v1, v0, v4

    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->SEARCH_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v1, v0, v5

    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONFIG_WIFI:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v1, v0, v6

    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONNECT_NET:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->FIND_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->COINFIG_FAIL:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONFIG_FINISH:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    aput-object v2, v0, v1

    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ENUM$VALUES:[Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    return-object v0
.end method

.method public static values()[Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ENUM$VALUES:[Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    array-length v1, v0

    new-array v2, v1, [Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
