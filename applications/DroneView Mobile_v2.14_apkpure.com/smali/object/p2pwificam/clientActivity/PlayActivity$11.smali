.class Lobject/p2pwificam/clientActivity/PlayActivity$11;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 2683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2686
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightSound:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$61(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$60(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2687
    return-void
.end method
