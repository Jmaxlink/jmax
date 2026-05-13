.class Lcom/typesafe/config/impl/ConfigImpl$ClasspathNameSource;
.super Ljava/lang/Object;
.source "ConfigImpl.java"

# interfaces
.implements Lcom/typesafe/config/impl/SimpleIncluder$NameSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClasspathNameSource"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nameToParseable(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 107
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/Parseable;->newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0
.end method
