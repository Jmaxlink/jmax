.class public Lcom/typesafe/config/ConfigException$ValidationProblem;
.super Ljava/lang/Object;
.source "ConfigException.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/ConfigException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationProblem"
.end annotation


# instance fields
.field private final transient origin:Lcom/typesafe/config/ConfigOrigin;

.field private final path:Ljava/lang/String;

.field private final problem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "problem"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->path:Ljava/lang/String;

    .line 341
    iput-object p2, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->origin:Lcom/typesafe/config/ConfigOrigin;

    .line 342
    iput-object p3, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->problem:Ljava/lang/String;

    .line 343
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 380
    invoke-static {p1}, Lcom/typesafe/config/impl/ConfigImplUtil;->readOrigin(Ljava/io/ObjectInputStream;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    .line 381
    .local v0, "origin":Lcom/typesafe/config/ConfigOrigin;
    const-class v1, Lcom/typesafe/config/ConfigException$ValidationProblem;

    invoke-static {p0, v1, v0}, Lcom/typesafe/config/ConfigException;->access$000(Ljava/lang/Object;Ljava/lang/Class;Lcom/typesafe/config/ConfigOrigin;)V

    .line 382
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 374
    iget-object v0, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->origin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->writeOrigin(Ljava/io/ObjectOutputStream;Lcom/typesafe/config/ConfigOrigin;)V

    .line 375
    return-void
.end method


# virtual methods
.method public origin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->origin:Lcom/typesafe/config/ConfigOrigin;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public problem()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->problem:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidationProblem("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->origin:Lcom/typesafe/config/ConfigOrigin;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/ConfigException$ValidationProblem;->problem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
