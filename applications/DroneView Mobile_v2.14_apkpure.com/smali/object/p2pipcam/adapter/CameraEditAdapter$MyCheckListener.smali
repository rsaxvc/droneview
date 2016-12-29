.class Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;
.super Ljava/lang/Object;
.source "CameraEditAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/CameraEditAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCheckListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/CameraEditAdapter;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 84
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p2, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->position:I

    .line 86
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    sget-object v1, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 92
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    if-eqz p2, :cond_0

    .line 93
    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    iput-boolean v4, v1, Lobject/p2pipcam/adapter/CameraEditAdapter;->hasSelect:Z

    .line 94
    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraEditAdapter;->selectCount:I
    invoke-static {v1}, Lobject/p2pipcam/adapter/CameraEditAdapter;->access$0(Lobject/p2pipcam/adapter/CameraEditAdapter;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lobject/p2pipcam/adapter/CameraEditAdapter;->access$1(Lobject/p2pipcam/adapter/CameraEditAdapter;I)V

    .line 95
    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/CameraParamsBean;->setSelected(Z)V

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraEditAdapter;->selectCount:I
    invoke-static {v1}, Lobject/p2pipcam/adapter/CameraEditAdapter;->access$0(Lobject/p2pipcam/adapter/CameraEditAdapter;)I

    move-result v1

    if-lez v1, :cond_1

    .line 98
    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraEditAdapter;->selectCount:I
    invoke-static {v1}, Lobject/p2pipcam/adapter/CameraEditAdapter;->access$0(Lobject/p2pipcam/adapter/CameraEditAdapter;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pipcam/adapter/CameraEditAdapter;->access$1(Lobject/p2pipcam/adapter/CameraEditAdapter;I)V

    .line 100
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    # getter for: Lobject/p2pipcam/adapter/CameraEditAdapter;->selectCount:I
    invoke-static {v1}, Lobject/p2pipcam/adapter/CameraEditAdapter;->access$0(Lobject/p2pipcam/adapter/CameraEditAdapter;)I

    move-result v1

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$MyCheckListener;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    iput-boolean v3, v1, Lobject/p2pipcam/adapter/CameraEditAdapter;->hasSelect:Z

    .line 103
    :cond_2
    invoke-virtual {v0, v3}, Lobject/p2pipcam/bean/CameraParamsBean;->setSelected(Z)V

    goto :goto_0
.end method
