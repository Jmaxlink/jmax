.class public final Lcom/typesafe/config/ConfigUtil;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static joinPath(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->joinPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs joinPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "elements"    # [Ljava/lang/String;

    .line 43
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->joinPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->splitPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
