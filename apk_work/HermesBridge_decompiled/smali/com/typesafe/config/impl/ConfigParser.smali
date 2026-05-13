.class final Lcom/typesafe/config/impl/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/ConfigParser$ParseContext;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigIncludeContext;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 7
    .param p0, "document"    # Lcom/typesafe/config/impl/ConfigNodeRoot;
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p3, "includeContext"    # Lcom/typesafe/config/ConfigIncludeContext;

    .line 23
    new-instance v6, Lcom/typesafe/config/impl/ConfigParser$ParseContext;

    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v1

    .line 24
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getIncluder()Lcom/typesafe/config/ConfigIncluder;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleIncluder;->makeFull(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/impl/FullIncluder;

    move-result-object v4

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;-><init>(Lcom/typesafe/config/ConfigSyntax;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/impl/FullIncluder;Lcom/typesafe/config/ConfigIncludeContext;)V

    .line 25
    .local v0, "context":Lcom/typesafe/config/impl/ConfigParser$ParseContext;
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parse()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1
.end method
