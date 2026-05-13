.class final Lcom/typesafe/config/ConfigResolveOptions$1;
.super Ljava/lang/Object;
.source "ConfigResolveOptions.java"

# interfaces
.implements Lcom/typesafe/config/ConfigResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/ConfigResolveOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public withFallback(Lcom/typesafe/config/ConfigResolver;)Lcom/typesafe/config/ConfigResolver;
    .locals 0
    .param p1, "fallback"    # Lcom/typesafe/config/ConfigResolver;

    .line 171
    return-object p1
.end method
