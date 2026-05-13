.class public final Lcom/typesafe/config/ConfigResolveOptions;
.super Ljava/lang/Object;
.source "ConfigResolveOptions.java"


# static fields
.field private static final NULL_RESOLVER:Lcom/typesafe/config/ConfigResolver;


# instance fields
.field private final allowUnresolved:Z

.field private final resolver:Lcom/typesafe/config/ConfigResolver;

.field private final useSystemEnvironment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Lcom/typesafe/config/ConfigResolveOptions$1;

    invoke-direct {v0}, Lcom/typesafe/config/ConfigResolveOptions$1;-><init>()V

    sput-object v0, Lcom/typesafe/config/ConfigResolveOptions;->NULL_RESOLVER:Lcom/typesafe/config/ConfigResolver;

    return-void
.end method

.method private constructor <init>(ZZLcom/typesafe/config/ConfigResolver;)V
    .locals 0
    .param p1, "useSystemEnvironment"    # Z
    .param p2, "allowUnresolved"    # Z
    .param p3, "resolver"    # Lcom/typesafe/config/ConfigResolver;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/typesafe/config/ConfigResolveOptions;->useSystemEnvironment:Z

    .line 37
    iput-boolean p2, p0, Lcom/typesafe/config/ConfigResolveOptions;->allowUnresolved:Z

    .line 38
    iput-object p3, p0, Lcom/typesafe/config/ConfigResolveOptions;->resolver:Lcom/typesafe/config/ConfigResolver;

    .line 39
    return-void
.end method

.method public static defaults()Lcom/typesafe/config/ConfigResolveOptions;
    .locals 4

    .line 48
    new-instance v0, Lcom/typesafe/config/ConfigResolveOptions;

    const/4 v1, 0x0

    sget-object v2, Lcom/typesafe/config/ConfigResolveOptions;->NULL_RESOLVER:Lcom/typesafe/config/ConfigResolver;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/typesafe/config/ConfigResolveOptions;-><init>(ZZLcom/typesafe/config/ConfigResolver;)V

    return-object v0
.end method

.method public static noSystem()Lcom/typesafe/config/ConfigResolveOptions;
    .locals 2

    .line 58
    invoke-static {}, Lcom/typesafe/config/ConfigResolveOptions;->defaults()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/typesafe/config/ConfigResolveOptions;->setUseSystemEnvironment(Z)Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendResolver(Lcom/typesafe/config/ConfigResolver;)Lcom/typesafe/config/ConfigResolveOptions;
    .locals 4
    .param p1, "value"    # Lcom/typesafe/config/ConfigResolver;

    .line 126
    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/typesafe/config/ConfigResolveOptions;->resolver:Lcom/typesafe/config/ConfigResolver;

    if-ne p1, v0, :cond_0

    .line 129
    return-object p0

    .line 131
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigResolveOptions;

    iget-boolean v1, p0, Lcom/typesafe/config/ConfigResolveOptions;->useSystemEnvironment:Z

    iget-boolean v2, p0, Lcom/typesafe/config/ConfigResolveOptions;->allowUnresolved:Z

    iget-object v3, p0, Lcom/typesafe/config/ConfigResolveOptions;->resolver:Lcom/typesafe/config/ConfigResolver;

    .line 132
    invoke-interface {v3, p1}, Lcom/typesafe/config/ConfigResolver;->withFallback(Lcom/typesafe/config/ConfigResolver;)Lcom/typesafe/config/ConfigResolver;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/typesafe/config/ConfigResolveOptions;-><init>(ZZLcom/typesafe/config/ConfigResolver;)V

    .line 131
    return-object v0

    .line 127
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "null resolver passed to appendResolver"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllowUnresolved()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigResolveOptions;->allowUnresolved:Z

    return v0
.end method

.method public getResolver()Lcom/typesafe/config/ConfigResolver;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/typesafe/config/ConfigResolveOptions;->resolver:Lcom/typesafe/config/ConfigResolver;

    return-object v0
.end method

.method public getUseSystemEnvironment()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigResolveOptions;->useSystemEnvironment:Z

    return v0
.end method

.method public setAllowUnresolved(Z)Lcom/typesafe/config/ConfigResolveOptions;
    .locals 3
    .param p1, "value"    # Z

    .line 97
    new-instance v0, Lcom/typesafe/config/ConfigResolveOptions;

    iget-boolean v1, p0, Lcom/typesafe/config/ConfigResolveOptions;->useSystemEnvironment:Z

    iget-object v2, p0, Lcom/typesafe/config/ConfigResolveOptions;->resolver:Lcom/typesafe/config/ConfigResolver;

    invoke-direct {v0, v1, p1, v2}, Lcom/typesafe/config/ConfigResolveOptions;-><init>(ZZLcom/typesafe/config/ConfigResolver;)V

    return-object v0
.end method

.method public setUseSystemEnvironment(Z)Lcom/typesafe/config/ConfigResolveOptions;
    .locals 3
    .param p1, "value"    # Z

    .line 70
    new-instance v0, Lcom/typesafe/config/ConfigResolveOptions;

    iget-boolean v1, p0, Lcom/typesafe/config/ConfigResolveOptions;->allowUnresolved:Z

    iget-object v2, p0, Lcom/typesafe/config/ConfigResolveOptions;->resolver:Lcom/typesafe/config/ConfigResolver;

    invoke-direct {v0, p1, v1, v2}, Lcom/typesafe/config/ConfigResolveOptions;-><init>(ZZLcom/typesafe/config/ConfigResolver;)V

    return-object v0
.end method
