.class public Lcom/easyview/common/EVTimeZones;
.super Ljava/lang/Object;
.source "EVTimeZones.java"


# instance fields
.field private _array:[Lcom/easyview/common/EVTimeZone;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x111

    new-array v0, v0, [Lcom/easyview/common/EVTimeZone;

    .line 9
    new-instance v1, Lcom/easyview/common/EVTimeZone;

    const-string v2, "American Samoa"

    const/16 v3, -0xb

    invoke-direct {v1, v2, v3, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 10
    new-instance v1, Lcom/easyview/common/EVTimeZone;

    const-string v2, "Niue"

    const/16 v3, -0xb

    invoke-direct {v1, v2, v3, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 11
    new-instance v1, Lcom/easyview/common/EVTimeZone;

    const-string v2, "Tokelau"

    const/16 v3, -0xb

    invoke-direct {v1, v2, v3, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 12
    new-instance v1, Lcom/easyview/common/EVTimeZone;

    const-string v2, "Cook Islands"

    const/16 v3, -0xa

    invoke-direct {v1, v2, v3, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v10

    const/4 v1, 0x4

    .line 13
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "French Polynesia-HAST"

    const/16 v4, -0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 14
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of Hawaii"

    const/16 v4, -0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 15
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "French Polynesia-Marquesas Islands"

    const/16 v4, -0x9

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 16
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Alaska"

    const/16 v4, -0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 17
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "French Polynesia-Gambier Islands"

    const/16 v4, -0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 18
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Canada-PST"

    const/4 v4, -0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 19
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Mexico-PST"

    const/4 v4, -0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 20
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "USA-PST"

    const/4 v4, -0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 21
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Canada-MST"

    const/4 v4, -0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 22
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Mexico-MST"

    const/4 v4, -0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 23
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "USA-MST"

    const/4 v4, -0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 24
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Belize"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 25
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Canada-CST"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 26
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Easter Island"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 27
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Mexico-CST"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 28
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Costa Rica"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 29
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of El Salvador"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 30
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Guatemala"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 31
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Honduras"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 32
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Nicaragua"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 33
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "USA-CST"

    const/4 v4, -0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 34
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "British Cayman Islands"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 35
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Canada-EST"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 36
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Commonwealth of the Bahamas"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 37
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Jamaica"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 38
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Colombia"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 39
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Cuba"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 40
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Ecuador"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 41
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Haiti"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 42
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Panama"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 43
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Peru"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 44
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Turks and Caicos Islands"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 45
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "USA-EST"

    const/4 v4, -0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 46
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Bolivarian Republic of Venezuela"

    const/16 v4, 0x1e

    invoke-direct {v2, v3, v9, v4}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 47
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Anguilla"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 48
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Antigua and Barbuda"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 49
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Aruba"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 50
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Barbados"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 51
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Bermuda Islands"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 52
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "British Virgin Islands"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 53
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Canada-AST"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 54
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Commonwealth of Dominica"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 55
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Commonwealth of Puerto Rico"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 56
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Co-operative Republic of Guyana"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 57
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Denmark-AST"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 58
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Dominican Republic"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 59
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Falkland Islands"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 60
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federation of Saint Christopher and Nevis"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 61
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federative Republic of Brazil-Braslia-1"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 62
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Grenada"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 63
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Guadeloupe"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 64
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Martinique"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 65
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Montserrat"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 66
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Netherlands Antilles"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 67
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Bolivia"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 68
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Chile"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 69
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Paraguay"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 70
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Trinidad and Tobago"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 71
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Saint Lucia"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 72
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Saint Vincent and the Grenadines"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 73
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "United States Virgin Islands"

    invoke-direct {v2, v3, v9, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 74
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Canada-NST"

    const/4 v4, -0x3

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 75
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Argentine Republic"

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 76
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Denmark-Greenland"

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 77
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federative Republic of Brazil-Braslia"

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 78
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "French Guiana"

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 79
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Oriental Republic of Uruguay"

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 80
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Suriname"

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 81
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Saint Pierre and Miquelon"

    const/4 v4, -0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 82
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federative Republic of Brazil-Braslia+1"

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 83
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Azores Autonomous Region"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 84
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Greenland-Ittoqqortoormiit"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 85
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Cape Verde"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 86
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Burkina Faso"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 87
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Canary Islands (Islas Canarias)"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 88
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Channel Islands"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 89
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Democratic Republic of Sao Tome and Principe"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 90
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Faroe Islands"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 91
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Greenland-Danmarkshavn"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 92
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Islamic Republic of Mauritania"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 93
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Isle of Man"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 94
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Ivory Coast"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 95
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Morocco"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 96
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Portuguese Republic"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 97
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Ghana"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 98
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Guine"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 99
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Guinea-Bissau"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 100
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Iceland"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 101
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Ireland"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 102
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Liberia"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 103
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Mali"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 104
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Senegal"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 105
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Sierra Leone"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 106
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of The Gambia"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 107
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Saint Helena"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 108
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Togolese Republic"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 109
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "United Kingdom (UK)"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 110
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Western Sahara"

    invoke-direct {v2, v3, v6, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 111
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, " Kingdom of Denmark"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 112
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Bosnia and Herzegovina (BH)"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 113
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Central African Republic"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 114
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Czech Republic"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 115
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Democratic Republic of the Congo-CET"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 116
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federal Republic of Germany"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 117
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federal Republic of Nigeria"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 118
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "French Republic"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 119
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Gabonese Republic"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 120
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Grand Duchy of Luxembourg"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 121
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Italian Republic"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 122
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Belgium"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 123
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Norway"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 124
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Spain"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 125
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Sweden"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 126
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of the Netherlands"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 127
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Most Serene Republic of San Marino "

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 128
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "People\'s Democratic Republic of Algeria"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 129
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Principality of Andorra"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 130
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Principality of Liechtenstein"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 131
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Principality of Monaco"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 132
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Albania"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 133
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Angola"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 134
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Austria"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 135
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Benin"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 136
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Cameroon"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 137
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Chad"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 138
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Croatia"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 139
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Equatorial Guinea"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 140
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Hungary"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 141
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Macedonia"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 142
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Malta"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 143
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Montenegro"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 144
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Namibia"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 145
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Niger"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 146
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Poland"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 147
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Serbia"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 148
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Slovenia"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 149
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of the Congo"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 150
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Slovak Republic"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 151
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of the Vatican City"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 152
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Switzerland"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 153
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Tunisian Republic"

    invoke-direct {v2, v3, v7, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 154
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Arab Republic of Egypt"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 155
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Democratic Republic of the Congo-EET"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 156
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Gibraltar"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 157
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Hashemite Kingdom of Jordan"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 158
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Hellenic Republic"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 159
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Lesotho"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 160
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Swaziland"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 161
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Lebanese Republic"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    .line 162
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Belarus"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 163
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Botswana"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    .line 164
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Bulgaria"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 165
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Burundi"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    .line 166
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Cyprus"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 167
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Estonia"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    .line 168
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Finland"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 169
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Latvia"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    .line 170
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Lithuania"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    .line 171
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Malawi"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 172
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Moldova"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    .line 173
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Mozambique"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 174
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Rwanda"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    .line 175
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of South Africa"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 176
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Turkiye"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    .line 177
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Zambia"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    .line 178
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Zimbabwe"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    .line 179
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Romania"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xab

    .line 180
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Socialist People\'s Libyan Arab Great Jamahiriya"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xac

    .line 181
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of Israel"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xad

    .line 182
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of Palestine"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xae

    .line 183
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Syrian Arab Republic"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    .line 184
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Turkish Republic of Northern Cyprus"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 185
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Ukraine"

    invoke-direct {v2, v3, v8, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    .line 186
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federal Democratic Republic of Ethiopia"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    .line 187
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Bahrain"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    .line 188
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Saudi Arabia"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    .line 189
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Mayotte"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    .line 190
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Djibouti"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    .line 191
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Iraq"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    .line 192
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Kenya"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 193
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Madagascar"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    .line 194
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Somalia"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xba

    .line 195
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Sudan"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    .line 196
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Uganda"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    .line 197
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Yemen"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    .line 198
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Kaliningrad"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    .line 199
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of Eritrea"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    .line 200
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of Kuwait"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    .line 201
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of Qatar"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    .line 202
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Union of the Comoros"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 203
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "United Arab Emirates"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    .line 204
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "United Republic of Tanzania"

    invoke-direct {v2, v3, v10, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    .line 205
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Islamic Republic of Iran"

    const/16 v4, 0x1e

    invoke-direct {v2, v3, v10, v4}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    .line 206
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Georgia"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    .line 207
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Armenia"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    .line 208
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Azerbaijan"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 209
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Mauritius"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    .line 210
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Seychelles"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xca

    .line 211
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Reunion"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    .line 212
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Moscow"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    .line 213
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Sultanate of Oman"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    .line 214
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Islamic Republic of Afghanistan"

    const/4 v4, 0x4

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xce

    .line 215
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Islamic Republic of Pakistan"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    .line 216
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Kazakhstan-Western"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    .line 217
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Maldives"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    .line 218
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Tajikistan"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    .line 219
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Uzbekistan"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    .line 220
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Turkmenistan"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    .line 221
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Democratic Socialist Republic of Sri Lanka"

    const/4 v4, 0x5

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    .line 222
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of India"

    const/4 v4, 0x5

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    .line 223
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federal Democratic Republic of Nepal"

    const/4 v4, 0x5

    const/16 v5, 0x2d

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    .line 224
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Bhutan"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    .line 225
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kyrgyz Republic"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    .line 226
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "People\'s Republic of Bangladesh"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xda

    .line 227
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Kazakhstan-Eastern"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    .line 228
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Yekaterinburg"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    .line 229
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Cocos (Keeling) Islands"

    const/4 v4, 0x6

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    .line 230
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of The Union of Myanmar"

    const/4 v4, 0x6

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xde

    .line 231
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Christmas Island"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    .line 232
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Indonesia-Western"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    .line 233
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Cambodia"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    .line 234
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Thailand"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    .line 235
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Lao People\'s Democratic Republic"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    .line 236
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Mongolia"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    .line 237
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Omsk"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    .line 238
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Socialist Republic of Vietnam"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    .line 239
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Australia-AWST"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    .line 240
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Hong Kong Special"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    .line 241
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Indonesia-Central (CST)"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    .line 242
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Macau Special Administrative Regio"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xea

    .line 243
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Malaysia"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    .line 244
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "People\'s Republic of China"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xec

    .line 245
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Singapore"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xed

    .line 246
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of the Philippines"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xee

    .line 247
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Krasnoyarsk"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xef

    .line 248
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "State of Brunei Darussalam"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    .line 249
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Taiwan"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    .line 250
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Democratic People\'s Republic of Korea"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    .line 251
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Democratic Republic of East Timor"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    .line 252
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Indonesia-Eastern (KST)"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    .line 253
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Japan"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    .line 254
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Korea"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    .line 255
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Palau"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    .line 256
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Irkutsk"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    .line 257
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Australia-ACST"

    const/16 v4, 0x9

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    .line 258
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Australia-AEST"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    .line 259
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Commonwealth of the Northern Mariana Islands (CNMI)"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    .line 260
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federated States of Micronesia-Yap and Chuuk"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    .line 261
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Independent State of Papua New Guinea"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    .line 262
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Yakutsk"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    .line 263
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Territory of Guam"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xff

    .line 264
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Federated States of Micronesia-Kosrae and Pohnpei"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x100

    .line 265
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "New Caledonia"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x101

    .line 266
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Norfolk lsland"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x102

    .line 267
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Vladivostok"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x103

    .line 268
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Solomon Islands"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x104

    .line 269
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Vanuatu"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x105

    .line 270
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "New Zealand"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x106

    .line 271
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Kiribati-Gilbert Islands"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x107

    .line 272
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Nauru"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x108

    .line 273
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of the Fiji Islands"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x109

    .line 274
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of the Marshall Islands"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    .line 275
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Russian Federation-Magadan"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    .line 276
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Tuvalu"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    .line 277
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Wallis and Futuna"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    .line 278
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Independent State of Samoa"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    .line 279
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Kingdom of Tonga"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    .line 280
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Kiribati-Phoenix Islands"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x110

    .line 281
    new-instance v2, Lcom/easyview/common/EVTimeZone;

    const-string v3, "Republic of Kiribati-Line Islands"

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4, v6}, Lcom/easyview/common/EVTimeZone;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/easyview/common/EVTimeZones;->_array:[Lcom/easyview/common/EVTimeZone;

    .line 6
    return-void
.end method


# virtual methods
.method public Count()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/easyview/common/EVTimeZones;->_array:[Lcom/easyview/common/EVTimeZone;

    array-length v0, v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;I)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "diff"    # I

    .prologue
    const/4 v3, 0x0

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "index":I
    iget-object v5, p0, Lcom/easyview/common/EVTimeZones;->_array:[Lcom/easyview/common/EVTimeZone;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_1

    move v1, v3

    .line 317
    .end local v1    # "index":I
    :cond_0
    return v1

    .line 311
    .restart local v1    # "index":I
    :cond_1
    aget-object v2, v5, v4

    .line 313
    .local v2, "tz":Lcom/easyview/common/EVTimeZone;
    invoke-virtual {v2}, Lcom/easyview/common/EVTimeZone;->getGMTDiff()I

    move-result v0

    .line 314
    .local v0, "d":I
    if-ne v0, p2, :cond_2

    iget-object v7, v2, Lcom/easyview/common/EVTimeZone;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 315
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/easyview/common/EVTimeZone;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/easyview/common/EVTimeZones;->_array:[Lcom/easyview/common/EVTimeZone;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNames()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/easyview/common/EVTimeZones;->_array:[Lcom/easyview/common/EVTimeZone;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_0

    .line 306
    return-object v1

    .line 295
    :cond_0
    aget-object v2, v6, v4

    .line 297
    .local v2, "tz":Lcom/easyview/common/EVTimeZone;
    const-string v8, "(GMT%s%02d:%02d) %s "

    const/4 v3, 0x4

    new-array v9, v3, [Ljava/lang/Object;

    iget v3, v2, Lcom/easyview/common/EVTimeZone;->hour:I

    if-lez v3, :cond_1

    const-string v3, "+"

    :goto_1
    aput-object v3, v9, v5

    const/4 v3, 0x1

    iget v10, v2, Lcom/easyview/common/EVTimeZone;->hour:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    const/4 v3, 0x2

    iget v10, v2, Lcom/easyview/common/EVTimeZone;->minute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    const/4 v3, 0x3

    iget-object v10, v2, Lcom/easyview/common/EVTimeZone;->name:Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 297
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string v3, "-"

    goto :goto_1
.end method
