.class Lobject/p2pwificam/clientActivity/EventDetailActivity$2;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/EventDetailActivity;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)Lobject/p2pwificam/clientActivity/EventDetailActivity;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const v5, 0x7f06000e

    const v3, 0x7f06000d

    const/4 v4, 0x1

    .line 229
    if-nez p3, :cond_1

    .line 231
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->bottom_layout:Landroid/view/View;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$3(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$2(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lobject/p2pipcam/adapter/EventDetailAdapter;->setCanSel(Z)V

    .line 275
    :cond_0
    :goto_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$5(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 276
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/utils/RecordDownTask;->Clear()V

    .line 277
    return-void

    .line 234
    :cond_1
    if-ne p3, v4, :cond_2

    .line 236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0601ed

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 238
    new-instance v2, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$1;-><init>(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 256
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0601ec

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 260
    new-instance v2, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$2;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/EventDetailActivity$2$2;-><init>(Lobject/p2pwificam/clientActivity/EventDetailActivity$2;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 270
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    .line 272
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    const-class v3, Lobject/p2pwificam/clientActivity/EventSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    invoke-virtual {v2, v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
