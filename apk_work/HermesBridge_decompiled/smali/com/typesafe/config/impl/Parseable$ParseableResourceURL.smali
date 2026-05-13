.class final Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;
.super Lcom/typesafe/config/impl/Parseable$ParseableURL;
.source "Parseable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Parseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseableResourceURL"
.end annotation


# instance fields
.field private final relativizer:Lcom/typesafe/config/impl/Parseable$Relativizer;

.field private final resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;Lcom/typesafe/config/impl/Parseable$Relativizer;)V
    .locals 0
    .param p1, "input"    # Ljava/net/URL;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p3, "resource"    # Ljava/lang/String;
    .param p4, "relativizer"    # Lcom/typesafe/config/impl/Parseable$Relativizer;

    .line 680
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableURL;-><init>(Ljava/net/URL;)V

    .line 681
    iput-object p4, p0, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;->relativizer:Lcom/typesafe/config/impl/Parseable$Relativizer;

    .line 682
    iput-object p3, p0, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;->resource:Ljava/lang/String;

    .line 683
    invoke-virtual {p0, p2}, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;->postConstruct(Lcom/typesafe/config/ConfigParseOptions;)V

    .line 684
    return-void
.end method


# virtual methods
.method protected createOrigin()Lcom/typesafe/config/ConfigOrigin;
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;->resource:Ljava/lang/String;

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;->input:Ljava/net/URL;

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newResource(Ljava/lang/String;Ljava/net/URL;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;->relativizer:Lcom/typesafe/config/impl/Parseable$Relativizer;

    invoke-interface {v0, p1}, Lcom/typesafe/config/impl/Parseable$Relativizer;->relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v0

    return-object v0
.end method
