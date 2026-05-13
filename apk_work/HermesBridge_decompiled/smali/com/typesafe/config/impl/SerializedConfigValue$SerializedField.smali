.class final enum Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
.super Ljava/lang/Enum;
.source "SerializedConfigValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SerializedConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SerializedField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum END_MARKER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_DESCRIPTION:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_END_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_NULL_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_NULL_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_NULL_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_TYPE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ORIGIN_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ROOT_VALUE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum ROOT_WAS_CONFIG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum UNKNOWN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum VALUE_DATA:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

.field public static final enum VALUE_ORIGIN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 49
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->UNKNOWN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 52
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "END_MARKER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->END_MARKER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 55
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ROOT_VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_VALUE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 56
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ROOT_WAS_CONFIG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_WAS_CONFIG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 59
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "VALUE_DATA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_DATA:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 60
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "VALUE_ORIGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_ORIGIN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 63
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_DESCRIPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_DESCRIPTION:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 64
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_LINE_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 65
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_END_LINE_NUMBER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_END_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 66
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_TYPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_TYPE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 67
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_URL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 68
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_COMMENTS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 69
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_NULL_URL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 70
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_NULL_COMMENTS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 71
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_RESOURCE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 72
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    const-string v1, "ORIGIN_NULL_RESOURCE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    .line 47
    sget-object v3, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->UNKNOWN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->END_MARKER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v5, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_VALUE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v6, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ROOT_WAS_CONFIG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v7, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_DATA:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v8, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->VALUE_ORIGIN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v9, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_DESCRIPTION:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v10, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v11, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_END_LINE_NUMBER:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v12, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_TYPE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v13, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v14, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v15, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_URL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v16, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_COMMENTS:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v17, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    sget-object v18, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->ORIGIN_NULL_RESOURCE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    filled-new-array/range {v3 .. v18}, [Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->$VALUES:[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static forInt(I)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    .locals 1
    .param p0, "b"    # I

    .line 75
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->values()[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 76
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->values()[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->UNKNOWN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;
    .locals 1

    .line 47
    sget-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->$VALUES:[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/SerializedConfigValue$SerializedField;

    return-object v0
.end method
