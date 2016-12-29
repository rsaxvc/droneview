.class public Lobject/p2pwificam/clientActivity/LocalVideoListActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "LocalVideoListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private back:Landroid/widget/Button;

.field private cameraName:Ljava/lang/String;

.field private childMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private isFirstStart:Z

.field private mAdapter:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

.field private mListView:Landroid/widget/ListView;

.field private strDID:Ljava/lang/String;

.field private tvCameraName:Landroid/widget/TextView;

.field private tvNoVideo:Landroid/widget/TextView;

.field private wh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 35
    const-string v0, "LocalVideoListActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->isFirstStart:Z

    .line 33
    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 90
    const v1, 0x7f080145

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, "tvTitle":Landroid/widget/TextView;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->cameraName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v1, 0x7f080146

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mListView:Landroid/widget/ListView;

    .line 93
    const v1, 0x7f080147

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->tvNoVideo:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->tvCameraName:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->back:Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->back:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private getDataFromOther()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->strDID:Ljava/lang/String;

    .line 156
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->cameraName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private initData()V
    .locals 11

    .prologue
    .line 100
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 101
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 102
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lobject/p2pipcam/utils/DataBaseHelper;->queryAllVideo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 131
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    new-instance v9, Lobject/p2pwificam/clientActivity/LocalVideoListActivity$1;

    invoke-direct {v9, p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity$1;-><init>(Lobject/p2pwificam/clientActivity/LocalVideoListActivity;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    return-void

    .line 105
    :cond_0
    const-string v8, "filepath"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 104
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 109
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 111
    :cond_1
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->strDID:Ljava/lang/String;

    .line 112
    const-string v10, "video"

    .line 111
    invoke-virtual {v8, v9, v5, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->deleteVideoOrPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .local v2, "delResult":Z
    goto :goto_0

    .line 116
    .end local v2    # "delResult":Z
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 119
    :goto_1
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "s1":Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "date":Ljava/lang/String;
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "date:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 123
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 116
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "s1":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_1

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_3
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->finish()V

    .line 143
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->overridePendingTransition(II)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->getDataFromOther()V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 54
    .local v1, "width":I
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 55
    .local v0, "height":I
    if-le v1, v0, :cond_0

    .end local v0    # "height":I
    :goto_0
    iput v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->wh:I

    .line 56
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    .line 61
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->findView()V

    .line 62
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->initData()V

    .line 63
    new-instance v2, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    .line 64
    iget v5, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->wh:I

    div-int/lit8 v5, v5, 0x5

    invoke-direct {v2, p0, v3, v4, v5}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;I)V

    .line 63
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    .line 65
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void

    .restart local v0    # "height":I
    :cond_0
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 176
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    .line 178
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 179
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    .line 180
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 162
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "date":Ljava/lang/String;
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 164
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "did"

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v3, "list"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    const-string v3, "date"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v3, "camera_name"

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->cameraName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    const v3, 0x7f040001

    const v4, 0x7f040005

    invoke-virtual {p0, v3, v4}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->overridePendingTransition(II)V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 151
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 71
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 72
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->isFirstStart:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->initData()V

    .line 74
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->updateGroup(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->childMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->updateChild(Ljava/util/Map;)V

    .line 76
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->initBmp()V

    .line 80
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->tvNoVideo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :goto_1
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->isFirstStart:Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->tvNoVideo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->tvNoVideo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalVideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
