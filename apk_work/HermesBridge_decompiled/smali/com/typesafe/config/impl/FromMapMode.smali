.class final enum Lcom/typesafe/config/impl/FromMapMode;
.super Ljava/lang/Enum;
.source "FromMapMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/FromMapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/FromMapMode;

.field public static final enum KEYS_ARE_KEYS:Lcom/typesafe/config/impl/FromMapMode;

.field public static final enum KEYS_ARE_PATHS:Lcom/typesafe/config/impl/FromMapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/typesafe/config/impl/FromMapMode;

    const-string v1, "KEYS_ARE_PATHS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/FromMapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_PATHS:Lcom/typesafe/config/impl/FromMapMode;

    new-instance v0, Lcom/typesafe/config/impl/FromMapMode;

    const-string v1, "KEYS_ARE_KEYS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/FromMapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_KEYS:Lcom/typesafe/config/impl/FromMapMode;

    .line 6
    sget-object v0, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_PATHS:Lcom/typesafe/config/impl/FromMapMode;

    sget-object v1, Lcom/typesafe/config/impl/FromMapMode;->KEYS_ARE_KEYS:Lcom/typesafe/config/impl/FromMapMode;

    filled-new-array {v0, v1}, [Lcom/typesafe/config/impl/FromMapMode;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/FromMapMode;->$VALUES:[Lcom/typesafe/config/impl/FromMapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/FromMapMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/typesafe/config/impl/FromMapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/FromMapMode;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/FromMapMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/typesafe/config/impl/FromMapMode;->$VALUES:[Lcom/typesafe/config/impl/FromMapMode;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/FromMapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/FromMapMode;

    return-object v0
.end method
