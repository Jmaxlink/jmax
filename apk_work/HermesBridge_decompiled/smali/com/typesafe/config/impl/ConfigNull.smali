.class final Lcom/typesafe/config/impl/ConfigNull;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "ConfigNull.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 26
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 27
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigNull;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigNull;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigNull;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 51
    new-instance v0, Lcom/typesafe/config/impl/ConfigNull;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/ConfigNull;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    return-object v0
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 46
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    return-void
.end method

.method transformToString()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "null"

    return-object v0
.end method

.method public unwrapped()Ljava/lang/Object;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 31
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method
