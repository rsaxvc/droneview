.class Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;
.super Landroid/os/AsyncTask;
.source "AllPicterCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    .line 200
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$12(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-result-object v2

    iget v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->arrayList:Ljava/util/ArrayList;
    invoke-static {}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$11()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$12(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-result-object v2

    iget v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$12(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-result-object v2

    iget v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 207
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    new-instance v1, Lobject/p2pwificam/clientActivity/other/GridAdapter;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    .line 212
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lobject/p2pwificam/clientActivity/other/GridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 211
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$4(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Lobject/p2pwificam/clientActivity/other/GridAdapter;)V

    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$5(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$7(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 215
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    return-void
.end method
