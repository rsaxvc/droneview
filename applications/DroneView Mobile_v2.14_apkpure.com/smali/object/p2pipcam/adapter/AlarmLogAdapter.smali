.class public Lobject/p2pipcam/adapter/AlarmLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;,
        Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lobject/p2pipcam/bean/AlarmLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->arrayList:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/AlarmLogAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addAlarmLog(Lobject/p2pipcam/bean/AlarmLogBean;)V
    .locals 1
    .param p1, "alarmLogBean"    # Lobject/p2pipcam/bean/AlarmLogBean;

    .prologue
    .line 70
    iget-object v0, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public clearAllAlarmLog()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "holder":Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 48
    iget-object v3, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000b

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;

    .end local v1    # "holder":Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;
    invoke-direct {v1, p0, v5}, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/AlarmLogAdapter;Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;)V

    .line 51
    .restart local v1    # "holder":Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;
    const v3, 0x7f08004f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    iput-object v3, v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->camName:Landroid/widget/TextView;

    .line 53
    const v3, 0x7f080052

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 52
    iput-object v3, v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 55
    const v3, 0x7f080051

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    iput-object v3, v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->createTime:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v3, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/AlarmLogBean;

    .line 61
    .local v0, "alarmLogBean":Lobject/p2pipcam/bean/AlarmLogBean;
    iget-object v3, v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/AlarmLogBean;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->createTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/AlarmLogBean;->getCreatetime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->camName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/AlarmLogBean;->getCamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;

    invoke-direct {v2, p0, p1}, Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;-><init>(Lobject/p2pipcam/adapter/AlarmLogAdapter;I)V

    .line 65
    .local v2, "onLongListener":Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;
    iget-object v3, v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 66
    return-object p2

    .line 58
    .end local v0    # "alarmLogBean":Lobject/p2pipcam/bean/AlarmLogBean;
    .end local v2    # "onLongListener":Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;
    check-cast v1, Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;

    .restart local v1    # "holder":Lobject/p2pipcam/adapter/AlarmLogAdapter$ViewHolder;
    goto :goto_0
.end method
