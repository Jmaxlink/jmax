.class public final enum Lorg/fusesource/jansi/AnsiColors;
.super Ljava/lang/Enum;
.source "AnsiColors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fusesource/jansi/AnsiColors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fusesource/jansi/AnsiColors;

.field public static final enum Colors16:Lorg/fusesource/jansi/AnsiColors;

.field public static final enum Colors256:Lorg/fusesource/jansi/AnsiColors;

.field public static final enum TrueColor:Lorg/fusesource/jansi/AnsiColors;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lorg/fusesource/jansi/AnsiColors;

    const/4 v1, 0x0

    const-string v2, "16 colors"

    const-string v3, "Colors16"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiColors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiColors;->Colors16:Lorg/fusesource/jansi/AnsiColors;

    .line 26
    new-instance v0, Lorg/fusesource/jansi/AnsiColors;

    const/4 v1, 0x1

    const-string v2, "256 colors"

    const-string v3, "Colors256"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiColors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiColors;->Colors256:Lorg/fusesource/jansi/AnsiColors;

    .line 27
    new-instance v0, Lorg/fusesource/jansi/AnsiColors;

    const/4 v1, 0x2

    const-string v2, "24-bit colors"

    const-string v3, "TrueColor"

    invoke-direct {v0, v3, v1, v2}, Lorg/fusesource/jansi/AnsiColors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/AnsiColors;->TrueColor:Lorg/fusesource/jansi/AnsiColors;

    .line 23
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->Colors16:Lorg/fusesource/jansi/AnsiColors;

    sget-object v1, Lorg/fusesource/jansi/AnsiColors;->Colors256:Lorg/fusesource/jansi/AnsiColors;

    sget-object v2, Lorg/fusesource/jansi/AnsiColors;->TrueColor:Lorg/fusesource/jansi/AnsiColors;

    filled-new-array {v0, v1, v2}, [Lorg/fusesource/jansi/AnsiColors;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/AnsiColors;->$VALUES:[Lorg/fusesource/jansi/AnsiColors;

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
    iput-object p3, p0, Lorg/fusesource/jansi/AnsiColors;->description:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiColors;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lorg/fusesource/jansi/AnsiColors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fusesource/jansi/AnsiColors;

    return-object v0
.end method

.method public static values()[Lorg/fusesource/jansi/AnsiColors;
    .locals 1

    .line 23
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->$VALUES:[Lorg/fusesource/jansi/AnsiColors;

    invoke-virtual {v0}, [Lorg/fusesource/jansi/AnsiColors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fusesource/jansi/AnsiColors;

    return-object v0
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiColors;->description:Ljava/lang/String;

    return-object v0
.end method
