.class Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread$2;
.super Ljava/lang/Object;
.source "AddCameraActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICameraSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSearch(Lcom/easyview/basecamera/CameraSearchInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/easyview/basecamera/CameraSearchInfo;

    .prologue
    .line 329
    const-string v0, "Camera"

    .line 331
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread$2;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;

    move-result-object v1

    const-string v2, "PPCS"

    iget-object v3, p1, Lcom/easyview/basecamera/CameraSearchInfo;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lobject/p2pipcam/adapter/SearchListAdapter;->AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    return-void
.end method
