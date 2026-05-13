.class final Lcom/typesafe/config/impl/ConfigBoolean;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "ConfigBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final value:Z


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Z)V
    .locals 0
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "value"    # Z

    .line 19
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 20
    iput-boolean p2, p0, Lcom/typesafe/config/impl/ConfigBoolean;->value:Z

    .line 21
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/ConfigValue;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigBoolean;->newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigBoolean;

    move-result-object p1

    return-object p1
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/ConfigBoolean;
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 40
    new-instance v0, Lcom/typesafe/config/impl/ConfigBoolean;

    iget-boolean v1, p0, Lcom/typesafe/config/impl/ConfigBoolean;->value:Z

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    return-object v0
.end method

.method transformToString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/typesafe/config/impl/ConfigBoolean;->value:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public unwrapped()Ljava/lang/Boolean;
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/typesafe/config/impl/ConfigBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigBoolean;->unwrapped()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 1

    .line 25
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->BOOLEAN:Lcom/typesafe/config/ConfigValueType;

    return-object v0
.end method
