.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$2;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IAlarmParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$2;->this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAlarmParam(Lcom/easyview/basecamera/ICamera;Lcom/easyview/bean/AlermBean;)V
    .locals 0
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "bean"    # Lcom/easyview/bean/AlermBean;

    .prologue
    .line 554
    invoke-virtual {p2}, Lcom/easyview/bean/AlermBean;->getMotion_armed()I

    .line 560
    return-void
.end method
