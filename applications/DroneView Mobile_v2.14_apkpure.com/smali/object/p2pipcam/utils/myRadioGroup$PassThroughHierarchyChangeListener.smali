.class Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "myRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/myRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lobject/p2pipcam/utils/myRadioGroup;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/utils/myRadioGroup;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/utils/myRadioGroup;Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lobject/p2pipcam/utils/myRadioGroup;)V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 446
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 449
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 451
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v1, p2

    .line 453
    check-cast v1, Landroid/widget/RadioButton;

    .line 454
    iget-object v2, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    # getter for: Lobject/p2pipcam/utils/myRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v2}, Lobject/p2pipcam/utils/myRadioGroup;->access$6(Lobject/p2pipcam/utils/myRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    .line 453
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 457
    .end local v0    # "id":I
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 460
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 466
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 467
    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 473
    :cond_1
    return-void
.end method
