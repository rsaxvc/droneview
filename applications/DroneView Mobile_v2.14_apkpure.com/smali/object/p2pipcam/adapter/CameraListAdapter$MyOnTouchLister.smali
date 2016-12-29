.class Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;
.super Ljava/lang/Object;
.source "CameraListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/CameraListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnTouchLister"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lobject/p2pipcam/adapter/CameraListAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 268
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;->position:I

    .line 270
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    sget-object v1, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 275
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v1

    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->changerCameraStatus(I)V

    .line 276
    const/4 v1, 0x0

    return v1
.end method
