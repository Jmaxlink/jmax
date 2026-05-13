.class final enum Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
.super Ljava/lang/Enum;
.source "SerializedConfigValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SerializedConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SerializedValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum BOOLEAN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum DOUBLE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum INT:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum LIST:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum LONG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum NULL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum OBJECT:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

.field public static final enum STRING:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;


# instance fields
.field configType:Lcom/typesafe/config/ConfigValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 84
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x0

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "NULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->NULL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 85
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x1

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->BOOLEAN:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->BOOLEAN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 86
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x2

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->INT:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 87
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x3

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "LONG"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->LONG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 88
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x4

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "DOUBLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->DOUBLE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 89
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x5

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->STRING:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 90
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x6

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "LIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->LIST:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 91
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    const/4 v1, 0x7

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    const-string v3, "OBJECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;-><init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->OBJECT:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    .line 82
    sget-object v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->NULL:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    sget-object v5, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->BOOLEAN:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    sget-object v6, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->INT:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    sget-object v7, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->LONG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    sget-object v8, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->DOUBLE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    sget-object v9, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->STRING:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    sget-object v10, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->LIST:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    sget-object v11, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->OBJECT:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    filled-new-array/range {v4 .. v11}, [Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->$VALUES:[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/typesafe/config/ConfigValueType;)V
    .locals 0
    .param p3, "configType"    # Lcom/typesafe/config/ConfigValueType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigValueType;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->configType:Lcom/typesafe/config/ConfigValueType;

    .line 97
    return-void
.end method

.method static forInt(I)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    .locals 1
    .param p0, "b"    # I

    .line 100
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->values()[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 101
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->values()[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static forValue(Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    .locals 6
    .param p0, "value"    # Lcom/typesafe/config/ConfigValue;

    .line 107
    invoke-interface {p0}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    .line 108
    .local v0, "t":Lcom/typesafe/config/ConfigValueType;
    sget-object v1, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    if-ne v0, v1, :cond_2

    .line 109
    instance-of v1, p0, Lcom/typesafe/config/impl/ConfigInt;

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->INT:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    return-object v1

    .line 111
    :cond_0
    instance-of v1, p0, Lcom/typesafe/config/impl/ConfigLong;

    if-eqz v1, :cond_1

    .line 112
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->LONG:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    return-object v1

    .line 113
    :cond_1
    instance-of v1, p0, Lcom/typesafe/config/impl/ConfigDouble;

    if-eqz v1, :cond_4

    .line 114
    sget-object v1, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->DOUBLE:Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    return-object v1

    .line 116
    :cond_2
    invoke-static {}, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->values()[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 117
    .local v4, "st":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    iget-object v5, v4, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->configType:Lcom/typesafe/config/ConfigValueType;

    if-ne v5, v0, :cond_3

    .line 118
    return-object v4

    .line 116
    .end local v4    # "st":Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_4
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t know how to serialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const-class v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;
    .locals 1

    .line 82
    sget-object v0, Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->$VALUES:[Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/SerializedConfigValue$SerializedValueType;

    return-object v0
.end method
