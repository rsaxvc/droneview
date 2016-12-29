.class public Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AllVideoCheckActivity.java"


# instance fields
.field private adapter:Lobject/p2pipcam/adapter/AllVideoListAdapter;

.field private button_back:Landroid/widget/ImageButton;

.field private info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private listView:Landroid/widget/ListView;

.field private movieInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/MovieInfo;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 32
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->button_back:Landroid/widget/ImageButton;

    .line 33
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->textView:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->listView:Landroid/widget/ListView;

    .line 35
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->adapter:Lobject/p2pipcam/adapter/AllVideoListAdapter;

    .line 37
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->position:I

    .line 30
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)Lobject/p2pipcam/adapter/AllVideoListAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->adapter:Lobject/p2pipcam/adapter/AllVideoListAdapter;

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 107
    const/4 v0, 0x1

    sput v0, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 108
    new-instance v0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;-><init>(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 128
    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    :cond_0
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->requestWindowFeature(I)Z

    .line 44
    const v4, 0x7f03004e

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->setContentView(I)V

    .line 45
    const v4, 0x7f080200

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->textView:Landroid/widget/TextView;

    .line 47
    const v4, 0x7f080019

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->button_back:Landroid/widget/ImageButton;

    .line 48
    const v4, 0x7f080204

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->listView:Landroid/widget/ListView;

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "zhaogeng"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->position:I

    .line 52
    iget v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->position:I

    if-nez v4, :cond_1

    .line 53
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060186

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    const-string v4, "zhaoxing"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 58
    .local v0, "cobjs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_2

    .line 62
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 63
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->listView:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 64
    const v4, 0x7f0601ac

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->showToast(I)V

    .line 66
    :cond_0
    new-instance v4, Lobject/p2pipcam/adapter/AllVideoListAdapter;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;

    iget v6, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->position:I

    invoke-direct {v4, p0, v5, v6}, Lobject/p2pipcam/adapter/AllVideoListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->adapter:Lobject/p2pipcam/adapter/AllVideoListAdapter;

    .line 67
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->adapter:Lobject/p2pipcam/adapter/AllVideoListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->listView:Landroid/widget/ListView;

    new-instance v5, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$1;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$1;-><init>(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->button_back:Landroid/widget/ImageButton;

    new-instance v5, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$2;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$2;-><init>(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 92
    return-void

    .line 55
    .end local v0    # "cobjs":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->textView:Landroid/widget/TextView;

    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    iget v6, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->position:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    .restart local v0    # "cobjs":[Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lobject/p2pipcam/bean/MovieInfo;

    .line 60
    .local v3, "user":Lobject/p2pipcam/bean/MovieInfo;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->movieInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 98
    const/4 v0, 0x2

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 99
    const/4 v0, 0x7

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 101
    return-void
.end method
