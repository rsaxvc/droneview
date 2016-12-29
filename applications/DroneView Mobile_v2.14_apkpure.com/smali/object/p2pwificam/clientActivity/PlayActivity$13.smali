.class Lobject/p2pwificam/clientActivity/PlayActivity$13;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$13;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 2701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2704
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$13;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->doSnap()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 2705
    return-void
.end method
