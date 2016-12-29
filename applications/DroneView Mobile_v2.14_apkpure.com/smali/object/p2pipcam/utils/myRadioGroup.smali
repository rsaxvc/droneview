.class public Lobject/p2pipcam/utils/myRadioGroup;
.super Landroid/widget/LinearLayout;
.source "myRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;,
        Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;,
        Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;,
        Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mProtectFromCheckedChange:Z

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pipcam/utils/myRadioGroup;->setOrientation(I)V

    .line 74
    invoke-direct {p0}, Lobject/p2pipcam/utils/myRadioGroup;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v2, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pipcam/utils/myRadioGroup;->mProtectFromCheckedChange:Z

    .line 86
    iput v2, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, "index":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lobject/p2pipcam/utils/myRadioGroup;->setOrientation(I)V

    .line 91
    invoke-direct {p0}, Lobject/p2pipcam/utils/myRadioGroup;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/myRadioGroup;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/utils/myRadioGroup;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lobject/p2pipcam/utils/myRadioGroup;->mProtectFromCheckedChange:Z

    return-void
.end method

.method static synthetic access$3(Lobject/p2pipcam/utils/myRadioGroup;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/utils/myRadioGroup;IZ)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lobject/p2pipcam/utils/myRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$5(Lobject/p2pipcam/utils/myRadioGroup;I)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/myRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$6(Lobject/p2pipcam/utils/myRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pipcam/utils/myRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/myRadioGroup;->checkRadioButton(Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$8(Lobject/p2pipcam/utils/myRadioGroup;)Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mOnCheckedChangeListener:Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

    return-object v0
.end method

.method private checkRadioButton(Landroid/widget/RadioButton;)V
    .locals 9
    .param p1, "radioButton"    # Landroid/widget/RadioButton;

    .prologue
    const/4 v8, 0x0

    .line 178
    invoke-virtual {p0}, Lobject/p2pipcam/utils/myRadioGroup;->getChildCount()I

    move-result v5

    .line 179
    .local v5, "radioCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 202
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, v3}, Lobject/p2pipcam/utils/myRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "child":Landroid/view/View;
    instance-of v7, v1, Landroid/widget/RadioButton;

    if-eqz v7, :cond_2

    .line 182
    if-eq v1, p1, :cond_1

    .line 185
    check-cast v1, Landroid/widget/RadioButton;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 179
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    instance-of v7, v1, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    move-object v7, v1

    .line 188
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 189
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_1

    move-object v7, v1

    .line 190
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 191
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Landroid/widget/RadioButton;

    if-eqz v7, :cond_3

    move-object v0, v6

    .line 192
    check-cast v0, Landroid/widget/RadioButton;

    .line 193
    .local v0, "button":Landroid/widget/RadioButton;
    if-eq v0, p1, :cond_3

    .line 196
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 189
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;-><init>(Lobject/p2pipcam/utils/myRadioGroup;Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 96
    new-instance v0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lobject/p2pipcam/utils/myRadioGroup;Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mPassThroughListener:Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;

    .line 97
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mPassThroughListener:Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 98
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 257
    iput p1, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    .line 258
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mOnCheckedChangeListener:Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mOnCheckedChangeListener:Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lobject/p2pipcam/utils/myRadioGroup;I)V

    .line 261
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lobject/p2pipcam/utils/myRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Landroid/widget/RadioButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 128
    instance-of v4, p1, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 130
    check-cast v4, Landroid/widget/RadioButton;

    new-instance v5, Lobject/p2pipcam/utils/myRadioGroup$1;

    invoke-direct {v5, p0, p1}, Lobject/p2pipcam/utils/myRadioGroup$1;-><init>(Lobject/p2pipcam/utils/myRadioGroup;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void

    .line 143
    :cond_1
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 144
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 145
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    move-object v4, p1

    .line 146
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 147
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 148
    check-cast v0, Landroid/widget/RadioButton;

    .line 151
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v4, Lobject/p2pipcam/utils/myRadioGroup$2;

    invoke-direct {v4, p0, v0}, Lobject/p2pipcam/utils/myRadioGroup$2;-><init>(Lobject/p2pipcam/utils/myRadioGroup;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 241
    if-eq p1, v2, :cond_0

    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_0
    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 246
    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lobject/p2pipcam/utils/myRadioGroup;->setCheckedStateForView(IZ)V

    .line 249
    :cond_1
    if-eq p1, v2, :cond_2

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lobject/p2pipcam/utils/myRadioGroup;->setCheckedStateForView(IZ)V

    .line 253
    :cond_2
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/myRadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 318
    instance-of v0, p1, Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lobject/p2pipcam/utils/myRadioGroup;->check(I)V

    .line 293
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 323
    new-instance v0, Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lobject/p2pipcam/utils/myRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 310
    new-instance v0, Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lobject/p2pipcam/utils/myRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lobject/p2pipcam/utils/myRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 117
    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 118
    iput-boolean v2, p0, Lobject/p2pipcam/utils/myRadioGroup;->mProtectFromCheckedChange:Z

    .line 119
    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lobject/p2pipcam/utils/myRadioGroup;->setCheckedStateForView(IZ)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mProtectFromCheckedChange:Z

    .line 121
    iget v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lobject/p2pipcam/utils/myRadioGroup;->setCheckedId(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

    .prologue
    .line 302
    iput-object p1, p0, Lobject/p2pipcam/utils/myRadioGroup;->mOnCheckedChangeListener:Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

    .line 303
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 106
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup;->mPassThroughListener:Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->access$1(Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 107
    return-void
.end method
