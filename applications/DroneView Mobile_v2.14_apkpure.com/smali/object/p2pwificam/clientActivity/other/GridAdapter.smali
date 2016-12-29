.class public Lobject/p2pwificam/clientActivity/other/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridAdapter.java"


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

.field count:I

.field private imageView:Landroid/widget/ImageView;

.field private inflater:Landroid/view/LayoutInflater;

.field private layout:Landroid/widget/LinearLayout;

.field public list:Ljava/util/List;
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

.field private mImage_bs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public photos:Ljava/util/ArrayList;
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
    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->all_select:Ljava/util/List;

    .line 30
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->mImage:Ljava/util/Vector;

    .line 31
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->list:Ljava/util/List;

    .line 32
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->imageView:Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->textView:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->mImage_bs:Ljava/util/Vector;

    .line 36
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->layout:Landroid/widget/LinearLayout;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->photos:Ljava/util/ArrayList;

    .line 38
    iput v2, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p2, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->list:Ljava/util/List;

    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 77
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "s1":Ljava/lang/String;
    const/16 v6, 0xb

    const/16 v7, 0x10

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    const-string v8, ":"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "time":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "!"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "ssid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "date":Ljava/lang/String;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03002a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->layout:Landroid/widget/LinearLayout;

    .line 82
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->layout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->layout:Landroid/widget/LinearLayout;

    const v7, 0x7f080121

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->imageView:Landroid/widget/ImageView;

    .line 84
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->layout:Landroid/widget/LinearLayout;

    .line 85
    const v7, 0x7f080123

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 84
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->textView:Landroid/widget/TextView;

    .line 88
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v6, 0x8

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 90
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 91
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/other/GridAdapter;->layout:Landroid/widget/LinearLayout;

    return-object v6

    .line 104
    :catch_0
    move-exception v6

    goto :goto_0
.end method
