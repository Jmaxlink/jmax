.class public final enum Lcom/typesafe/config/ConfigValueType;
.super Ljava/lang/Enum;
.source "ConfigValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/ConfigValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/ConfigValueType;

.field public static final enum BOOLEAN:Lcom/typesafe/config/ConfigValueType;

.field public static final enum LIST:Lcom/typesafe/config/ConfigValueType;

.field public static final enum NULL:Lcom/typesafe/config/ConfigValueType;

.field public static final enum NUMBER:Lcom/typesafe/config/ConfigValueType;

.field public static final enum OBJECT:Lcom/typesafe/config/ConfigValueType;

.field public static final enum STRING:Lcom/typesafe/config/ConfigValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/typesafe/config/ConfigValueType;

    const-string v1, "OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/ConfigValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    new-instance v0, Lcom/typesafe/config/ConfigValueType;

    const-string v1, "LIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/ConfigValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    new-instance v0, Lcom/typesafe/config/ConfigValueType;

    const-string v1, "NUMBER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/ConfigValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    new-instance v0, Lcom/typesafe/config/ConfigValueType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/ConfigValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/ConfigValueType;->BOOLEAN:Lcom/typesafe/config/ConfigValueType;

    new-instance v0, Lcom/typesafe/config/ConfigValueType;

    const-string v1, "NULL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/ConfigValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    new-instance v0, Lcom/typesafe/config/ConfigValueType;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/ConfigValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    .line 10
    sget-object v3, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    sget-object v4, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    sget-object v5, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    sget-object v6, Lcom/typesafe/config/ConfigValueType;->BOOLEAN:Lcom/typesafe/config/ConfigValueType;

    sget-object v7, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    sget-object v8, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    filled-new-array/range {v3 .. v8}, [Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/ConfigValueType;->$VALUES:[Lcom/typesafe/config/ConfigValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/ConfigValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/typesafe/config/ConfigValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 10
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->$VALUES:[Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {v0}, [Lcom/typesafe/config/ConfigValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method
