.class Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;
.super Ljava/lang/Object;
.source "CameraListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/CameraListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageOnClickListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lobject/p2pipcam/adapter/CameraListAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V
    .locals 0
    .param p2, "p"    # I

    .prologue
    .line 337
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p2, p0, Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;->position:I

    .line 339
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 342
    iget-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    invoke-static {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->access$0(Lobject/p2pipcam/adapter/CameraListAdapter;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    move-result-object v0

    iget v1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;->position:I

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPlayView(I)V

    .line 343
    return-void
.end method
