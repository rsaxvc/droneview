.class public Lcom/easyview/ndt/NDTService$NDTSubData;
.super Ljava/lang/Object;
.source "NDTService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/NDTService;
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

.field public Password:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    new-instance v0, Lstruct/CString;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$NDTSubData;->ClientName:Lstruct/CString;

    .line 763
    new-instance v0, Lstruct/CString;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$NDTSubData;->Password:Lstruct/CString;

    .line 759
    return-void
.end method
