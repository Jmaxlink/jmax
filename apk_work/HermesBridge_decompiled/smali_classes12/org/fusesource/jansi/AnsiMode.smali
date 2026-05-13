.class public final enum Lorg/fusesource/jansi/AnsiMode;
.super Ljava/lang/Enum;
.source "AnsiMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fusesource/jansi/AnsiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fusesource/jansi/AnsiMode;

.field public static final enum Default:Lorg/fusesource/jansi/AnsiMode;

.field public static final enum Force:Lorg/fusesource/jansi/AnsiMode;

.field public static final enum Strip:Lorg/fusesource/jansi/AnsiMode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lorg/fusesource/jansi/AnsiMode;

    const/4 v1, 0x0

    const-string v2, "Strip all ansi sequences"

    const-string v3, "Strip"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiMode;->Strip:Lorg/fusesource/jansi/AnsiMode;

    .line 26
    new-instance v0, Lorg/fusesource/jansi/AnsiMode;

    const/4 v1, 0x1

    const-string v2, "Print ansi sequences if the stream is a terminal"

    const-string v3, "Default"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiMode;->Default:Lorg/fusesource/jansi/AnsiMode;

    .line 27
    new-instance v0, Lorg/fusesource/jansi/AnsiMode;

    const/4 v1, 0x2

    const-string v2, "Always print ansi sequences, even if the stream is redirected"

    const-string v3, "Force"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiMode;->Force:Lorg/fusesource/jansi/AnsiMode;

    .line 23
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Strip:Lorg/fusesource/jansi/AnsiMode;

    sget-object v1, Lorg/fusesource/jansi/AnsiMode;->Default:Lorg/fusesource/jansi/AnsiMode;

    sget-object v2, Lorg/fusesource/jansi/AnsiMode;->Force:Lorg/fusesource/jansi/AnsiMode;

    filled-new-array {v0, v1, v2}, [Lorg/fusesource/jansi/AnsiMode;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/AnsiMode;->$VALUES:[Lorg/fusesource/jansi/AnsiMode;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lorg/fusesource/jansi/AnsiMode;->description:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lorg/fusesource/jansi/AnsiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fusesource/jansi/AnsiMode;

    return-object v0
.end method

.method public static values()[Lorg/fusesource/jansi/AnsiMode;
    .locals 1

    .line 23
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->$VALUES:[Lorg/fusesource/jansi/AnsiMode;

    invoke-virtual {v0}, [Lorg/fusesource/jansi/AnsiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fusesource/jansi/AnsiMode;

    return-object v0
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiMode;->description:Ljava/lang/String;

    return-object v0
.end method
