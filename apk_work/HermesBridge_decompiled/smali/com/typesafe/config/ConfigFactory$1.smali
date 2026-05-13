.class final Lcom/typesafe/config/ConfigFactory$1;
.super Ljava/lang/Object;
.source "ConfigFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;)Lcom/typesafe/config/Config;
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

.field final synthetic val$withLoader:Lcom/typesafe/config/ConfigParseOptions;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/typesafe/config/ConfigFactory$1;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/typesafe/config/ConfigFactory$1;->val$withLoader:Lcom/typesafe/config/ConfigParseOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/typesafe/config/Config;
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/typesafe/config/ConfigFactory$1;->val$loader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/typesafe/config/ConfigFactory$1;->val$withLoader:Lcom/typesafe/config/ConfigParseOptions;

    invoke-static {v1}, Lcom/typesafe/config/ConfigFactory;->defaultApplication(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/ClassLoader;Lcom/typesafe/config/Config;)Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/typesafe/config/ConfigFactory$1;->call()Lcom/typesafe/config/Config;

    move-result-object v0

    return-object v0
.end method
