.class Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;
.super Landroid/os/AsyncTask;
.source "AllVideoCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->access$0(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->access$1(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-result-object v3

    iget v3, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lobject/p2pipcam/bean/MovieInfo;

    .line 113
    invoke-virtual {v2}, Lobject/p2pipcam/bean/MovieInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 115
    .local v1, "b":Z
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->access$0(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->access$1(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-result-object v3

    iget v3, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 120
    const/4 v0, 0x1

    sput v0, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 121
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->adapter:Lobject/p2pipcam/adapter/AllVideoListAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->access$2(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Lobject/p2pipcam/adapter/AllVideoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/AllVideoListAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 122
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method
