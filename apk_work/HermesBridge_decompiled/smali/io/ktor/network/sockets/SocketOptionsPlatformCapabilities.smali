.class public final Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;
.super Ljava/lang/Object;
.source "SocketOptionsPlatformCapabilities.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocketOptionsPlatformCapabilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocketOptionsPlatformCapabilities.kt\nio/ktor/network/sockets/SocketOptionsPlatformCapabilities\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n3792#2:102\n4307#2,2:103\n1282#2,2:111\n1282#2,2:113\n1282#2,2:115\n1194#3,2:105\n1222#3,4:107\n*S KotlinDebug\n*F\n+ 1 SocketOptionsPlatformCapabilities.kt\nio/ktor/network/sockets/SocketOptionsPlatformCapabilities\n*L\n19#1:102\n19#1:103,2\n34#1:111,2\n51#1:113,2\n69#1:115,2\n24#1:105,2\n24#1:107,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000fJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\tH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;",
        "",
        "()V",
        "channelSetOption",
        "Ljava/lang/reflect/Method;",
        "datagramSetOption",
        "serverChannelSetOption",
        "standardSocketOptions",
        "",
        "",
        "Ljava/lang/reflect/Field;",
        "setReusePort",
        "",
        "channel",
        "Ljava/nio/channels/DatagramChannel;",
        "Ljava/nio/channels/ServerSocketChannel;",
        "Ljava/nio/channels/SocketChannel;",
        "socketOption",
        "name",
        "ktor-network"
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
.field public static final INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

.field private static final channelSetOption:Ljava/lang/reflect/Method;

.field private static final datagramSetOption:Ljava/lang/reflect/Method;

.field private static final serverChannelSetOption:Ljava/lang/reflect/Method;

