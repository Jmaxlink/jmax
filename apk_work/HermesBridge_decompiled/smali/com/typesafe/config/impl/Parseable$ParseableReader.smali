.class final Lcom/typesafe/config/impl/Parseable$ParseableReader;
.super Lcom/typesafe/config/impl/Parseable;
.source "Parseable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Parseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseableReader"
.end annotation


# instance fields
.field private final reader:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 425
    invoke-direct {p0}, Lcom/typesafe/config/impl/Parseable;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/typesafe/config/impl/Parseable$ParseableReader;->reader:Ljava/io/Reader;

    .line 427
    invoke-virtual {p0, p2}, Lcom/typesafe/config/impl/Parseable$ParseableReader;->postConstruct(Lcom/typesafe/config/ConfigParseOptions;)V

    .line 428
    return-void
.end method


# virtual methods
.method protected createOrigin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 439
    const-string v0, "Reader"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method protected reader()Ljava/io/Reader;
    .locals 2

    .line 432
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading config from reader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/Parseable$ParseableReader;->trace(Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableReader;->reader:Ljava/io/Reader;

    return-object v0
.end method
