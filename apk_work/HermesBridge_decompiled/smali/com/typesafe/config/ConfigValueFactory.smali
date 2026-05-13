.class public final Lcom/typesafe/config/ConfigValueFactory;
.super Ljava/lang/Object;
.source "ConfigValueFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static fromAnyRef(Ljava/lang/Object;)Lcom/typesafe/config/ConfigValue;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigValueFactory;->fromAnyRef(Ljava/lang/Object;Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public static fromAnyRef(Ljava/lang/Object;Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "originDescription"    # Ljava/lang/String;

    .line 72
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/ConfigImpl;->fromAnyRef(Ljava/lang/Object;Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lcom/typesafe/config/ConfigList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/typesafe/config/ConfigList;"
        }
    .end annotation

    .line 151
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigValueFactory;->fromIterable(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/typesafe/config/ConfigList;
    .locals 1
    .param p1, "originDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/typesafe/config/ConfigList;"
        }
    .end annotation

    .line 114
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/typesafe/config/ConfigValueFactory;->fromAnyRef(Ljava/lang/Object;Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/ConfigList;

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/typesafe/config/ConfigObject;"
        }
    .end annotation

    .line 140
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/typesafe/config/ConfigValueFactory;->fromMap(Ljava/util/Map;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p1, "originDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/typesafe/config/ConfigObject;"
        }
    .end annotation

    .line 100
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/typesafe/config/ConfigValueFactory;->fromAnyRef(Ljava/lang/Object;Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/ConfigObject;

    return-object v0
.end method
