.class Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;
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
    name = "SnapOnTouchListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lobject/p2pipcam/adapter/CameraListAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 317
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;->position:I

    .line 319
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 326
    :pswitch_0
    iget-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    invoke-static {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->access$0(Lobject/p2pipcam/adapter/CameraListAdapter;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    move-result-object v0

    iget v1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;->position:I

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPlayView(I)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
