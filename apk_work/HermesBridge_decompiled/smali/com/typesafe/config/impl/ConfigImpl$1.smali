.class final Lcom/typesafe/config/impl/ConfigImpl$1;
.super Ljava/lang/Object;
.source "ConfigImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/typesafe/config/impl/ConfigImpl;->defaultReference(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/typesafe/config/Config;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/typesafe/config/impl/ConfigImpl$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/typesafe/config/Config;
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->access$300(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;

    move-result-object v0

    .line 412
    .local v0, "unresolvedResources":Lcom/typesafe/config/Config;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->systemPropertiesAsConfig()Lcom/typesafe/config/Config;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/typesafe/config/Config;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/Config;

    move-result-object v1

    invoke-interface {v1}, Lcom/typesafe/config/Config;->resolve()Lcom/typesafe/config/Config;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigImpl$1;->call()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method
