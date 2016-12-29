.class Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;
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
    name = "MyOnTouchListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lobject/p2pipcam/adapter/CameraListAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 286
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->position:I

    .line 288
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    return v3

    .line 295
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080098

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    invoke-static {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->access$0(Lobject/p2pipcam/adapter/CameraListAdapter;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    move-result-object v1

    iget v2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->position:I

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showSetting(I)V

    .line 296
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080099

    if-ne v1, v2, :cond_2

    move-object v0, p1

    .line 298
    check-cast v0, Landroid/widget/ImageButton;

    .line 299
    .local v0, "btn":Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 300
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 301
    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    invoke-static {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->access$0(Lobject/p2pipcam/adapter/CameraListAdapter;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    move-result-object v1

    iget v2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->position:I

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->setAlarm(I)V

    .line 303
    .end local v0    # "btn":Landroid/widget/ImageButton;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08009a

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    invoke-static {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->access$0(Lobject/p2pipcam/adapter/CameraListAdapter;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    move-result-object v1

    iget v2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;->position:I

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showLightView(I)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
