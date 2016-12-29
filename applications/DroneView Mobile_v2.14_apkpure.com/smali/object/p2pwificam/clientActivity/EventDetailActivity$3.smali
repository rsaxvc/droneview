.class Lobject/p2pwificam/clientActivity/EventDetailActivity$3;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/EventDetailActivity;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$3;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$3;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$5(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 291
    return-void
.end method
