.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$20;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPopupWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

.field private final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$20;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$20;->val$popupWindow:Landroid/widget/PopupWindow;

    .line 1706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1709
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$20;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->EditDevice()V

    .line 1710
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$20;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1711
    return-void
.end method
