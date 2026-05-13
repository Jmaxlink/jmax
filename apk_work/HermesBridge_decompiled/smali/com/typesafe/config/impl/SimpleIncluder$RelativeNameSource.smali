.class Lcom/typesafe/config/impl/SimpleIncluder$RelativeNameSource;
.super Ljava/lang/Object;
.source "SimpleIncluder.java"

# interfaces
.implements Lcom/typesafe/config/impl/SimpleIncluder$NameSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SimpleIncluder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelativeNameSource"
.end annotation


# instance fields
.field private final context:Lcom/typesafe/config/ConfigIncludeContext;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigIncludeContext;)V
    .locals 0
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleIncluder$RelativeNameSource;->context:Lcom/typesafe/config/ConfigIncludeContext;

    .line 148
    return-void
.end method


# virtual methods
.method public nameToParseable(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 152
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$RelativeNameSource;->context:Lcom/typesafe/config/ConfigIncludeContext;

    invoke-interface {v0, p1}, Lcom/typesafe/config/ConfigIncludeContext;->relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v0

    .line 153
    .local v0, "p":Lcom/typesafe/config/ConfigParseable;
    if-nez v0, :cond_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "include was not found: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {p1, v1, p2}, Lcom/typesafe/config/impl/Parseable;->newNotFound(Ljava/lang/String;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v1

    .line 155
    return-object v1

    .line 158
    :cond_0
    return-object v0
.end method
