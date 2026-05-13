.class final Lcom/typesafe/config/impl/Parseable$ParseableNotFound;
.super Lcom/typesafe/config/impl/Parseable;
.source "Parseable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Parseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseableNotFound"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final what:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 400
    invoke-direct {p0}, Lcom/typesafe/config/impl/Parseable;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/typesafe/config/impl/Parseable$ParseableNotFound;->what:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lcom/typesafe/config/impl/Parseable$ParseableNotFound;->message:Ljava/lang/String;

    .line 403
    invoke-virtual {p0, p3}, Lcom/typesafe/config/impl/Parseable$ParseableNotFound;->postConstruct(Lcom/typesafe/config/ConfigParseOptions;)V

    .line 404
    return-void
.end method


# virtual methods
.method protected createOrigin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableNotFound;->what:Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method protected reader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableNotFound;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
