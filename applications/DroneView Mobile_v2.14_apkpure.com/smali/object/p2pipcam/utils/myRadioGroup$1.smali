.class Lobject/p2pipcam/utils/myRadioGroup$1;
.super Ljava/lang/Object;
.source "myRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/utils/myRadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/myRadioGroup;

.field private final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/myRadioGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    iput-object p2, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->val$child:Landroid/view/View;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 134
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->val$child:Landroid/view/View;

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 135
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->val$child:Landroid/view/View;

    check-cast v0, Landroid/widget/RadioButton;

    # invokes: Lobject/p2pipcam/utils/myRadioGroup;->checkRadioButton(Landroid/widget/RadioButton;)V
    invoke-static {v1, v0}, Lobject/p2pipcam/utils/myRadioGroup;->access$7(Lobject/p2pipcam/utils/myRadioGroup;Landroid/widget/RadioButton;)V

    .line 136
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    # getter for: Lobject/p2pipcam/utils/myRadioGroup;->mOnCheckedChangeListener:Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;
    invoke-static {v0}, Lobject/p2pipcam/utils/myRadioGroup;->access$8(Lobject/p2pipcam/utils/myRadioGroup;)Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    # getter for: Lobject/p2pipcam/utils/myRadioGroup;->mOnCheckedChangeListener:Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;
    invoke-static {v0}, Lobject/p2pipcam/utils/myRadioGroup;->access$8(Lobject/p2pipcam/utils/myRadioGroup;)Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    iget-object v2, p0, Lobject/p2pipcam/utils/myRadioGroup$1;->val$child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lobject/p2pipcam/utils/myRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lobject/p2pipcam/utils/myRadioGroup;I)V

    .line 139
    :cond_0
    return v3
.end method
