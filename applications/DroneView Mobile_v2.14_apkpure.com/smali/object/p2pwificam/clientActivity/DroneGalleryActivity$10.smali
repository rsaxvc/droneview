.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$10;
.super Ljava/lang/Object;
.source "DroneGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->finish()V

    .line 151
    return-void
.end method
