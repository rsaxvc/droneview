.class public Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoGridAdapter.java"


# instance fields
.field public all_select:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private layout:Landroid/widget/LinearLayout;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mImage:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mImage_bs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lobject/p2pwificam/clientActivity/other/LoadedImage;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->all_select:Ljava/util/List;

    .line 27
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->mImage:Ljava/util/Vector;

    .line 28
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->list:Ljava/util/List;

    .line 29
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->textView:Landroid/widget/TextView;

    .line 30
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->mImage_bs:Ljava/util/Vector;

    .line 32
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->layout:Landroid/widget/LinearLayout;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->photos:Ljava/util/ArrayList;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->list:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 41
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->mImage_bs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPhoto(Lobject/p2pwificam/clientActivity/other/LoadedImage;)V
    .locals 1
    .param p1, "photo"    # Lobject/p2pwificam/clientActivity/other/LoadedImage;

    .prologue
    .line 45
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 69
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "s1":Ljava/lang/String;
    const-string v5, "!"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "ssid":Ljava/lang/String;
    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "date":Ljava/lang/String;
    const/16 v5, 0xb

    const/16 v6, 0x10

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    const-string v7, ":"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "time":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "result":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03002b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->layout:Landroid/widget/LinearLayout;

    .line 75
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->layout:Landroid/widget/LinearLayout;

    .line 77
    const v6, 0x7f080123

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 76
    iput-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->textView:Landroid/widget/TextView;

    .line 86
    :try_start_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/other/VideoGridAdapter;->layout:Landroid/widget/LinearLayout;

    return-object v5

    .line 91
    :catch_0
    move-exception v5

    goto :goto_0
.end method
