.class public interface abstract Lcom/typesafe/config/ConfigValue;
.super Ljava/lang/Object;
.source "ConfigValue.java"

# interfaces
.implements Lcom/typesafe/config/ConfigMergeable;


# virtual methods
.method public abstract atKey(Ljava/lang/String;)Lcom/typesafe/config/Config;
.end method

.method public abstract atPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
.end method

.method public abstract origin()Lcom/typesafe/config/ConfigOrigin;
.end method

.method public abstract render()Ljava/lang/String;
.end method

.method public abstract render(Lcom/typesafe/config/ConfigRenderOptions;)Ljava/lang/String;
.end method

.method public abstract unwrapped()Ljava/lang/Object;
.end method

.method public abstract valueType()Lcom/typesafe/config/ConfigValueType;
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigMergeable;
    .locals 0

    .line 21
    invoke-interface {p0, p1}, Lcom/typesafe/config/ConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public abstract withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigValue;
.end method

.method public abstract withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigValue;
.end method
