.class Lcom/typesafe/config/impl/SimpleIncluder$Proxy;
.super Ljava/lang/Object;
.source "SimpleIncluder.java"

# interfaces
.implements Lcom/typesafe/config/impl/FullIncluder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SimpleIncluder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field final delegate:Lcom/typesafe/config/ConfigIncluder;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigIncluder;)V
    .locals 0
    .param p1, "delegate"    # Lcom/typesafe/config/ConfigIncluder;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    .line 258
    return-void
.end method


# virtual methods
.method public include(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "what"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    invoke-interface {v0, p1, p2}, Lcom/typesafe/config/ConfigIncluder;->include(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public includeFile(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "what"    # Ljava/io/File;

    .line 289
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    instance-of v0, v0, Lcom/typesafe/config/ConfigIncluderFile;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    check-cast v0, Lcom/typesafe/config/ConfigIncluderFile;

    invoke-interface {v0, p1, p2}, Lcom/typesafe/config/ConfigIncluderFile;->includeFile(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->includeFileWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public includeResources(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "what"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    instance-of v0, v0, Lcom/typesafe/config/ConfigIncluderClasspath;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    check-cast v0, Lcom/typesafe/config/ConfigIncluderClasspath;

    invoke-interface {v0, p1, p2}, Lcom/typesafe/config/ConfigIncluderClasspath;->includeResources(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->includeResourceWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public includeURL(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "what"    # Ljava/net/URL;

    .line 281
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    instance-of v0, v0, Lcom/typesafe/config/ConfigIncluderURL;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;->delegate:Lcom/typesafe/config/ConfigIncluder;

    check-cast v0, Lcom/typesafe/config/ConfigIncluderURL;

    invoke-interface {v0, p1, p2}, Lcom/typesafe/config/ConfigIncluderURL;->includeURL(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->includeURLWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public withFallback(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigIncluder;
    .locals 0
    .param p1, "fallback"    # Lcom/typesafe/config/ConfigIncluder;

    .line 263
    return-object p0
.end method
