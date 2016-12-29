.class Lobject/p2pwificam/clientActivity/EventDetailActivity$2$2;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$2(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->removeAll()V

    .line 264
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->finish()V

    .line 265
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$2;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v0

    const v1, 0x7f040006

    const/high16 v2, 0x7f040000

    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->overridePendingTransition(II)V

    .line 266
    return-void
.end method
