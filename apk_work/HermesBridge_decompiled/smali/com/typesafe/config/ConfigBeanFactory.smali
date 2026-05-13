.class public Lcom/typesafe/config/ConfigBeanFactory;
.super Ljava/lang/Object;
.source "ConfigBeanFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/typesafe/config/Config;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "config"    # Lcom/typesafe/config/Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/typesafe/config/Config;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/ConfigBeanImpl;->createInternal(Lcom/typesafe/config/Config;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
