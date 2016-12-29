.class public Lobject/p2pipcam/adapter/AlarmActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lobject/p2pipcam/bean/CameraParamsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lobject/p2pipcam/bean/CameraParamsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lobject/p2pipcam/bean/CameraParamsBean;>;"
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->list:Ljava/util/ArrayList;

    .line 22
    iput-object v0, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 26
    iput-object p2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->list:Ljava/util/ArrayList;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p1, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->_context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemCam(I)Lobject/p2pipcam/bean/CameraParamsBean;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 49
    if-nez p2, :cond_1

    .line 50
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030009

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    invoke-direct {v2, p0, v4}, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/AlarmActivityAdapter;Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;)V

    iput-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    .line 53
    iget-object v3, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    const v2, 0x7f080048

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 54
    iget-object v3, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    const v2, 0x7f080049

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->did:Landroid/widget/TextView;

    .line 55
    iget-object v3, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    const v2, 0x7f08004b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->alarmCount:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 61
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->did:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->_context:Landroid/content/Context;

    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->did:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lobject/p2pipcam/utils/DataBaseHelper;->queryAlarmCount(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "count":I
    if-gtz v1, :cond_2

    .line 72
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->alarmCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_1
    return-object p2

    .line 58
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "count":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    iput-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    goto :goto_0

    .line 75
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v1    # "count":I
    :cond_2
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->alarmCount:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v2, p0, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->holder:Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/AlarmActivityAdapter$ViewHolder;->alarmCount:Landroid/widget/TextView;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
