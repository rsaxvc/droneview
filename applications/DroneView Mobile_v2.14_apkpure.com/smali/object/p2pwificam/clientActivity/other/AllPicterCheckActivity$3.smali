.class Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$3;
.super Ljava/lang/Object;
.source "AllPicterCheckActivity.java"

# interfaces
.implements Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;


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
        "Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;-><init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method
