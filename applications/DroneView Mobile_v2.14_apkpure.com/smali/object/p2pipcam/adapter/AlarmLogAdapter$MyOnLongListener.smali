.class Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;
.super Ljava/lang/Object;
.source "AlarmLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/AlarmLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnLongListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lobject/p2pipcam/adapter/AlarmLogAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/AlarmLogAdapter;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 80
    iput-object p1, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;->this$0:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p2, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;->position:I

    .line 82
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;->this$0:Lobject/p2pipcam/adapter/AlarmLogAdapter;

    # getter for: Lobject/p2pipcam/adapter/AlarmLogAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lobject/p2pipcam/adapter/AlarmLogAdapter;->access$0(Lobject/p2pipcam/adapter/AlarmLogAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pipcam/adapter/AlarmLogAdapter$MyOnLongListener;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    return v3
.end method
