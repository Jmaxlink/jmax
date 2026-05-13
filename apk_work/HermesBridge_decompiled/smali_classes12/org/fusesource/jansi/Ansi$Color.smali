.class public final enum Lorg/fusesource/jansi/Ansi$Color;
.super Ljava/lang/Enum;
.source "Ansi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fusesource/jansi/Ansi$Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum BLACK:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum BLUE:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum CYAN:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum GREEN:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum RED:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum WHITE:Lorg/fusesource/jansi/Ansi$Color;

.field public static final enum YELLOW:Lorg/fusesource/jansi/Ansi$Color;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 37
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "BLACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->BLACK:Lorg/fusesource/jansi/Ansi$Color;

    .line 38
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "RED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    .line 39
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "GREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    .line 40
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "YELLOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    .line 41
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "BLUE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->BLUE:Lorg/fusesource/jansi/Ansi$Color;

    .line 42
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "MAGENTA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    .line 43
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "CYAN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    .line 44
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const-string v1, "WHITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->WHITE:Lorg/fusesource/jansi/Ansi$Color;

    .line 45
    new-instance v0, Lorg/fusesource/jansi/Ansi$Color;

    const/16 v1, 0x8

    const/16 v2, 0x9

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/fusesource/jansi/Ansi$Color;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    .line 36
    sget-object v4, Lorg/fusesource/jansi/Ansi$Color;->BLACK:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v5, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v6, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v7, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v8, Lorg/fusesource/jansi/Ansi$Color;->BLUE:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v9, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v10, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v11, Lorg/fusesource/jansi/Ansi$Color;->WHITE:Lorg/fusesource/jansi/Ansi$Color;

    sget-object v12, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    filled-new-array/range {v4 .. v12}, [Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/Ansi$Color;->$VALUES:[Lorg/fusesource/jansi/Ansi$Color;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lorg/fusesource/jansi/Ansi$Color;->value:I

    .line 52
    iput-object p4, p0, Lorg/fusesource/jansi/Ansi$Color;->name:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi$Color;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/fusesource/jansi/Ansi$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fusesource/jansi/Ansi$Color;

    return-object v0
.end method

.method public static values()[Lorg/fusesource/jansi/Ansi$Color;
    .locals 1

    .line 36
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->$VALUES:[Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {v0}, [Lorg/fusesource/jansi/Ansi$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fusesource/jansi/Ansi$Color;

    return-object v0
.end method


# virtual methods
.method public bg()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/fusesource/jansi/Ansi$Color;->value:I

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public bgBright()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/fusesource/jansi/Ansi$Color;->value:I

    add-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public fg()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/fusesource/jansi/Ansi$Color;->value:I

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public fgBright()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/fusesource/jansi/Ansi$Color;->value:I

    add-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi$Color;->name:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/fusesource/jansi/Ansi$Color;->value:I

    return v0
.end method
