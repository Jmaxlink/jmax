.class public final Lcom/typesafe/config/ConfigOriginFactory;
.super Ljava/lang/Object;
.source "ConfigOriginFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static newFile(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->newFileOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static newSimple()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/typesafe/config/ConfigOriginFactory;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static newSimple(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "description"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->newSimpleOrigin(Ljava/lang/String;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static newURL(Ljava/net/URL;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 66
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->newURLOrigin(Ljava/net/URL;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    return-object v0
.end method
