.class public final enum Lorg/fusesource/jansi/Ansi$Attribute;
.super Ljava/lang/Enum;
.source "Ansi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Attribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fusesource/jansi/Ansi$Attribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum BLINK_FAST:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum BLINK_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum BLINK_SLOW:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum CONCEAL_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum CONCEAL_ON:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum INTENSITY_BOLD:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum INTENSITY_BOLD_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum INTENSITY_FAINT:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum ITALIC:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum ITALIC_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum NEGATIVE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum NEGATIVE_ON:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum RESET:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum STRIKETHROUGH_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum STRIKETHROUGH_ON:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum UNDERLINE:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum UNDERLINE_DOUBLE:Lorg/fusesource/jansi/Ansi$Attribute;

.field public static final enum UNDERLINE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 87
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->RESET:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 88
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "INTENSITY_BOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 89
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "INTENSITY_FAINT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_FAINT:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 90
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/4 v1, 0x3

    const-string v2, "ITALIC_ON"

    const-string v3, "ITALIC"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->ITALIC:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 91
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/4 v1, 0x4

    const-string v2, "UNDERLINE_ON"

    const-string v3, "UNDERLINE"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 92
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "BLINK_SLOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_SLOW:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 93
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "BLINK_FAST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_FAST:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 94
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "NEGATIVE_ON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->NEGATIVE_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 95
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "CONCEAL_ON"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->CONCEAL_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 96
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v1, "STRIKETHROUGH_ON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->STRIKETHROUGH_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 97
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0xa

    const/16 v2, 0x15

    const-string v3, "UNDERLINE_DOUBLE"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE_DOUBLE:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 98
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0xb

    const/16 v2, 0x16

    const-string v3, "INTENSITY_BOLD_OFF"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 99
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0xc

    const/16 v2, 0x17

    const-string v3, "ITALIC_OFF"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->ITALIC_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 100
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0xd

    const/16 v2, 0x18

    const-string v3, "UNDERLINE_OFF"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 101
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0x19

    const-string v2, "BLINK_OFF"

    const-string v3, "BLINK_OFF"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 102
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0x1b

    const-string v2, "NEGATIVE_OFF"

    const-string v3, "NEGATIVE_OFF"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->NEGATIVE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 103
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0x1c

    const-string v2, "CONCEAL_OFF"

    const-string v3, "CONCEAL_OFF"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->CONCEAL_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 104
    new-instance v0, Lorg/fusesource/jansi/Ansi$Attribute;

    const/16 v1, 0x1d

    const-string v2, "STRIKETHROUGH_OFF"

    const-string v3, "STRIKETHROUGH_OFF"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fusesource/jansi/Ansi$Attribute;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->STRIKETHROUGH_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    .line 86
    sget-object v5, Lorg/fusesource/jansi/Ansi$Attribute;->RESET:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v6, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v7, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_FAINT:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v8, Lorg/fusesource/jansi/Ansi$Attribute;->ITALIC:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v9, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v10, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_SLOW:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v11, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_FAST:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v12, Lorg/fusesource/jansi/Ansi$Attribute;->NEGATIVE_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v13, Lorg/fusesource/jansi/Ansi$Attribute;->CONCEAL_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v14, Lorg/fusesource/jansi/Ansi$Attribute;->STRIKETHROUGH_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v15, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE_DOUBLE:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v16, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v17, Lorg/fusesource/jansi/Ansi$Attribute;->ITALIC_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v18, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v19, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v20, Lorg/fusesource/jansi/Ansi$Attribute;->NEGATIVE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v21, Lorg/fusesource/jansi/Ansi$Attribute;->CONCEAL_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    sget-object v22, Lorg/fusesource/jansi/Ansi$Attribute;->STRIKETHROUGH_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    filled-new-array/range {v5 .. v22}, [Lorg/fusesource/jansi/Ansi$Attribute;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->$VALUES:[Lorg/fusesource/jansi/Ansi$Attribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lorg/fusesource/jansi/Ansi$Attribute;->value:I

    .line 111
    iput-object p4, p0, Lorg/fusesource/jansi/Ansi$Attribute;->name:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi$Attribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    const-class v0, Lorg/fusesource/jansi/Ansi$Attribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fusesource/jansi/Ansi$Attribute;

    return-object v0
.end method

.method public static values()[Lorg/fusesource/jansi/Ansi$Attribute;
    .locals 1

    .line 86
    sget-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->$VALUES:[Lorg/fusesource/jansi/Ansi$Attribute;

    invoke-virtual {v0}, [Lorg/fusesource/jansi/Ansi$Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fusesource/jansi/Ansi$Attribute;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/fusesource/jansi/Ansi$Attribute;->value:I

    return v0
.end method
