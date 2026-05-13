.class public interface abstract Lcom/typesafe/config/ConfigObject;
.super Ljava/lang/Object;
.source "ConfigObject.java"

# interfaces
.implements Lcom/typesafe/config/ConfigValue;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/typesafe/config/ConfigValue;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/typesafe/config/ConfigValue;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-interface {p0, p1}, Lcom/typesafe/config/ConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public abstract toConfig()Lcom/typesafe/config/Config;
.end method

.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-interface {p0}, Lcom/typesafe/config/ConfigObject;->unwrapped()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract unwrapped()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigMergeable;
    .locals 0

    .line 63
    invoke-interface {p0, p1}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public abstract withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 63
    invoke-interface {p0, p1}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public abstract withOnlyKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
.end method

.method public abstract withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigObject;
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 63
    invoke-interface {p0, p1}, Lcom/typesafe/config/ConfigObject;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public abstract withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/ConfigObject;
.end method

.method public abstract withoutKey(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
.end method