.field private static final standardSocketOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v1, "setOption"

    const-string v2, "socketChannelClass.methods"

    const-string v3, "java.net.SocketOption"

    new-instance v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    invoke-direct {v0}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;-><init>()V

    sput-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    .line 16
    nop

    .line 17
    const/4 v5, 0x0

    :try_start_0
    const-string v0, "java.net.StandardSocketOptions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_4

    .line 17
    nop

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_4

    .line 18
    nop

    .line 19
    nop

    .local v0, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 102
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v0

    .local v8, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 103
    .local v9, "$i$f$filterTo":I
    array-length v10, v8

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_2

    aget-object v12, v8, v11

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it":Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .line 20
    .local v14, "$i$a$-filter-SocketOptionsPlatformCapabilities$standardSocketOptions$1":I
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    .local v15, "modifiers":I
    const/16 v16, 0x0

    .line 21
    .local v16, "$i$a$-let-SocketOptionsPlatformCapabilities$standardSocketOptions$1$1":I
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    move v15, v5

    .line 20
    .end local v15    # "modifiers":I
    .end local v16    # "$i$a$-let-SocketOptionsPlatformCapabilities$standardSocketOptions$1$1":I
    :goto_1
    nop

    .line 103
    .end local v13    # "it":Ljava/lang/reflect/Field;
    .end local v14    # "$i$a$-filter-SocketOptionsPlatformCapabilities$standardSocketOptions$1":I
    if-eqz v15, :cond_1

    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 104
    :cond_2
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$filterTo":I
    check-cast v7, Ljava/util/List;

    .line 102
    nop

    .line 19
    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$filter":I
    nop

    .line 24
    nop

    .line 19
    check-cast v7, Ljava/lang/Iterable;

    .line 24
    move-object v0, v7

    .local v0, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$f$associateBy":I
    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    .line 106
    .local v7, "capacity$iv":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .local v8, "destination$iv$iv":Ljava/util/Map;
    move-object v9, v0

    .local v9, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$f$associateByTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 108
    .restart local v12    # "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Ljava/lang/reflect/Field;

    .restart local v13    # "it":Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .line 24
    .local v14, "$i$a$-associateBy-SocketOptionsPlatformCapabilities$standardSocketOptions$2":I
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v4, "it.name"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .end local v13    # "it":Ljava/lang/reflect/Field;
    .end local v14    # "$i$a$-associateBy-SocketOptionsPlatformCapabilities$standardSocketOptions$2":I
    invoke-interface {v8, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 110
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 106
    .end local v8    # "destination$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$associateByTo":I
    nop

    .line 24
    .end local v0    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$associateBy":I
    .end local v7    # "capacity$iv":I
    nop

    .line 17
    goto :goto_3

    .line 25
    :cond_4
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    goto :goto_4

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    .local v0, "_":Ljava/lang/Throwable;
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 16
    .end local v0    # "_":Ljava/lang/Throwable;
    :goto_4
    sput-object v8, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->standardSocketOptions:Ljava/util/Map;

    .line 30
    nop

    .line 31
    const/4 v4, 0x2

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "socketOptionType":Ljava/lang/Class;
    const-string v7, "java.nio.channels.SocketChannel"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 34
    .local v7, "socketChannelClass":Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, [Ljava/lang/Object;

    .local v8, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 111
    .local v9, "$i$f$firstOrNull":I
    array-length v10, v8

    move v11, v5

    :goto_5
    if-ge v11, v10, :cond_8

    aget-object v12, v8, v11

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Ljava/lang/reflect/Method;

    .local v13, "method":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    .line 35
    .local v14, "$i$a$-firstOrNull-SocketOptionsPlatformCapabilities$channelSetOption$1":I
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    .restart local v15    # "modifiers":I
    const/16 v17, 0x0

    .line 36
    .local v17, "$i$a$-let-SocketOptionsPlatformCapabilities$channelSetOption$1$1":I
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez v18, :cond_5

    const/4 v15, 0x1

    goto :goto_6

    :cond_5
    move v15, v5

    .line 35
    .end local v15    # "modifiers":I
    .end local v17    # "$i$a$-let-SocketOptionsPlatformCapabilities$channelSetOption$1$1":I
    :goto_6
    if-eqz v15, :cond_6

    .line 37
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 38
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    array-length v15, v15

    if-ne v15, v4, :cond_6

    .line 39
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 40
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    aget-object v15, v15, v5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 41
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const-class v6, Ljava/lang/Object;

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_7

    :cond_6
    move v6, v5

    .line 35
    :goto_7
    nop

    .line 111
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "$i$a$-firstOrNull-SocketOptionsPlatformCapabilities$channelSetOption$1":I
    if-eqz v6, :cond_7

    goto :goto_8

    .end local v12    # "element$iv":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 112
    :cond_8
    const/4 v12, 0x0

    .end local v0    # "socketOptionType":Ljava/lang/Class;
    .end local v7    # "socketChannelClass":Ljava/lang/Class;
    .end local v8    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$firstOrNull":I
    :goto_8
    check-cast v12, Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    .line 43
    :catchall_1
    move-exception v0

    .line 44
    .local v0, "_":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 30
    .end local v0    # "_":Ljava/lang/Throwable;
    :goto_9
    sput-object v12, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->channelSetOption:Ljava/lang/reflect/Method;

    .line 47
    nop

    .line 48
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, "socketOptionType":Ljava/lang/Class;
    const-string v6, "java.nio.channels.ServerSocketChannel"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 51
    .local v6, "socketChannelClass":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, [Ljava/lang/Object;

    .local v7, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 113
    .local v8, "$i$f$firstOrNull":I
    array-length v9, v7

    move v10, v5

    :goto_a
    if-ge v10, v9, :cond_c

    aget-object v11, v7, v10

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/reflect/Method;

    .local v12, "method":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .line 52
    .local v13, "$i$a$-firstOrNull-SocketOptionsPlatformCapabilities$serverChannelSetOption$1":I
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    .local v14, "modifiers":I
    const/4 v15, 0x0

    .line 53
    .local v15, "$i$a$-let-SocketOptionsPlatformCapabilities$serverChannelSetOption$1$1":I
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez v18, :cond_9

    const/4 v14, 0x1

    goto :goto_b

    :cond_9
    move v14, v5

    .line 52
    .end local v14    # "modifiers":I
    .end local v15    # "$i$a$-let-SocketOptionsPlatformCapabilities$serverChannelSetOption$1$1":I
    :goto_b
    if-eqz v14, :cond_a

    .line 55
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 56
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-ne v14, v4, :cond_a

    .line 57
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 58
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 59
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const-class v15, Ljava/lang/Object;

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    goto :goto_c

    :cond_a
    move v14, v5

    .line 52
    :goto_c
    nop

    .line 113
    .end local v12    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "$i$a$-firstOrNull-SocketOptionsPlatformCapabilities$serverChannelSetOption$1":I
    if-eqz v14, :cond_b

    goto :goto_d

    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 114
    :cond_c
    const/4 v11, 0x0

    .end local v0    # "socketOptionType":Ljava/lang/Class;
    .end local v6    # "socketChannelClass":Ljava/lang/Class;
    .end local v7    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$firstOrNull":I
    :goto_d
    check-cast v11, Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_e

    .line 61
    :catchall_2
    move-exception v0

    .line 62
    .local v0, "_":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 47
    .end local v0    # "_":Ljava/lang/Throwable;
    :goto_e
    sput-object v11, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->serverChannelSetOption:Ljava/lang/reflect/Method;

    .line 65
    nop

    .line 66
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "socketOptionType":Ljava/lang/Class;
    const-string v3, "java.nio.channels.DatagramChannel"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 69
    .local v3, "socketChannelClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [Ljava/lang/Object;

    move-object v2, v6

    .local v2, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 115
    .local v6, "$i$f$firstOrNull":I
    array-length v7, v2

    move v8, v5

    :goto_f
    if-ge v8, v7, :cond_15

    aget-object v9, v2, v8

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/reflect/Method;

    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    .line 70
    .local v11, "$i$a$-firstOrNull-SocketOptionsPlatformCapabilities$datagramSetOption$1":I
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    .local v12, "modifiers":I
    const/4 v13, 0x0

    .line 71
    .local v13, "$i$a$-let-SocketOptionsPlatformCapabilities$datagramSetOption$1$1":I
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-nez v14, :cond_d

    const/4 v12, 0x1

    goto :goto_10

    :cond_d
    move v12, v5

    .line 70
    .end local v12    # "modifiers":I
    .end local v13    # "$i$a$-let-SocketOptionsPlatformCapabilities$datagramSetOption$1$1":I
    :goto_10
    if-eqz v12, :cond_12

    .line 73
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 74
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v4, :cond_10

    .line 75
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 76
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v5

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 77
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    const/16 v16, 0x1

    aget-object v12, v12, v16

    const-class v13, Ljava/lang/Object;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    move/from16 v12, v16

    goto :goto_12

    .line 76
    :cond_e
    const/16 v16, 0x1

    goto :goto_11

    .line 75
    :cond_f
    const/16 v16, 0x1

    goto :goto_11

    .line 74
    :cond_10
    const/16 v16, 0x1

    goto :goto_11

    .line 73
    :cond_11
    const/16 v16, 0x1

    goto :goto_11

    .line 70
    :cond_12
    const/16 v16, 0x1

    .line 77
    :cond_13
    :goto_11
    move v12, v5

    .line 70
    :goto_12
    nop

    .line 115
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "$i$a$-firstOrNull-SocketOptionsPlatformCapabilities$datagramSetOption$1":I
    if-eqz v12, :cond_14

    goto :goto_13

    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 116
    :cond_15
    const/4 v9, 0x0

    .end local v0    # "socketOptionType":Ljava/lang/Class;
    .end local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "socketChannelClass":Ljava/lang/Class;
    .end local v6    # "$i$f$firstOrNull":I
    :goto_13
    check-cast v9, Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v6, v9

    goto :goto_14

    .line 79
    :catchall_3
    move-exception v0

    .line 80
    .local v0, "_":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 65
    .end local v0    # "_":Ljava/lang/Throwable;
    :goto_14
    sput-object v6, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->datagramSetOption:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final socketOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->standardSocketOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final setReusePort(Ljava/nio/channels/DatagramChannel;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/DatagramChannel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string v0, "SO_REUSEPORT"

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->socketOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "option":Ljava/lang/Object;
    sget-object v1, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->datagramSetOption:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public final setReusePort(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/ServerSocketChannel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string v0, "SO_REUSEPORT"

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->socketOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "option":Ljava/lang/Object;
    sget-object v1, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->serverChannelSetOption:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public final setReusePort(Ljava/nio/channels/SocketChannel;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string v0, "SO_REUSEPORT"

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->socketOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "option":Ljava/lang/Object;
    sget-object v1, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->channelSetOption:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method
