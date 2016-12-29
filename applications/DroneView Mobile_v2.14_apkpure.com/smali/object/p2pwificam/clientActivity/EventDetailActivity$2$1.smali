.class Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$2(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lobject/p2pipcam/adapter/EventDetailAdapter;->removeLast(I)V

    .line 242
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$2(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/EventDetailAdapter;->getCount()I

    move-result v0

    .line 243
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 245
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->finish()V

    .line 246
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v1

    const v2, 0x7f040006

    const/high16 v3, 0x7f040000

    invoke-virtual {v1, v2, v3}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->overridePendingTransition(II)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->tvTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$4(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%s (%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v5

    const v6, 0x7f060063

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
