.class Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "myRadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/myRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/myRadioGroup;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/utils/myRadioGroup;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/utils/myRadioGroup;Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;-><init>(Lobject/p2pipcam/utils/myRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    # getter for: Lobject/p2pipcam/utils/myRadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1}, Lobject/p2pipcam/utils/myRadioGroup;->access$1(Lobject/p2pipcam/utils/myRadioGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lobject/p2pipcam/utils/myRadioGroup;->access$2(Lobject/p2pipcam/utils/myRadioGroup;Z)V

    .line 423
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    # getter for: Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I
    invoke-static {v1}, Lobject/p2pipcam/utils/myRadioGroup;->access$3(Lobject/p2pipcam/utils/myRadioGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 424
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    iget-object v2, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    # getter for: Lobject/p2pipcam/utils/myRadioGroup;->mCheckedId:I
    invoke-static {v2}, Lobject/p2pipcam/utils/myRadioGroup;->access$3(Lobject/p2pipcam/utils/myRadioGroup;)I

    move-result v2

    # invokes: Lobject/p2pipcam/utils/myRadioGroup;->setCheckedStateForView(IZ)V
    invoke-static {v1, v2, v3}, Lobject/p2pipcam/utils/myRadioGroup;->access$4(Lobject/p2pipcam/utils/myRadioGroup;IZ)V

    .line 426
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    invoke-static {v1, v3}, Lobject/p2pipcam/utils/myRadioGroup;->access$2(Lobject/p2pipcam/utils/myRadioGroup;Z)V

    .line 428
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 429
    .local v0, "id":I
    iget-object v1, p0, Lobject/p2pipcam/utils/myRadioGroup$CheckedStateTracker;->this$0:Lobject/p2pipcam/utils/myRadioGroup;

    # invokes: Lobject/p2pipcam/utils/myRadioGroup;->setCheckedId(I)V
    invoke-static {v1, v0}, Lobject/p2pipcam/utils/myRadioGroup;->access$5(Lobject/p2pipcam/utils/myRadioGroup;I)V

    goto :goto_0
.end method
