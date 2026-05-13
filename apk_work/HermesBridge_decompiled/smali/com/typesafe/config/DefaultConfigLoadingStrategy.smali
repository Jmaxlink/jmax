.class public Lcom/typesafe/config/DefaultConfigLoadingStrategy;
.super Ljava/lang/Object;
.source "DefaultConfigLoadingStrategy.java"

# interfaces
.implements Lcom/typesafe/config/ConfigLoadingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$parseApplicationConfig$0(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 1
    .param p0, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 12
    const-string v0, "application"

    invoke-static {v0, p0}, Lcom/typesafe/config/ConfigFactory;->parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseApplicationConfig(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;
    .locals 2
    .param p1, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 11
    invoke-static {p1}, Lcom/typesafe/config/ConfigFactory;->parseApplicationReplacement(Lcom/typesafe/config/ConfigParseOptions;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/typesafe/config/DefaultConfigLoadingStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/typesafe/config/DefaultConfigLoadingStrategy$$ExternalSyntheticLambda0;-><init>(Lcom/typesafe/config/ConfigParseOptions;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/Config;

    .line 11
    return-object v0
.end method
