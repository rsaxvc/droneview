.class public Lobject/p2pwificam/clientActivity/LocalPictureListActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "LocalPictureListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private back:Landroid/widget/ImageButton;

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

.field private handler:Landroid/os/Handler;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private isFirstStart:Z

.field private mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

.field private mListView:Landroid/widget/ListView;

.field private strDID:Ljava/lang/String;

.field private tvCameraName:Landroid/widget/TextView;

.field private tvNoPicture:Landroid/widget/TextView;

.field private wh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 35
    const-string v0, "LocalPictureActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->isFirstStart:Z

    .line 48
    new-instance v0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity$1;-><init>(Lobject/p2pwificam/clientActivity/LocalPictureListActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->handler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/LocalPictureListActivity;)Lobject/p2pipcam/adapter/LocalPictureAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mListView:Landroid/widget/ListView;

    .line 114
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->tvNoPicture:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->tvCameraName:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->back:Landroid/widget/ImageButton;

    .line 117
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method private getDataFromOther()V
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->strDID:Ljava/lang/String;

    .line 124
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->cameraName:Ljava/lang/String;

    .line 125
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strDID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cameraName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->cameraName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method private initData()V
    .locals 11

    .prologue
    .line 129
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 130
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lobject/p2pipcam/utils/DataBaseHelper;->queryAllPicture(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 132
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 158
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    new-instance v9, Lobject/p2pwificam/clientActivity/LocalPictureListActivity$2;

    invoke-direct {v9, p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity$2;-><init>(Lobject/p2pwificam/clientActivity/LocalPictureListActivity;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    return-void

    .line 134
    :cond_0
    const-string v8, "filepath"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 133
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 137
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 139
    :cond_1
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->strDID:Ljava/lang/String;

    .line 140
    const-string v10, "picture"

    .line 139
    invoke-virtual {v8, v9, v5, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->deleteVideoOrPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 141
    .local v2, "delResult":Z
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delResult:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    .end local v2    # "delResult":Z
    :catch_0
    move-exception v8

    move-object v3, v4

    .line 147
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_1
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "s1":Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "date":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 150
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 144
    .end local v1    # "date":Ljava/lang/String;
    .end local v7    # "s1":Ljava/lang/String;
    :catch_1
    move-exception v8

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
    .line 184
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->finish()V

    .line 185
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->overridePendingTransition(II)V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 68
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->getDataFromOther()V

    .line 70
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 71
    .local v1, "width":I
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 72
    .local v0, "height":I
    if-le v1, v0, :cond_0

    .end local v0    # "height":I
    :goto_0
    iput v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->wh:I

    .line 73
    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->requestWindowFeature(I)Z

    .line 74
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    .line 78
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->findView()V

    .line 79
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->tvCameraName:Landroid/widget/TextView;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->cameraName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->initData()V

    .line 81
    new-instance v2, Lobject/p2pipcam/adapter/LocalPictureAdapter;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    iget v5, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->wh:I

    div-int/lit8 v5, v5, 0x5

    invoke-direct {v2, p0, v3, v4, v5}, Lobject/p2pipcam/adapter/LocalPictureAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;I)V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    .line 82
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    invoke-virtual {v2, v6}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->setMode(I)V

    .line 83
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    const-string v2, "tag"

    const-string v3, "onCreate end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .restart local v0    # "height":I
    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 194
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    .line 195
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    .line 196
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 171
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "date":Ljava/lang/String;
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "did"

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v3, "list"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    const-string v3, "date"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v3, "camera_name"

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->cameraName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    const v3, 0x7f040001

    const v4, 0x7f040005

    invoke-virtual {p0, v3, v4}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->overridePendingTransition(II)V

    .line 180
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 91
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 92
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->isFirstStart:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->initData()V

    .line 94
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->updateGroup(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->childMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->updateChild(Ljava/util/Map;)V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->initBmp()V

    .line 100
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "groupList.size():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->groupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->tvNoPicture:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_1
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->isFirstStart:Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->tvNoPicture:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
