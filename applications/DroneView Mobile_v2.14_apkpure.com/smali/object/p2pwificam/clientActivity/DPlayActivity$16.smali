.class Lobject/p2pwificam/clientActivity/DPlayActivity$16;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICameraSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;->connectDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$16;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSearch(Lcom/easyview/basecamera/CameraSearchInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/easyview/basecamera/CameraSearchInfo;

    .prologue
    .line 679
    iget-object v0, p1, Lcom/easyview/basecamera/CameraSearchInfo;->ID:Ljava/lang/String;

    const-string v1, "PPCS-000000-MYGXJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "DPlay"

    const-string v1, "Find Camera"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$16;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findCamera:Z

    .line 684
    :cond_0
    return-void
.end method
