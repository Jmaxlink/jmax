.class public final Lio/netty/handler/codec/serialization/ClassResolvers;
.super Ljava/lang/Object;
.source "ClassResolvers.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static cacheDisabled(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 2
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 45
    new-instance v0, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method static defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 103
    if-eqz p0, :cond_0

    .line 104
    return-object p0

    .line 107
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 108
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 109
    return-object v0

    .line 112
    :cond_1
    const-class v1, Lio/netty/handler/codec/serialization/ClassResolvers;

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method public static softCachingConcurrentResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 96
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 97
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lio/netty/handler/codec/serialization/SoftReferenceMap;

    .line 99
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/serialization/SoftReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    .line 96
    return-object v0
.end method

.method public static softCachingResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 69
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 70
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lio/netty/handler/codec/serialization/SoftReferenceMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v3}, Lio/netty/handler/codec/serialization/SoftReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    .line 69
    return-object v0
.end method

.method public static weakCachingConcurrentResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 82
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 83
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lio/netty/handler/codec/serialization/WeakReferenceMap;

    .line 85
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/serialization/WeakReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    .line 82
    return-object v0
.end method

.method public static weakCachingResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 56
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 57
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lio/netty/handler/codec/serialization/WeakReferenceMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v3}, Lio/netty/handler/codec/serialization/WeakReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    .line 56
    return-object v0
.end method
