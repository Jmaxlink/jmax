.class final enum Lcom/typesafe/config/impl/ConfigIncludeKind;
.super Ljava/lang/Enum;
.source "ConfigIncludeKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/ConfigIncludeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/ConfigIncludeKind;

.field public static final enum CLASSPATH:Lcom/typesafe/config/impl/ConfigIncludeKind;

.field public static final enum FILE:Lcom/typesafe/config/impl/ConfigIncludeKind;

.field public static final enum HEURISTIC:Lcom/typesafe/config/impl/ConfigIncludeKind;

.field public static final enum URL:Lcom/typesafe/config/impl/ConfigIncludeKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/typesafe/config/impl/ConfigIncludeKind;

    const-string v1, "URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigIncludeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigIncludeKind;->URL:Lcom/typesafe/config/impl/ConfigIncludeKind;

    new-instance v0, Lcom/typesafe/config/impl/ConfigIncludeKind;

    const-string v1, "FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigIncludeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigIncludeKind;->FILE:Lcom/typesafe/config/impl/ConfigIncludeKind;

    new-instance v0, Lcom/typesafe/config/impl/ConfigIncludeKind;

    const-string v1, "CLASSPATH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigIncludeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigIncludeKind;->CLASSPATH:Lcom/typesafe/config/impl/ConfigIncludeKind;

    new-instance v0, Lcom/typesafe/config/impl/ConfigIncludeKind;

    const-string v1, "HEURISTIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ConfigIncludeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigIncludeKind;->HEURISTIC:Lcom/typesafe/config/impl/ConfigIncludeKind;

    .line 3
    sget-object v0, Lcom/typesafe/config/impl/ConfigIncludeKind;->URL:Lcom/typesafe/config/impl/ConfigIncludeKind;

    sget-object v1, Lcom/typesafe/config/impl/ConfigIncludeKind;->FILE:Lcom/typesafe/config/impl/ConfigIncludeKind;

    sget-object v2, Lcom/typesafe/config/impl/ConfigIncludeKind;->CLASSPATH:Lcom/typesafe/config/impl/ConfigIncludeKind;

    sget-object v3, Lcom/typesafe/config/impl/ConfigIncludeKind;->HEURISTIC:Lcom/typesafe/config/impl/ConfigIncludeKind;

    filled-new-array {v0, v1, v2, v3}, [Lcom/typesafe/config/impl/ConfigIncludeKind;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigIncludeKind;->$VALUES:[Lcom/typesafe/config/impl/ConfigIncludeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigIncludeKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/typesafe/config/impl/ConfigIncludeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ConfigIncludeKind;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/ConfigIncludeKind;
    .locals 1

    .line 3
    sget-object v0, Lcom/typesafe/config/impl/ConfigIncludeKind;->$VALUES:[Lcom/typesafe/config/impl/ConfigIncludeKind;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/ConfigIncludeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/ConfigIncludeKind;

    return-object v0
.end method
