.class Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;
.super Ljava/lang/Object;
.source "DroneGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/DroneGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

.field private final synthetic val$bean:Lobject/p2pipcam/bean/EventDetailBean;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->canClick:Z
    invoke-static {v1}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$1(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;

    .line 260
    .local v0, "h":Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    iget-object v1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    .line 263
    iget-object v1, v0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    .line 267
    iget-object v1, v0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v2, 0x7f020136

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
