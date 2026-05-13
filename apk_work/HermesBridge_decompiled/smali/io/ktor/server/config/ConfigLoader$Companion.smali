.class public final Lio/ktor/server/config/ConfigLoader$Companion;
.super Ljava/lang/Object;
.source "ConfigLoaders.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/config/ConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0016\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/ktor/server/config/ConfigLoader$Companion;",
        "",
        "()V",
        "loadDefault",
        "Lio/ktor/server/config/ApplicationConfig;",
        "load",
        "path",
        "",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lio/ktor/server/config/ConfigLoader$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/config/ConfigLoader$Companion;

    invoke-direct {v0}, Lio/ktor/server/config/ConfigLoader$Companion;-><init>()V

    sput-object v0, Lio/ktor/server/config/ConfigLoader$Companion;->$$INSTANCE:Lio/ktor/server/config/ConfigLoader$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic load$default(Lio/ktor/server/config/ConfigLoader$Companion;Lio/ktor/server/config/ConfigLoader$Companion;Ljava/lang/String;ILjava/lang/Object;)Lio/ktor/server/config/ApplicationConfig;
    .locals 0

    .line 26
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/config/ConfigLoader$Companion;->load(Lio/ktor/server/config/ConfigLoader$Companion;Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object p0

    return-object p0
.end method

.method private final loadDefault()Lio/ktor/server/config/ApplicationConfig;
    .locals 5

    .line 41
    invoke-static {}, Lio/ktor/server/config/ConfigLoadersJvmKt;->getCONFIG_PATH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    .local v1, "defaultPath":Ljava/lang/String;
    invoke-static {}, Lio/ktor/server/config/ConfigLoadersJvmKt;->getConfigLoaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/server/config/ConfigLoader;

    .line 43
    .local v3, "loader":Lio/ktor/server/config/ConfigLoader;
    invoke-interface {v3, v1}, Lio/ktor/server/config/ConfigLoader;->load(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v4

    .line 44
    .local v4, "config":Lio/ktor/server/config/ApplicationConfig;
    if-eqz v4, :cond_1

    return-object v4

    .line 48
    .end local v1    # "defaultPath":Ljava/lang/String;
    .end local v3    # "loader":Lio/ktor/server/config/ConfigLoader;
    .end local v4    # "config":Lio/ktor/server/config/ApplicationConfig;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final load(Lio/ktor/server/config/ConfigLoader$Companion;Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;
    .locals 3
    .param p1, "$this$load"    # Lio/ktor/server/config/ConfigLoader$Companion;
    .param p2, "path"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    if-nez p2, :cond_0

    .line 28
    invoke-direct {p1}, Lio/ktor/server/config/ConfigLoader$Companion;->loadDefault()Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    .line 29
    .local v0, "default":Lio/ktor/server/config/ApplicationConfig;
    if-eqz v0, :cond_0

    return-object v0

    .line 32
    .end local v0    # "default":Lio/ktor/server/config/ApplicationConfig;
    :cond_0
    invoke-static {}, Lio/ktor/server/config/ConfigLoadersJvmKt;->getConfigLoaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/server/config/ConfigLoader;

    .line 33
    .local v1, "loader":Lio/ktor/server/config/ConfigLoader;
    invoke-interface {v1, p2}, Lio/ktor/server/config/ConfigLoader;->load(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v2

    .line 34
    .local v2, "config":Lio/ktor/server/config/ApplicationConfig;
    if-eqz v2, :cond_1

    return-object v2

    .line 37
    .end local v1    # "loader":Lio/ktor/server/config/ConfigLoader;
    .end local v2    # "config":Lio/ktor/server/config/ApplicationConfig;
    :cond_2
    new-instance v0, Lio/ktor/server/config/MapApplicationConfig;

    invoke-direct {v0}, Lio/ktor/server/config/MapApplicationConfig;-><init>()V

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method
