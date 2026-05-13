.class public final Lio/ktor/serialization/WebsocketContentConverterKt;
.super Ljava/lang/Object;
.source "WebsocketContentConverter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebsocketContentConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebsocketContentConverter.kt\nio/ktor/serialization/WebsocketContentConverterKt\n+ 2 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,98:1\n17#2,3:99\n17#2,3:102\n*S KotlinDebug\n*F\n+ 1 WebsocketContentConverter.kt\nio/ktor/serialization/WebsocketContentConverterKt\n*L\n86#1:99,3\n97#1:102,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a3\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0008\u0002\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a3\u0010\t\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u00022\u0006\u0010\n\u001a\u0002H\u00012\u000c\u0008\u0002\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "deserialize",
        "T",
        "Lio/ktor/serialization/WebsocketContentConverter;",
        "content",
        "Lio/ktor/websocket/Frame;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "(Lio/ktor/serialization/WebsocketContentConverter;Lio/ktor/websocket/Frame;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "serialize",
        "value",
        "(Lio/ktor/serialization/WebsocketContentConverter;Ljava/lang/Object;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-serialization"
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
.method public static final synthetic deserialize(Lio/ktor/serialization/WebsocketContentConverter;Lio/ktor/websocket/Frame;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$deserialize"    # Lio/ktor/serialization/WebsocketContentConverter;
    .param p1, "content"    # Lio/ktor/websocket/Frame;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/serialization/WebsocketContentConverter;",
            "Lio/ktor/websocket/Frame;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    .local v0, "$i$f$deserialize":I
    const/4 v1, 0x0

    .local v1, "$i$f$typeInfo":I
    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 104
    .local v4, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x4

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v5

    .line 97
    .end local v1    # "$i$f$typeInfo":I
    .end local v2    # "kType$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2, v5, p1, p3}, Lio/ktor/serialization/WebsocketContentConverter;->deserialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/Object;

    return-object v1
.end method

.method public static synthetic deserialize$default(Lio/ktor/serialization/WebsocketContentConverter;Lio/ktor/websocket/Frame;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$deserialize_u24default"    # Lio/ktor/serialization/WebsocketContentConverter;
    .param p1, "content"    # Lio/ktor/websocket/Frame;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 94
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 96
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 94
    :cond_0
    const/4 p4, 0x0

    .line 97
    .local p4, "$i$f$deserialize":I
    const/4 p5, 0x0

    .local p5, "$i$f$typeInfo":I
    const/4 v0, 0x6

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 104
    .local v2, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v3, 0x4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 97
    .end local v0    # "kType$iv":Lkotlin/reflect/KType;
    .end local v2    # "reifiedType$iv":Ljava/lang/reflect/Type;
    .end local p5    # "$i$f$typeInfo":I
    const/4 p5, 0x0

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2, v3, p1, p3}, Lio/ktor/serialization/WebsocketContentConverter;->deserialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v0, p5

    check-cast v0, Ljava/lang/Object;

    return-object p5
.end method

.method public static final synthetic serialize(Lio/ktor/serialization/WebsocketContentConverter;Ljava/lang/Object;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$serialize"    # Lio/ktor/serialization/WebsocketContentConverter;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/serialization/WebsocketContentConverter;",
            "TT;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/Frame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$serialize":I
    const/4 v1, 0x0

    .local v1, "$i$f$typeInfo":I
    const/4 v2, 0x6

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 101
    .local v4, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v5, 0x4

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 86
    .end local v1    # "$i$f$typeInfo":I
    .end local v2    # "kType$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2, v3, p1, p3}, Lio/ktor/serialization/WebsocketContentConverter;->serializeNullable(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object v1
.end method

.method public static synthetic serialize$default(Lio/ktor/serialization/WebsocketContentConverter;Ljava/lang/Object;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$serialize_u24default"    # Lio/ktor/serialization/WebsocketContentConverter;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 83
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 85
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    :cond_0
    const/4 p4, 0x0

    .line 86
    .local p4, "$i$f$serialize":I
    const/4 p5, 0x0

    .local p5, "$i$f$typeInfo":I
    const/4 v0, 0x6

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 101
    .local v2, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v3, 0x4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v1

    .line 86
    .end local v0    # "kType$iv":Lkotlin/reflect/KType;
    .end local v2    # "reifiedType$iv":Ljava/lang/reflect/Type;
    .end local p5    # "$i$f$typeInfo":I
    const/4 p5, 0x0

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, p2, v1, p1, p3}, Lio/ktor/serialization/WebsocketContentConverter;->serializeNullable(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object p5
.end method
