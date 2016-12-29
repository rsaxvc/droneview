.class Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$1;
.super Ljava/lang/Object;
.source "AllVideoCheckActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$1;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$1;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->access$0(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/MovieInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "bpath":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "it":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 76
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "video/avi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$1;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    invoke-virtual {v3, v1}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
