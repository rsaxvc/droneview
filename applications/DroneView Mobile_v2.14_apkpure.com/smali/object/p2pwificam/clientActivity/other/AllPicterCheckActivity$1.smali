.class Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$1;
.super Ljava/lang/Object;
.source "AllPicterCheckActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$1;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 114
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$1;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    .line 115
    const-class v2, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;

    .line 114
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "did"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "list"

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->arrayList:Ljava/util/ArrayList;
    invoke-static {}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$11()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    const-string v1, "date"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v1, "camera_name"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$1;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    const v3, 0x7f06017e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$1;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    return-void
.end method
