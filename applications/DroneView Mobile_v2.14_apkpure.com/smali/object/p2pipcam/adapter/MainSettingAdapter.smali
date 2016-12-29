.class public Lobject/p2pipcam/adapter/MainSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private imgs:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private ss:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 23
    .local v0, "resources":Landroid/content/res/Resources;
    if-ne p2, v3, :cond_0

    .line 24
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    const v2, 0x7f06009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 26
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    const v2, 0x7f06007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 27
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    const v2, 0x7f06002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 28
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    const v2, 0x7f060174

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 29
    new-array v1, v7, [I

    iput-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    .line 30
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    const v2, 0x7f020094

    aput v2, v1, v4

    .line 31
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    const v2, 0x7f02008f

    aput v2, v1, v5

    .line 32
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    const v2, 0x7f02008e

    aput v2, v1, v3

    .line 33
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    const v2, 0x7f020091

    aput v2, v1, v6

    .line 45
    :goto_0
    return-void

    .line 35
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    const v2, 0x7f06007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 37
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    const v2, 0x7f06002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 38
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    const v2, 0x7f060174

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 39
    new-array v1, v6, [I

    iput-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    .line 40
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    const v2, 0x7f02008f

    aput v2, v1, v4

    .line 41
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    const v2, 0x7f02008e

    aput v2, v1, v5

    .line 42
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    const v2, 0x7f020091

    aput v2, v1, v3

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030036

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/MainSettingAdapter;Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;)V

    .line 68
    .local v0, "holder":Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;
    const v1, 0x7f080078

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f080167

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 76
    const v1, 0x7f0200b0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    :goto_1
    iget-object v1, v0, Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, v0, Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->imgs:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    return-object p2

    .line 72
    .end local v0    # "holder":Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;

    .restart local v0    # "holder":Lobject/p2pipcam/adapter/MainSettingAdapter$ViewHolder;
    goto :goto_0

    .line 77
    :cond_1
    if-nez p1, :cond_2

    .line 79
    const v1, 0x7f0200b5

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v1, p0, Lobject/p2pipcam/adapter/MainSettingAdapter;->ss:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 82
    const v1, 0x7f0200b2

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 85
    :cond_3
    const v1, 0x7f0200b3

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
