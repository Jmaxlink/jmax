.class public final enum Lorg/fusesource/jansi/AnsiRenderer$Code;
.super Ljava/lang/Enum;
.source "AnsiRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/AnsiRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fusesource/jansi/AnsiRenderer$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BG_YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BLINK_FAST:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BLINK_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BLINK_SLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum CONCEAL_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum CONCEAL_ON:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FAINT:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum FG_YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum INTENSITY_BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum INTENSITY_FAINT:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum ITALIC:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum NEGATIVE_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum NEGATIVE_ON:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum RESET:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum UNDERLINE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum UNDERLINE_DOUBLE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum UNDERLINE_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

.field public static final enum YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;


# instance fields
.field private final background:Z

.field private final n:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 167
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v1, Lorg/fusesource/jansi/Ansi$Color;->BLACK:Lorg/fusesource/jansi/Ansi$Color;

    const-string v2, "BLACK"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 168
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v1, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    const-string v2, "RED"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 169
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v1, 0x2

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "GREEN"

    invoke-direct {v0, v5, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 170
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v1, 0x3

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "YELLOW"

    invoke-direct {v0, v5, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 171
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v1, 0x4

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->BLUE:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "BLUE"

    invoke-direct {v0, v5, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 172
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v1, 0x5

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "MAGENTA"

    invoke-direct {v0, v5, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 173
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v1, 0x6

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "CYAN"

    invoke-direct {v0, v5, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 174
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v1, 0x7

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->WHITE:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "WHITE"

    invoke-direct {v0, v5, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 175
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x8

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 178
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x9

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->BLACK:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_BLACK"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 179
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0xa

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_RED"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 180
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0xb

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_GREEN"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 181
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0xc

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_YELLOW"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 182
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0xd

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->BLUE:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_BLUE"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 183
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0xe

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_MAGENTA"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 184
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0xf

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_CYAN"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 185
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x10

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->WHITE:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_WHITE"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 186
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x11

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    const-string v5, "FG_DEFAULT"

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 189
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x12

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->BLACK:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_BLACK"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 190
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x13

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_RED"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 191
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x14

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_GREEN"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 192
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x15

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_YELLOW"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 193
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x16

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->BLUE:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_BLUE"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 194
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x17

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_MAGENTA"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 195
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x18

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_CYAN"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 196
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x19

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->WHITE:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_WHITE"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 197
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x1a

    sget-object v2, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    const-string v3, "BG_DEFAULT"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 200
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x1b

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->RESET:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "RESET"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->RESET:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 201
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x1c

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "INTENSITY_BOLD"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->INTENSITY_BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 202
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x1d

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_FAINT:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "INTENSITY_FAINT"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->INTENSITY_FAINT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 203
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x1e

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->ITALIC:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->ITALIC:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 204
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x1f

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "UNDERLINE"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->UNDERLINE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 205
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x20

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_SLOW:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "BLINK_SLOW"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLINK_SLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 206
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x21

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_FAST:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "BLINK_FAST"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLINK_FAST:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 207
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x22

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->BLINK_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "BLINK_OFF"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLINK_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 208
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x23

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->NEGATIVE_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "NEGATIVE_ON"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->NEGATIVE_ON:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 209
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x24

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->NEGATIVE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "NEGATIVE_OFF"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->NEGATIVE_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 210
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x25

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->CONCEAL_ON:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "CONCEAL_ON"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->CONCEAL_ON:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 211
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x26

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->CONCEAL_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "CONCEAL_OFF"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->CONCEAL_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 212
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x27

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE_DOUBLE:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "UNDERLINE_DOUBLE"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->UNDERLINE_DOUBLE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 213
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x28

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->UNDERLINE_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "UNDERLINE_OFF"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->UNDERLINE_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 216
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x29

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "BOLD"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 217
    new-instance v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v1, 0x2a

    sget-object v2, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_FAINT:Lorg/fusesource/jansi/Ansi$Attribute;

    const-string v3, "FAINT"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->FAINT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 160
    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v5, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v6, Lorg/fusesource/jansi/AnsiRenderer$Code;->GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v7, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v8, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v9, Lorg/fusesource/jansi/AnsiRenderer$Code;->MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v10, Lorg/fusesource/jansi/AnsiRenderer$Code;->CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v11, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v12, Lorg/fusesource/jansi/AnsiRenderer$Code;->DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v13, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v14, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v15, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v16, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v17, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v18, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v20, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v21, Lorg/fusesource/jansi/AnsiRenderer$Code;->FG_DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v22, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_BLACK:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v23, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v24, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_GREEN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v25, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v26, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_BLUE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v27, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_MAGENTA:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v28, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_CYAN:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v29, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v30, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_DEFAULT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v31, Lorg/fusesource/jansi/AnsiRenderer$Code;->RESET:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v32, Lorg/fusesource/jansi/AnsiRenderer$Code;->INTENSITY_BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v33, Lorg/fusesource/jansi/AnsiRenderer$Code;->INTENSITY_FAINT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v34, Lorg/fusesource/jansi/AnsiRenderer$Code;->ITALIC:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v35, Lorg/fusesource/jansi/AnsiRenderer$Code;->UNDERLINE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v36, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLINK_SLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v37, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLINK_FAST:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v38, Lorg/fusesource/jansi/AnsiRenderer$Code;->BLINK_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v39, Lorg/fusesource/jansi/AnsiRenderer$Code;->NEGATIVE_ON:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v40, Lorg/fusesource/jansi/AnsiRenderer$Code;->NEGATIVE_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v41, Lorg/fusesource/jansi/AnsiRenderer$Code;->CONCEAL_ON:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v42, Lorg/fusesource/jansi/AnsiRenderer$Code;->CONCEAL_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v43, Lorg/fusesource/jansi/AnsiRenderer$Code;->UNDERLINE_DOUBLE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v44, Lorg/fusesource/jansi/AnsiRenderer$Code;->UNDERLINE_OFF:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v45, Lorg/fusesource/jansi/AnsiRenderer$Code;->BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v46, Lorg/fusesource/jansi/AnsiRenderer$Code;->FAINT:Lorg/fusesource/jansi/AnsiRenderer$Code;

    filled-new-array/range {v4 .. v46}, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->$VALUES:[Lorg/fusesource/jansi/AnsiRenderer$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 229
    .local p3, "n":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/fusesource/jansi/AnsiRenderer$Code;-><init>(Ljava/lang/String;ILjava/lang/Enum;Z)V

    .line 230
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Enum;Z)V
    .locals 0
    .param p4, "background"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;Z)V"
        }
    .end annotation

    .line 223
    .local p3, "n":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput-object p3, p0, Lorg/fusesource/jansi/AnsiRenderer$Code;->n:Ljava/lang/Enum;

    .line 225
    iput-boolean p4, p0, Lorg/fusesource/jansi/AnsiRenderer$Code;->background:Z

    .line 226
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiRenderer$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 160
    const-class v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fusesource/jansi/AnsiRenderer$Code;

    return-object v0
.end method

.method public static values()[Lorg/fusesource/jansi/AnsiRenderer$Code;
    .locals 1

    .line 160
    sget-object v0, Lorg/fusesource/jansi/AnsiRenderer$Code;->$VALUES:[Lorg/fusesource/jansi/AnsiRenderer$Code;

    invoke-virtual {v0}, [Lorg/fusesource/jansi/AnsiRenderer$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    return-object v0
.end method


# virtual methods
.method public getAttribute()Lorg/fusesource/jansi/Ansi$Attribute;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiRenderer$Code;->n:Ljava/lang/Enum;

    check-cast v0, Lorg/fusesource/jansi/Ansi$Attribute;

    return-object v0
.end method

.method public getColor()Lorg/fusesource/jansi/Ansi$Color;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiRenderer$Code;->n:Ljava/lang/Enum;

    check-cast v0, Lorg/fusesource/jansi/Ansi$Color;

    return-object v0
.end method

.method public isAttribute()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiRenderer$Code;->n:Ljava/lang/Enum;

    instance-of v0, v0, Lorg/fusesource/jansi/Ansi$Attribute;

    return v0
.end method

.method public isBackground()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lorg/fusesource/jansi/AnsiRenderer$Code;->background:Z

    return v0
.end method

.method public isColor()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiRenderer$Code;->n:Ljava/lang/Enum;

    instance-of v0, v0, Lorg/fusesource/jansi/Ansi$Color;

    return v0
.end method
