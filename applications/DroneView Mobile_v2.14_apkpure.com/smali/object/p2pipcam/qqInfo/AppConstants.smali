.class public Lobject/p2pipcam/qqInfo/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/qqInfo/AppConstants$ShowMsgActivity;
    }
.end annotation


# static fields
.field public static APP_ID:Ljava/lang/String; = null

.field public static final WX_ACTION:Ljava/lang/String; = "action"

.field public static final WX_ACTION_INVITE:Ljava/lang/String; = "invite"

.field public static final WX_APP_ID:Ljava/lang/String; = "wx8e8dc60535c9cd93"

.field public static final WX_RESULT:Ljava/lang/String; = "result"

.field public static final WX_RESULT_CODE:Ljava/lang/String; = "ret"

.field public static final WX_RESULT_MSG:Ljava/lang/String; = "msg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "222222"

    sput-object v0, Lobject/p2pipcam/qqInfo/AppConstants;->APP_ID:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
