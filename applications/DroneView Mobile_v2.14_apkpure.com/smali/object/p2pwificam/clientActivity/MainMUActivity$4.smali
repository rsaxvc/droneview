.class Lobject/p2pwificam/clientActivity/MainMUActivity$4;
.super Ljava/lang/Object;
.source "MainMUActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MainMUActivity;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$4;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$4;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$4(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 256
    return-void
.end method
