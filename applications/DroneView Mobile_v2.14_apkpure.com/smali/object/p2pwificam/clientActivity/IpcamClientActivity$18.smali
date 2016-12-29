.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$18;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPlayView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

.field private final synthetic val$bean:Lobject/p2pipcam/bean/CameraParamsBean;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Lobject/p2pipcam/bean/CameraParamsBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$18;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$18;->val$bean:Lobject/p2pipcam/bean/CameraParamsBean;

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$18;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$18;->val$bean:Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getDevInfo(Lobject/p2pipcam/bean/CameraParamsBean;)V

    .line 1172
    return-void
.end method
