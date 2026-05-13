.class public final Lio/ktor/server/engine/internal/AutoReloadUtilsKt;
.super Ljava/lang/Object;
.source "AutoReloadUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoReloadUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoReloadUtils.kt\nio/ktor/server/engine/internal/AutoReloadUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1#2:80\n1726#3,3:81\n*S KotlinDebug\n*F\n+ 1 AutoReloadUtils.kt\nio/ktor/server/engine/internal/AutoReloadUtilsKt\n*L\n59#1:81,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0000\u001a\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a\u001c\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0000\u001a&\u0010\u0017\u001a\n\u0012\u0004\u0012\u0002H\u0019\u0018\u00010\u0018\"\u0004\u0008\u0000\u0010\u0019*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00190\u00180\u001aH\u0000\u001a\u0010\u0010\u001b\u001a\u00020\u0011*\u0006\u0012\u0002\u0008\u00030\u0018H\u0000\u001a\u001a\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001*\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000bH\u0000\u001a\u0016\u0010\u001f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010 *\u0006\u0012\u0002\u0008\u00030\u0001H\u0000\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0004\" \u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006!"
    }
    d2 = {
        "ApplicationClassInstance",
        "Ljava/lang/Class;",
        "Lio/ktor/server/application/Application;",
        "getApplicationClassInstance",
        "()Ljava/lang/Class;",
        "ApplicationEnvironmentClassInstance",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "getApplicationEnvironmentClassInstance",
        "currentStartupModules",
        "Ljava/lang/ThreadLocal;",
        "",
        "",
        "getCurrentStartupModules",
        "()Ljava/lang/ThreadLocal;",
        "get_com_sun_nio_file_SensitivityWatchEventModifier_HIGH",
        "Ljava/nio/file/WatchEvent$Modifier;",
        "isApplication",
        "",
        "parameter",
        "Lkotlin/reflect/KParameter;",
        "isApplicationEnvironment",
        "isParameterOfType",
        "type",
        "bestFunction",
        "Lkotlin/reflect/KFunction;",
        "R",
        "",
        "isApplicableFunction",
        "loadClassOrNull",
        "Ljava/lang/ClassLoader;",
        "name",
        "takeIfNotFacade",
        "Lkotlin/reflect/KClass;",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ApplicationClassInstance:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final ApplicationEnvironmentClassInstance:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentStartupModules:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->currentStartupModules:Ljava/lang/ThreadLocal;

    .line 15
    const-class v0, Lio/ktor/server/application/ApplicationEnvironment;

    sput-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->ApplicationEnvironmentClassInstance:Ljava/lang/Class;

    .line 16
    const-class v0, Lio/ktor/server/application/Application;

    sput-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->ApplicationClassInstance:Ljava/lang/Class;

    return-void
.end method

.method public static final bestFunction(Ljava/util/List;)Lkotlin/reflect/KFunction;
    .locals 4
    .param p0, "$this$bestFunction"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KFunction<",
            "+TR;>;>;)",
            "Lkotlin/reflect/KFunction<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 35
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/jvm/functions/Function1;

    .line 34
    sget-object v2, Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$1;->INSTANCE:Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 35
    nop

    .line 34
    sget-object v2, Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;->INSTANCE:Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 35
    nop

    .line 34
    sget-object v2, Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$3;->INSTANCE:Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$3;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 35
    nop

    .line 34
    invoke-static {v1}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KFunction;

    return-object v0
.end method

.method public static final getApplicationClassInstance()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lio/ktor/server/application/Application;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->ApplicationClassInstance:Ljava/lang/Class;

    return-object v0
.end method

.method public static final getApplicationEnvironmentClassInstance()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->ApplicationEnvironmentClassInstance:Ljava/lang/Class;

    return-object v0
.end method

.method public static final getCurrentStartupModules()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 14
    sget-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->currentStartupModules:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final get_com_sun_nio_file_SensitivityWatchEventModifier_HIGH()Ljava/nio/file/WatchEvent$Modifier;
    .locals 5

    .line 69
    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 71
    :cond_0
    nop

    .line 72
    :try_start_0
    const-string v0, "com.sun.nio.file.SensitivityWatchEventModifier"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    .local v0, "modifierClass":Ljava/lang/Class;
    const-string v2, "HIGH"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 74
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/nio/file/WatchEvent$Modifier;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/nio/file/WatchEvent$Modifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 75
    .end local v0    # "modifierClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    .line 76
    .local v0, "cause":Ljava/lang/Throwable;
    nop

    .line 71
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final isApplicableFunction(Lkotlin/reflect/KFunction;)Z
    .locals 10
    .param p0, "$this$isApplicableFunction"    # Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KFunction<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Lkotlin/reflect/KFunction;->isOperator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-interface {p0}, Lkotlin/reflect/KFunction;->isInfix()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p0}, Lkotlin/reflect/KFunction;->isInline()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p0}, Lkotlin/reflect/KFunction;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 43
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/KFunction;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 45
    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KCallable;

    invoke-static {v0}, Lkotlin/reflect/full/KCallables;->getExtensionReceiverParameter(Lkotlin/reflect/KCallable;)Lkotlin/reflect/KParameter;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "it":Lkotlin/reflect/KParameter;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-let-AutoReloadUtilsKt$isApplicableFunction$1":I
    invoke-static {v0}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplication(Lkotlin/reflect/KParameter;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplicationEnvironment(Lkotlin/reflect/KParameter;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 47
    :cond_2
    nop

    .line 45
    .end local v0    # "it":Lkotlin/reflect/KParameter;
    .end local v2    # "$i$a$-let-AutoReloadUtilsKt$isApplicableFunction$1":I
    nop

    .line 49
    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_6

    .local v0, "it":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-let-AutoReloadUtilsKt$isApplicableFunction$2":I
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    .line 54
    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    return v1

    .line 57
    :cond_5
    nop

    .line 49
    .end local v0    # "it":Ljava/lang/reflect/Method;
    .end local v2    # "$i$a$-let-AutoReloadUtilsKt$isApplicableFunction$2":I
    nop

    .line 59
    :cond_6
    invoke-interface {p0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 81
    .local v2, "$i$f$all":I
    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v4

    goto :goto_2

    .line 82
    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lkotlin/reflect/KParameter;

    .local v6, "it":Lkotlin/reflect/KParameter;
    const/4 v7, 0x0

    .line 60
    .local v7, "$i$a$-all-AutoReloadUtilsKt$isApplicableFunction$3":I
    invoke-static {v6}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplication(Lkotlin/reflect/KParameter;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v6}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplicationEnvironment(Lkotlin/reflect/KParameter;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/KParameter$Kind;->INSTANCE:Lkotlin/reflect/KParameter$Kind;

    if-eq v8, v9, :cond_a

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_0

    :cond_9
    move v6, v1

    goto :goto_1

    :cond_a
    :goto_0
    move v6, v4

    .line 82
    .end local v6    # "it":Lkotlin/reflect/KParameter;
    .end local v7    # "$i$a$-all-AutoReloadUtilsKt$isApplicableFunction$3":I
    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    .line 83
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_b
    move v1, v4

    .line 59
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$all":I
    :goto_2
    return v1

    .line 42
    :cond_c
    :goto_3
    return v1
.end method

.method public static final isApplication(Lkotlin/reflect/KParameter;)Z
    .locals 1
    .param p0, "parameter"    # Lkotlin/reflect/KParameter;

    const-string v0, "parameter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->ApplicationClassInstance:Ljava/lang/Class;

    invoke-static {p0, v0}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isParameterOfType(Lkotlin/reflect/KParameter;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static final isApplicationEnvironment(Lkotlin/reflect/KParameter;)Z
    .locals 1
    .param p0, "parameter"    # Lkotlin/reflect/KParameter;

    const-string v0, "parameter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->ApplicationEnvironmentClassInstance:Ljava/lang/Class;

    invoke-static {p0, v0}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isParameterOfType(Lkotlin/reflect/KParameter;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static final isParameterOfType(Lkotlin/reflect/KParameter;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "parameter"    # Lkotlin/reflect/KParameter;
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KParameter;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "parameter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 80
    .local v0, "it":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 31
    .local v1, "$i$a$-let-AutoReloadUtilsKt$isParameterOfType$1":I
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .end local v0    # "it":Ljava/lang/Class;
    .end local v1    # "$i$a$-let-AutoReloadUtilsKt$isParameterOfType$1":I
    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final loadClassOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "$this$loadClassOrNull"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    nop

    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "cause":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 28
    .end local v0    # "cause":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v0
.end method

.method public static final takeIfNotFacade(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 6
    .param p0, "$this$takeIfNotFacade"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const-class v0, Lkotlin/Metadata;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v2, v0

    .line 80
    .local v2, "it":Lkotlin/Metadata;
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$a$-takeIf-AutoReloadUtilsKt$takeIfNotFacade$1":I
    invoke-interface {v2}, Lkotlin/Metadata;->k()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .end local v2    # "it":Lkotlin/Metadata;
    .end local v3    # "$i$a$-takeIf-AutoReloadUtilsKt$takeIfNotFacade$1":I
    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    :cond_3
    return-object v1
.end method
