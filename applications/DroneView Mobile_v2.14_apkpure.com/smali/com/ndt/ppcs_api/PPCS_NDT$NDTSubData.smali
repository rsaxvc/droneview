.class public Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;
.super Ljava/lang/Object;
.source "PPCS_NDT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ndt/ppcs_api/PPCS_NDT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NDTSubData"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public ClientName:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lstruct/CString;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;->ClientName:Lstruct/CString;

    .line 66
    return-void
.end method
