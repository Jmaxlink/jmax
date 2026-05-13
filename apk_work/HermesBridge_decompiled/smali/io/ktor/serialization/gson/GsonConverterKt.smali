.class public final Lio/ktor/serialization/gson/GsonConverterKt;
.super Ljava/lang/Object;
.source "GsonConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0019\u0008\u0002\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0008\u001a\u0018\u0010\t\u001a\u00020\n*\u00020\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "gson",
        "",
        "Lio/ktor/serialization/Configuration;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/google/gson/GsonBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "isExcluded",
        "",
        "Lcom/google/gson/Gson;",
        "type",
        "Lkotlin/reflect/KClass;",
        "ktor-serialization-gson"
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
.method public static final gson(Lio/ktor/serialization/Configuration;Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0, "$this$gson"    # Lio/ktor/serialization/Configuration;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/serialization/Configuration;",
            "Lio/ktor/http/ContentType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/GsonBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 128
    .local v0, "builder":Lcom/google/gson/GsonBuilder;
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v1, Lio/ktor/serialization/gson/GsonConverter;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    const-string v3, "builder.create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/ktor/serialization/gson/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    .line 130
    .local v1, "converter":Lio/ktor/serialization/gson/GsonConverter;
    move-object v4, v1

    check-cast v4, Lio/ktor/serialization/ContentConverter;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lio/ktor/serialization/Configuration$DefaultImpls;->register$default(Lio/ktor/serialization/Configuration;Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public static synthetic gson$default(Lio/ktor/serialization/Configuration;Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 123
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 124
    sget-object p1, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {p1}, Lio/ktor/http/ContentType$Application;->getJson()Lio/ktor/http/ContentType;

    move-result-object p1

    .line 123
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 125
    sget-object p2, Lio/ktor/serialization/gson/GsonConverterKt$gson$1;->INSTANCE:Lio/ktor/serialization/gson/GsonConverterKt$gson$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 123
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/serialization/gson/GsonConverterKt;->gson(Lio/ktor/serialization/Configuration;Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final isExcluded(Lcom/google/gson/Gson;Lkotlin/reflect/KClass;)Z
    .locals 3
    .param p0, "$this$isExcluded"    # Lcom/google/gson/Gson;
    .param p1, "type"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lkotlin/reflect/KClass<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/gson/Gson;->excluder()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method
