.class public Lobject/p2pipcam/adapter/CameraEditAdapter;
.super Landroid/widget/BaseAdapter;
.source "CameraEditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;,
        Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field public hasSelect:Z

.field private holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field private selectCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput v0, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->selectCount:I

    .line 28
    iput-boolean v0, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->hasSelect:Z

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->_context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/CameraEditAdapter;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->selectCount:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/adapter/CameraEditAdapter;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->selectCount:I

    return-void
.end method

.method private checkRepeatID(Ljava/lang/String;)Z
    .locals 4
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-object v2, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 192
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 193
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "strDid":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0, p2}, Lobject/p2pipcam/adapter/CameraEditAdapter;->checkRepeatID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/CameraParamsBean;-><init>()V

    .line 152
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setDid(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p1}, Lobject/p2pipcam/bean/CameraParamsBean;->setName(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p3}, Lobject/p2pipcam/bean/CameraParamsBean;->setUser(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p4}, Lobject/p2pipcam/bean/CameraParamsBean;->setPwd(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lobject/p2pipcam/bean/CameraParamsBean;->setSelected(Z)V

    .line 157
    sget-object v1, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    :cond_0
    return-void
.end method

.method public delCamera()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v7, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 170
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 183
    return-object v7

    .line 163
    .end local v3    # "i":I
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 164
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->isSelected()Z

    move-result v5

    .line 165
    .local v5, "selected":Z
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "did":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 167
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "did":Ljava/lang/String;
    .end local v5    # "selected":Z
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .restart local v1    # "did":Ljava/lang/String;
    const/4 v2, 0x1

    .line 173
    .local v2, "flag":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    sget-object v8, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    if-nez v2, :cond_4

    .line 170
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    :cond_4
    sget-object v8, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 175
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "strDid":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 177
    sget-object v8, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    const/4 v2, 0x0

    .line 173
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemCamera(I)Lobject/p2pipcam/bean/CameraParamsBean;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 187
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 47
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

    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030017

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    invoke-direct {v3, p0, v5}, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/CameraEditAdapter;Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;)V

    iput-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    .line 55
    iget-object v4, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    const v3, 0x7f080091

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v4, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->cbx:Landroid/widget/CheckBox;

    .line 56
    iget-object v4, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    const v3, 0x7f080094

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->tvID:Landroid/widget/TextView;

    .line 57
    iget-object v4, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    .line 58
    const v3, 0x7f080092

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    iput-object v3, v4, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 59
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    new-instance v1, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;

    invoke-direct {v1, p0, p1}, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;-><init>(Lobject/p2pipcam/adapter/CameraEditAdapter;I)V

    .line 64
    .local v1, "cbxListener":Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    iget-object v3, v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->cbx:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    sget-object v3, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 66
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    iget-object v3, v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->tvID:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->_context:Landroid/content/Context;

    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    iget-object v3, v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->tvID:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    iget-object v3, v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->isSelected()Z

    move-result v2

    .line 73
    .local v2, "selected":Z
    if-eqz v2, :cond_2

    .line 74
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    iget-object v3, v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->cbx:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    :goto_1
    return-object p2

    .line 61
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "cbxListener":Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;
    .end local v2    # "selected":Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    iput-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    goto :goto_0

    .line 76
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v1    # "cbxListener":Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;
    .restart local v2    # "selected":Z
    :cond_2
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraEditAdapter;->holder:Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;

    iget-object v3, v3, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->cbx:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public modifyCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "old_did"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v2, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 118
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v0, p3}, Lobject/p2pipcam/bean/CameraParamsBean;->setName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p4}, Lobject/p2pipcam/bean/CameraParamsBean;->setUser(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setDid(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p5}, Lobject/p2pipcam/bean/CameraParamsBean;->setPwd(Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public reverseSelect(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 137
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 138
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 147
    return-void

    .line 139
    :cond_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 140
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->isSelected()Z

    move-result v2

    .line 141
    .local v2, "selected":Z
    if-eqz v2, :cond_1

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/CameraParamsBean;->setSelected(Z)V

    .line 138
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/CameraParamsBean;->setSelected(Z)V

    goto :goto_1
.end method

.method public selectAll(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 131
    sget-object v1, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 132
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lobject/p2pipcam/bean/CameraParamsBean;->setSelected(Z)V

    goto :goto_0
.end method
