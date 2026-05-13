.class public final Lio/ktor/server/util/ParametersKt;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Parameters.kt\nio/ktor/server/util/ParametersKt\n+ 2 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,64:1\n51#1:65\n17#2,3:66\n17#2,3:69\n*S KotlinDebug\n*F\n+ 1 Parameters.kt\nio/ktor/server/util/ParametersKt\n*L\n31#1:65\n31#1:66,3\n51#1:69,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0086\u0008\u001a&\u0010\u0000\u001a\u0002H\u0004\"\n\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u0006\u001a+\u0010\u0007\u001a\u0002H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0001\u00a2\u0006\u0002\u0010\n\u001a4\u0010\u000b\u001a\u0002H\u0004\"\n\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0005*\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0086\n\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "getOrFail",
        "",
        "Lio/ktor/http/Parameters;",
        "name",
        "R",
        "",
        "(Lio/ktor/http/Parameters;Ljava/lang/String;)Ljava/lang/Object;",
        "getOrFailImpl",
        "typeInfo",
        "Lio/ktor/util/reflect/TypeInfo;",
        "(Lio/ktor/http/Parameters;Ljava/lang/String;Lio/ktor/util/reflect/TypeInfo;)Ljava/lang/Object;",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Lio/ktor/http/Parameters;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "ktor-server-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic getOrFail(Lio/ktor/http/Parameters;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$getOrFail"    # Lio/ktor/http/Parameters;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/http/Parameters;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$getOrFail":I
    const/4 v1, 0x0

    .local v1, "$i$f$typeInfo":I
    const/4 v2, 0x6

    const-string v3, "R"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 71
    .local v4, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x4

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v1

    .line 51
    .end local v1    # "$i$f$typeInfo":I
    .end local v2    # "kType$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1}, Lio/ktor/server/util/ParametersKt;->getOrFailImpl(Lio/ktor/http/Parameters;Ljava/lang/String;Lio/ktor/util/reflect/TypeInfo;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final getOrFail(Lio/ktor/http/Parameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$getOrFail"    # Lio/ktor/http/Parameters;
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    .local v0, "$i$f$getOrFail":I
    invoke-interface {p0, p1}, Lio/ktor/http/Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lio/ktor/server/plugins/MissingRequestParameterException;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MissingRequestParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getOrFailImpl(Lio/ktor/http/Parameters;Ljava/lang/String;Lio/ktor/util/reflect/TypeInfo;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$getOrFailImpl"    # Lio/ktor/http/Parameters;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "typeInfo"    # Lio/ktor/util/reflect/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/http/Parameters;",
            "Ljava/lang/String;",
            "Lio/ktor/util/reflect/TypeInfo;",
            ")TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p0, p1}, Lio/ktor/http/Parameters;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    .local v0, "values":Ljava/util/List;
    nop

    .line 59
    :try_start_0
    sget-object v1, Lio/ktor/util/converters/DefaultConversionService;->INSTANCE:Lio/ktor/util/converters/DefaultConversionService;

    invoke-virtual {v1, v0, p2}, Lio/ktor/util/converters/DefaultConversionService;->fromValues(Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type R of io.ktor.server.util.ParametersKt.getOrFailImpl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "cause":Ljava/lang/Exception;
    new-instance v2, Lio/ktor/server/plugins/ParameterConversionException;

    invoke-virtual {p2}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, p1, v3, v4}, Lio/ktor/server/plugins/ParameterConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 56
    .end local v0    # "values":Ljava/util/List;
    .end local v1    # "cause":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lio/ktor/server/plugins/MissingRequestParameterException;

    invoke-direct {v0, p1}, Lio/ktor/server/plugins/MissingRequestParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic getValue(Lio/ktor/http/Parameters;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$getValue"    # Lio/ktor/http/Parameters;
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/http/Parameters;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$getValue":I
    invoke-interface {p2}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "name$iv":Ljava/lang/String;
    move-object v2, p0

    .local v2, "$this$getOrFail$iv":Lio/ktor/http/Parameters;
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$f$getOrFail":I
    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const/4 v5, 0x6

    const-string v6, "R"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 66
    const/4 v5, 0x0

    .line 67
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 68
    .local v7, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v8, 0x4

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v7, v6, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 65
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v7    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v2, v1, v4}, Lio/ktor/server/util/ParametersKt;->getOrFailImpl(Lio/ktor/http/Parameters;Ljava/lang/String;Lio/ktor/util/reflect/TypeInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$getOrFail$iv":Lio/ktor/http/Parameters;
    .end local v3    # "$i$f$getOrFail":I
    return-object v1
.end method
