.class public final enum Lorg/fusesource/jansi/AnsiType;
.super Ljava/lang/Enum;
.source "AnsiType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fusesource/jansi/AnsiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fusesource/jansi/AnsiType;

.field public static final enum Emulation:Lorg/fusesource/jansi/AnsiType;

.field public static final enum Native:Lorg/fusesource/jansi/AnsiType;

.field public static final enum Redirected:Lorg/fusesource/jansi/AnsiType;

.field public static final enum Unsupported:Lorg/fusesource/jansi/AnsiType;

.field public static final enum VirtualTerminal:Lorg/fusesource/jansi/AnsiType;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lorg/fusesource/jansi/AnsiType;

    const/4 v1, 0x0

    const-string v2, "Supports ansi sequences natively"

    const-string v3, "Native"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiType;->Native:Lorg/fusesource/jansi/AnsiType;

    .line 26
    new-instance v0, Lorg/fusesource/jansi/AnsiType;

    const/4 v1, 0x1

    const-string v2, "Ansi sequences are stripped out"

    const-string v3, "Unsupported"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiType;->Unsupported:Lorg/fusesource/jansi/AnsiType;

    .line 27
    new-instance v0, Lorg/fusesource/jansi/AnsiType;

    const/4 v1, 0x2

    const-string v2, "Supported through windows virtual terminal"

    const-string v3, "VirtualTerminal"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiType;->VirtualTerminal:Lorg/fusesource/jansi/AnsiType;

    .line 28
    new-instance v0, Lorg/fusesource/jansi/AnsiType;

    const/4 v1, 0x3

    const-string v2, "Emulated through using windows API console commands"

    const-string v3, "Emulation"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiType;->Emulation:Lorg/fusesource/jansi/AnsiType;

    .line 29
    new-instance v0, Lorg/fusesource/jansi/AnsiType;

    const/4 v1, 0x4

    const-string v2, "The stream is redirected to a file or a pipe"

    const-string v3, "Redirected"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiType;->Redirected:Lorg/fusesource/jansi/AnsiType;

    .line 23
    sget-object v0, Lorg/fusesource/jansi/AnsiType;->Native:Lorg/fusesource/jansi/AnsiType;

    sget-object v1, Lorg/fusesource/jansi/AnsiType;->Unsupported:Lorg/fusesource/jansi/AnsiType;

    sget-object v2, Lorg/fusesource/jansi/AnsiType;->VirtualTerminal:Lorg/fusesource/jansi/AnsiType;

    sget-object v3, Lorg/fusesource/jansi/AnsiType;->Emulation:Lorg/fusesource/jansi/AnsiType;

    sget-object v4, Lorg/fusesource/jansi/AnsiType;->Redirected:Lorg/fusesource/jansi/AnsiType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/fusesource/jansi/AnsiType;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/AnsiType;->$VALUES:[Lorg/fusesource/jansi/AnsiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lorg/fusesource/jansi/AnsiType;->description:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lorg/fusesource/jansi/AnsiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fusesource/jansi/AnsiType;

    return-object v0
.end method

.method public static values()[Lorg/fusesource/jansi/AnsiType;
    .locals 1

    .line 23
    sget-object v0, Lorg/fusesource/jansi/AnsiType;->$VALUES:[Lorg/fusesource/jansi/AnsiType;

    invoke-virtual {v0}, [Lorg/fusesource/jansi/AnsiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fusesource/jansi/AnsiType;

    return-object v0
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiType;->description:Ljava/lang/String;

    return-object v0
.end method
