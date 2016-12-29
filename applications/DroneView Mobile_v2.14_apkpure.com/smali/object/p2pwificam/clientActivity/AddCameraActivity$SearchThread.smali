.class Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;
.super Ljava/lang/Object;
.source "AddCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;)Lobject/p2pwificam/clientActivity/AddCameraActivity;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 307
    const-string v5, "tag"

    const-string v6, "startSearch"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "supportTUTK":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 311
    new-instance v5, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread$1;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread$1;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;)V

    invoke-static {v5}, Lcom/easyview/tutk/TUTKCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;)V

    .line 319
    :cond_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    const-string v6, "camera_info"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 320
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string v5, "camera_user"

    const-string v6, "admin"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "cameraUser":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "searchPort":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, "port":I
    sput-object v0, Lcom/easyview/ppcs/PPCSCamera;->CameraUser:Ljava/lang/String;

    .line 325
    new-instance v5, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread$2;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread$2;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;)V

    invoke-static {v5, v1}, Lcom/easyview/ppcs/PPCSCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;I)V

    .line 336
    return-void
.end method
