.class public Lcom/easyview/tutk/PasswordSettingStruct;
.super Ljava/lang/Object;
.source "PasswordSettingStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public newPassword:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public oldPassword:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/PasswordSettingStruct;->oldPassword:Lstruct/CString;

    .line 12
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/PasswordSettingStruct;->newPassword:Lstruct/CString;

    .line 8
    return-void
.end method
