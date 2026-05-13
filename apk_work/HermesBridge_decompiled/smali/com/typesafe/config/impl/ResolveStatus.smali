.class final enum Lcom/typesafe/config/impl/ResolveStatus;
.super Ljava/lang/Enum;
.source "ResolveStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/ResolveStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/ResolveStatus;

.field public static final enum RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

.field public static final enum UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/typesafe/config/impl/ResolveStatus;

    const-string v1, "UNRESOLVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ResolveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    new-instance v0, Lcom/typesafe/config/impl/ResolveStatus;

    const-string v1, "RESOLVED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/ResolveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    .line 11
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    filled-new-array {v0, v1}, [Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ResolveStatus;->$VALUES:[Lcom/typesafe/config/impl/ResolveStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static final fromBoolean(Z)Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1
    .param p0, "resolved"    # Z

    .line 24
    if-eqz p0, :cond_0

    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    :goto_0
    return-object v0
.end method

.method static final fromValues(Ljava/util/Collection;)Lcom/typesafe/config/impl/ResolveStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)",
            "Lcom/typesafe/config/impl/ResolveStatus;"
        }
    .end annotation

    .line 16
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 17
    .local v1, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v2

    sget-object v3, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v2, v3, :cond_0

    .line 18
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0

    .line 19
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/typesafe/config/impl/ResolveStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 11
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->$VALUES:[Lcom/typesafe/config/impl/ResolveStatus;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/ResolveStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method
