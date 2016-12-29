.class Lobject/p2pwificam/clientActivity/AddCameraActivity$2$1;
.super Ljava/lang/Object;
.source "AddCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity$2;)Lobject/p2pwificam/clientActivity/AddCameraActivity;

    move-result-object v0

    # invokes: Lobject/p2pwificam/clientActivity/AddCameraActivity;->startSearch()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$8(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    .line 227
    return-void
.end method
