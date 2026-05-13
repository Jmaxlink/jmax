.class Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;
.super Ljava/lang/Object;
.source "ConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugHolder"
.end annotation


# static fields
.field private static LOADS:Ljava/lang/String;

.field private static SUBSTITUTIONS:Ljava/lang/String;

.field private static final diagnostics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final traceLoadsEnabled:Z

.field private static final traceSubstitutionsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 447
    const-string v0, "loads"

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->LOADS:Ljava/lang/String;

    .line 448
    const-string v0, "substitutions"

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->SUBSTITUTIONS:Ljava/lang/String;

    .line 475
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->loadDiagnostics()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->diagnostics:Ljava/util/Map;

    .line 477
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->diagnostics:Ljava/util/Map;

    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->LOADS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->traceLoadsEnabled:Z

    .line 478
    sget-object v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->diagnostics:Ljava/util/Map;

    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->SUBSTITUTIONS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->traceSubstitutionsEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadDiagnostics()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 452
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->LOADS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v1, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->SUBSTITUTIONS:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v1, "config.trace"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 458
    return-object v0

    .line 460
    :cond_0
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "keys":[Ljava/lang/String;
    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 462
    .local v5, "k":Ljava/lang/String;
    sget-object v6, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->LOADS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 463
    sget-object v6, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->LOADS:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 464
    :cond_1
    sget-object v6, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->SUBSTITUTIONS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 465
    sget-object v6, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->SUBSTITUTIONS:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 467
    :cond_2
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config.trace property contains unknown trace topic \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    .end local v5    # "k":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_3
    return-object v0
.end method

.method static traceLoadsEnabled()Z
    .locals 1

    .line 481
    sget-boolean v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->traceLoadsEnabled:Z

    return v0
.end method

.method static traceSubstitutionsEnabled()Z
    .locals 1

    .line 485
    sget-boolean v0, Lcom/typesafe/config/impl/ConfigImpl$DebugHolder;->traceSubstitutionsEnabled:Z

    return v0
.end method
