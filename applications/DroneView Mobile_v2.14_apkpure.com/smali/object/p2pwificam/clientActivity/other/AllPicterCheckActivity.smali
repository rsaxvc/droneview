.class public Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AllPicterCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;,
        Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;
    }
.end annotation


# static fields
.field private static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;

.field private button_back:Landroid/widget/ImageButton;

.field private dialog:Landroid/app/ProgressDialog;

.field private gridView:Landroid/widget/GridView;

.field private info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private listpath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPullRefreshGridView:Lobject/p2pwificam/gridview/PullToRefreshGridView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 38
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;

    .line 39
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->dialog:Landroid/app/ProgressDialog;

    .line 41
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;

    .line 42
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 43
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->button_back:Landroid/widget/ImageButton;

    .line 45
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 46
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->textView:Landroid/widget/TextView;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/gridview/PullToRefreshGridView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->mPullRefreshGridView:Lobject/p2pwificam/gridview/PullToRefreshGridView;

    return-object v0
.end method

.method static synthetic access$11()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Lobject/p2pwificam/clientActivity/other/GridAdapter;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getDataFromOther()V

    return-void
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getDataFromOther()V
    .locals 5

    .prologue
    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->arrayList:Ljava/util/ArrayList;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 182
    return-void

    .line 176
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "path":Ljava/lang/String;
    const-string v3, "path"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v3, "status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v3, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 200
    new-instance v0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;-><init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 221
    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    :cond_0
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->requestWindowFeature(I)Z

    .line 99
    const v2, 0x7f03004d

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->setContentView(I)V

    .line 100
    const v2, 0x7f080203

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lobject/p2pwificam/gridview/PullToRefreshGridView;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->mPullRefreshGridView:Lobject/p2pwificam/gridview/PullToRefreshGridView;

    .line 101
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->mPullRefreshGridView:Lobject/p2pwificam/gridview/PullToRefreshGridView;

    invoke-virtual {v2}, Lobject/p2pwificam/gridview/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;

    .line 102
    const v2, 0x7f080202

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 103
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->button_back:Landroid/widget/ImageButton;

    .line 104
    const v2, 0x7f080201

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->textView:Landroid/widget/TextView;

    .line 105
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    new-instance v0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;-><init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V

    .line 108
    .local v0, "asySelect":Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;

    new-instance v3, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$1;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$1;-><init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->button_back:Landroid/widget/ImageButton;

    new-instance v3, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$2;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$2;-><init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 135
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->mPullRefreshGridView:Lobject/p2pwificam/gridview/PullToRefreshGridView;

    new-instance v3, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$3;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$3;-><init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V

    invoke-virtual {v2, v3}, Lobject/p2pwificam/gridview/PullToRefreshGridView;->setOnRefreshListener(Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;)V

    .line 142
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 189
    const/4 v0, 0x2

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 190
    const/4 v0, 0x7

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 192
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 93
    return-void
.end method
