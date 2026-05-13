.class public interface abstract Lcom/typesafe/config/ConfigList;
.super Ljava/lang/Object;
.source "ConfigList.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/typesafe/config/ConfigValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Lcom/typesafe/config/ConfigValue;",
        ">;",
        "Lcom/typesafe/config/ConfigValue;"
    }
.end annotation


# virtual methods
.method public bridge synthetic unwrapped()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-interface {p0}, Lcom/typesafe/config/ConfigList;->unwrapped()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract unwrapped()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigList;
.end method

.method public bridge synthetic withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 35
    invoke-interface {p0, p1}, Lcom/typesafe/config/ConfigList;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/ConfigList;

    move-result-object p1

    return-object p1
.end method
