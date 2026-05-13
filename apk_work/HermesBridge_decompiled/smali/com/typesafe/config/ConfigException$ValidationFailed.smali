.class public Lcom/typesafe/config/ConfigException$ValidationFailed;
.super Lcom/typesafe/config/ConfigException;
.source "ConfigException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/ConfigException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationFailed"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final problems:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p1, "problems":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-static {p1}, Lcom/typesafe/config/ConfigException$ValidationFailed;->makeMessage(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/typesafe/config/ConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    iput-object p1, p0, Lcom/typesafe/config/ConfigException$ValidationFailed;->problems:Ljava/lang/Iterable;

    .line 404
    return-void
.end method

.method private static makeMessage(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 411
    .local p0, "problems":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/ConfigException$ValidationProblem;

    .line 413
    .local v2, "p":Lcom/typesafe/config/ConfigException$ValidationProblem;
    invoke-virtual {v2}, Lcom/typesafe/config/ConfigException$ValidationProblem;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v3

    invoke-interface {v3}, Lcom/typesafe/config/ConfigOrigin;->description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v2}, Lcom/typesafe/config/ConfigException$ValidationProblem;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2}, Lcom/typesafe/config/ConfigException$ValidationProblem;->problem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .end local v2    # "p":Lcom/typesafe/config/ConfigException$ValidationProblem;
    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 421
    :cond_1
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "ValidationFailed must have a non-empty list of problems"

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public problems()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/typesafe/config/ConfigException$ValidationFailed;->problems:Ljava/lang/Iterable;

    return-object v0
.end method
