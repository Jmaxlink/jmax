.class public abstract Lcom/typesafe/config/ConfigException;
.super Ljava/lang/RuntimeException;
.source "ConfigException.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/ConfigException$Generic;,
        Lcom/typesafe/config/ConfigException$BadBean;,
        Lcom/typesafe/config/ConfigException$ValidationFailed;,
        Lcom/typesafe/config/ConfigException$ValidationProblem;,
        Lcom/typesafe/config/ConfigException$NotResolved;,
        Lcom/typesafe/config/ConfigException$UnresolvedSubstitution;,
        Lcom/typesafe/config/ConfigException$Parse;,
        Lcom/typesafe/config/ConfigException$IO;,
        Lcom/typesafe/config/ConfigException$BugOrBroken;,
        Lcom/typesafe/config/ConfigException$BadPath;,
        Lcom/typesafe/config/ConfigException$BadValue;,
        Lcom/typesafe/config/ConfigException$Null;,
        Lcom/typesafe/config/ConfigException$Missing;,
        Lcom/typesafe/config/ConfigException$WrongType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient origin:Lcom/typesafe/config/ConfigOrigin;


# direct methods
.method protected constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "message"    # Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/typesafe/config/ConfigOrigin;->description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/typesafe/config/ConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/typesafe/config/ConfigOrigin;->description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iput-object p1, p0, Lcom/typesafe/config/ConfigException;->origin:Lcom/typesafe/config/ConfigOrigin;

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/ConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/typesafe/config/ConfigException;->origin:Lcom/typesafe/config/ConfigOrigin;

    .line 34
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Class;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-static {p0, p1, p2}, Lcom/typesafe/config/ConfigException;->setOriginField(Ljava/lang/Object;Ljava/lang/Class;Lcom/typesafe/config/ConfigOrigin;)V

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

    .line 86
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 87
    invoke-static {p1}, Lcom/typesafe/config/impl/ConfigImplUtil;->readOrigin(Ljava/io/ObjectInputStream;)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    .line 88
    .local v0, "origin":Lcom/typesafe/config/ConfigOrigin;
    const-class v1, Lcom/typesafe/config/ConfigException;

    invoke-static {p0, v1, v0}, Lcom/typesafe/config/ConfigException;->setOriginField(Ljava/lang/Object;Ljava/lang/Class;Lcom/typesafe/config/ConfigOrigin;)V

    .line 89
    return-void
.end method

.method private static setOriginField(Ljava/lang/Object;Ljava/lang/Class;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 4
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/typesafe/config/ConfigOrigin;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p0, "hasOriginField":Ljava/lang/Object;, "TT;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "unable to set origin field"

    :try_start_0
    const-string v1, "origin"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .local v1, "f":Ljava/lang/reflect/Field;
    nop

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    :try_start_1
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    nop

    .line 82
    return-void

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 77
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 70
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to fill out origin field in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no origin field?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 58
    iget-object v0, p0, Lcom/typesafe/config/ConfigException;->origin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->writeOrigin(Ljava/io/ObjectOutputStream;Lcom/typesafe/config/ConfigOrigin;)V

    .line 59
    return-void
.end method


# virtual methods
.method public origin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/typesafe/config/ConfigException;->origin:Lcom/typesafe/config/ConfigOrigin;

    return-object v0
.end method
