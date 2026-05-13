.class final enum Lcom/typesafe/config/impl/OriginType;
.super Ljava/lang/Enum;
.source "OriginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/OriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/OriginType;

.field public static final enum FILE:Lcom/typesafe/config/impl/OriginType;

.field public static final enum GENERIC:Lcom/typesafe/config/impl/OriginType;

.field public static final enum RESOURCE:Lcom/typesafe/config/impl/OriginType;

.field public static final enum URL:Lcom/typesafe/config/impl/OriginType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/typesafe/config/impl/OriginType;

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/OriginType;->GENERIC:Lcom/typesafe/config/impl/OriginType;

    .line 6
    new-instance v0, Lcom/typesafe/config/impl/OriginType;

    const-string v1, "FILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/OriginType;->FILE:Lcom/typesafe/config/impl/OriginType;

    .line 7
    new-instance v0, Lcom/typesafe/config/impl/OriginType;

    const-string v1, "URL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/OriginType;->URL:Lcom/typesafe/config/impl/OriginType;

    .line 8
    new-instance v0, Lcom/typesafe/config/impl/OriginType;

    const-string v1, "RESOURCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/OriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/OriginType;->RESOURCE:Lcom/typesafe/config/impl/OriginType;

    .line 4
    sget-object v0, Lcom/typesafe/config/impl/OriginType;->GENERIC:Lcom/typesafe/config/impl/OriginType;

    sget-object v1, Lcom/typesafe/config/impl/OriginType;->FILE:Lcom/typesafe/config/impl/OriginType;

    sget-object v2, Lcom/typesafe/config/impl/OriginType;->URL:Lcom/typesafe/config/impl/OriginType;

    sget-object v3, Lcom/typesafe/config/impl/OriginType;->RESOURCE:Lcom/typesafe/config/impl/OriginType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/typesafe/config/impl/OriginType;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/OriginType;->$VALUES:[Lcom/typesafe/config/impl/OriginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/OriginType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/typesafe/config/impl/OriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/OriginType;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/OriginType;
    .locals 1

    .line 4
    sget-object v0, Lcom/typesafe/config/impl/OriginType;->$VALUES:[Lcom/typesafe/config/impl/OriginType;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/OriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/OriginType;

    return-object v0
.end method
