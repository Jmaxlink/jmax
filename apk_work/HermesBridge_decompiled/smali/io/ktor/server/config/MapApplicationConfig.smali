.class public Lio/ktor/server/config/MapApplicationConfig;
.super Ljava/lang/Object;
.source "MapApplicationConfig.kt"

# interfaces
.implements Lio/ktor/server/config/ApplicationConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/config/MapApplicationConfig$MapApplicationConfigValue;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapApplicationConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapApplicationConfig.kt\nio/ktor/server/config/MapApplicationConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1855#2,2:149\n1864#2,3:153\n1549#2:156\n1620#2,3:157\n766#2:160\n857#2,2:161\n766#2:163\n857#2,2:164\n1549#2:166\n1620#2,3:167\n1603#2,9:170\n1855#2:179\n288#2,2:180\n1856#2:183\n1612#2:184\n766#2:185\n857#2,2:186\n1549#2:188\n1620#2,3:189\n1179#2,2:192\n1253#2,2:194\n1549#2:196\n1620#2,3:197\n1256#2:200\n215#3,2:151\n1#4:182\n*S KotlinDebug\n*F\n+ 1 MapApplicationConfig.kt\nio/ktor/server/config/MapApplicationConfig\n*L\n28#1:149,2\n47#1:153,3\n63#1:156\n63#1:157,3\n81#1:160\n81#1:161,2\n82#1:163\n82#1:164,2\n82#1:166\n82#1:167,3\n84#1:170,9\n84#1:179\n85#1:180,2\n84#1:183\n84#1:184\n99#1:185\n99#1:186,2\n100#1:188\n100#1:189,3\n102#1:192,2\n102#1:194,2\n108#1:196\n108#1:197,3\n102#1:200\n29#1:151,2\n84#1:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\t\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001 B#\u0008\u0012\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006B!\u0008\u0016\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\t0\u0008\u00a2\u0006\u0002\u0010\nB3\u0008\u0016\u0012*\u0010\u0007\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\t0\u000b\"\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\t\u00a2\u0006\u0002\u0010\u000cB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004J\u001c\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001cJ\u0016\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001eH\u0016R \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lio/ktor/server/config/MapApplicationConfig;",
        "Lio/ktor/server/config/ApplicationConfig;",
        "map",
        "",
        "",
        "path",
        "(Ljava/util/Map;Ljava/lang/String;)V",
        "values",
        "",
        "Lkotlin/Pair;",
        "(Ljava/util/List;)V",
        "",
        "([Lkotlin/Pair;)V",
        "()V",
        "getMap",
        "()Ljava/util/Map;",
        "getPath",
        "()Ljava/lang/String;",
        "config",
        "configList",
        "keys",
        "",
        "property",
        "Lio/ktor/server/config/ApplicationConfigValue;",
        "propertyOrNull",
        "put",
        "",
        "value",
        "",
        "toMap",
        "",
        "",
        "MapApplicationConfigValue",
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


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lio/ktor/server/config/MapApplicationConfig;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 11
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lio/ktor/server/config/MapApplicationConfig;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 28
    .local v0, "listElements":Ljava/util/Map;
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlin/Pair;

    .local v5, "it":Lkotlin/Pair;
    const/4 v6, 0x0

    .line 28
    .local v6, "$i$a$-forEach-MapApplicationConfig$1":I
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v0}, Lio/ktor/server/config/MapApplicationConfigKt;->access$findListElements(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    .end local v5    # "it":Lkotlin/Pair;
    .end local v6    # "$i$a$-forEach-MapApplicationConfig$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 150
    :cond_0
    nop

    .line 29
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    move-object v1, v0

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 151
    .restart local v2    # "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 29
    .local v5, "$i$a$-forEach-MapApplicationConfig$2":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "listProperty":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "size":I
    iget-object v8, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v5    # "$i$a$-forEach-MapApplicationConfig$2":I
    .end local v6    # "listProperty":Ljava/lang/String;
    .end local v7    # "size":I
    nop

    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_1

    .line 152
    :cond_1
    nop

    .line 30
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    .line 23
    iput-object p2, p0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public varargs constructor <init>([Lkotlin/Pair;)V
    .locals 2
    .param p1, "values"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lio/ktor/server/config/MapApplicationConfig;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lio/ktor/server/config/MapApplicationConfig;

    iget-object v1, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    iget-object v2, p0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/ktor/server/config/MapApplicationConfig;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public configList(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/server/config/ApplicationConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    const-string v2, "size"

    invoke-static {v0, v2}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 63
    .local v1, "size":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 156
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 157
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 158
    .local v8, "item$iv$iv":I
    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 64
    .local v10, "$i$a$-map-MapApplicationConfig$configList$1":I
    new-instance v11, Lio/ktor/server/config/MapApplicationConfig;

    iget-object v12, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lio/ktor/server/config/MapApplicationConfig;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 158
    .end local v9    # "it":I
    .end local v10    # "$i$a$-map-MapApplicationConfig$configList$1":I
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v8    # "item$iv$iv":I
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 156
    nop

    .line 63
    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    return-object v4

    .line 62
    .end local v1    # "size":Ljava/lang/String;
    :cond_1
    new-instance v1, Lio/ktor/server/config/ApplicationConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".size not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/ktor/server/config/ApplicationConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    return-object v0
.end method

.method protected final getPath()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    return-object v0
.end method

.method public keys()Ljava/util/Set;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 81
    .local v1, "isTopLevel":Z
    :goto_0
    const/16 v3, 0x2e

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, v0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    if-eqz v1, :cond_1

    check-cast v6, Ljava/util/Collection;

    goto :goto_2

    :cond_1
    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 160
    .local v7, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 161
    .local v10, "$i$f$filterTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    .local v13, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 81
    .local v14, "$i$a$-filter-MapApplicationConfig$keys$keys$1":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    invoke-static {v13, v2, v15, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    .line 161
    .end local v13    # "it":Ljava/lang/String;
    .end local v14    # "$i$a$-filter-MapApplicationConfig$keys$keys$1":I
    if-eqz v2, :cond_2

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$filterTo":I
    move-object v2, v8

    check-cast v2, Ljava/util/List;

    .line 160
    nop

    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filter":I
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    .line 81
    :goto_2
    move-object v2, v6

    .line 82
    .local v2, "keys":Ljava/util/Collection;
    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    .restart local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 163
    .restart local v7    # "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .restart local v8    # "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .restart local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 164
    .restart local v10    # "$i$f$filterTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, ".size"

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "element$iv$iv":Ljava/lang/Object;
    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    .local v14, "it":Ljava/lang/String;
    const/4 v15, 0x0

    .line 82
    .local v15, "$i$a$-filter-MapApplicationConfig$keys$listEntries$1":I
    move-object v3, v14

    check-cast v3, Ljava/lang/CharSequence;

    check-cast v13, Ljava/lang/CharSequence;

    move-object/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .local v17, "$this$filter$iv":Ljava/lang/Iterable;
    invoke-static {v3, v13, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    .line 164
    .end local v14    # "it":Ljava/lang/String;
    .end local v15    # "$i$a$-filter-MapApplicationConfig$keys$listEntries$1":I
    if-eqz v3, :cond_4

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v6, v17

    const/16 v3, 0x2e

    goto :goto_3

    .line 165
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    :cond_5
    move-object/from16 v17, v6

    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$filterTo":I
    .restart local v17    # "$this$filter$iv":Ljava/lang/Iterable;
    move-object v3, v8

    check-cast v3, Ljava/util/List;

    .line 163
    nop

    .end local v7    # "$i$f$filter":I
    .end local v17    # "$this$filter$iv":Ljava/lang/Iterable;
    check-cast v3, Ljava/lang/Iterable;

    .line 82
    nop

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 166
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v3

    .local v8, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 167
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 168
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 82
    .local v14, "$i$a$-map-MapApplicationConfig$keys$listEntries$2":I
    invoke-static {v12, v13, v5, v4, v5}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 168
    .end local v12    # "it":Ljava/lang/String;
    .end local v14    # "$i$a$-map-MapApplicationConfig$keys$listEntries$2":I
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 169
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    check-cast v7, Ljava/util/List;

    .line 166
    nop

    .line 82
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    move-object v3, v7

    .line 83
    .local v3, "listEntries":Ljava/util/List;
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v6, Ljava/util/Set;

    .line 84
    .local v6, "addedListKeys":Ljava/util/Set;
    move-object v7, v2

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 170
    .local v8, "$i$f$mapNotNull":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 178
    .local v11, "$i$f$mapNotNullTo":I
    move-object v12, v10

    .local v12, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 179
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v15

    .local v17, "element$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 178
    .local v18, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    .local v4, "candidate":Ljava/lang/String;
    const/16 v19, 0x0

    .line 85
    .local v19, "$i$a$-mapNotNull-MapApplicationConfig$keys$1":I
    move-object/from16 v20, v3

    check-cast v20, Ljava/lang/Iterable;

    .local v20, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/16 v21, 0x0

    .line 180
    .local v21, "$i$f$firstOrNull":I
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .local v23, "element$iv":Ljava/lang/Object;
    move-object/from16 v5, v23

    check-cast v5, Ljava/lang/String;

    .local v5, "it":Ljava/lang/String;
    const/16 v24, 0x0

    .line 85
    .local v24, "$i$a$-firstOrNull-MapApplicationConfig$keys$1$listKey$1":I
    move-object/from16 v25, v2

    move-object/from16 v16, v3

    move-object/from16 v26, v7

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x0

    .end local v2    # "keys":Ljava/util/Collection;
    .end local v3    # "listEntries":Ljava/util/List;
    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v16, "listEntries":Ljava/util/List;
    .local v25, "keys":Ljava/util/Collection;
    .local v26, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    invoke-static {v4, v5, v2, v3, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    .line 180
    .end local v5    # "it":Ljava/lang/String;
    .end local v24    # "$i$a$-firstOrNull-MapApplicationConfig$keys$1$listKey$1":I
    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v3, v16

    move-object/from16 v2, v25

    move-object/from16 v7, v26

    const/4 v5, 0x0

    goto :goto_6

    .line 181
    .end local v16    # "listEntries":Ljava/util/List;
    .end local v23    # "element$iv":Ljava/lang/Object;
    .end local v25    # "keys":Ljava/util/Collection;
    .end local v26    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v2    # "keys":Ljava/util/Collection;
    .restart local v3    # "listEntries":Ljava/util/List;
    .restart local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_8
    move-object/from16 v25, v2

    move-object/from16 v16, v3

    move-object/from16 v26, v7

    const/4 v2, 0x0

    .end local v2    # "keys":Ljava/util/Collection;
    .end local v3    # "listEntries":Ljava/util/List;
    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v16    # "listEntries":Ljava/util/List;
    .restart local v25    # "keys":Ljava/util/Collection;
    .restart local v26    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/16 v23, 0x0

    .line 85
    .end local v20    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$f$firstOrNull":I
    :goto_7
    move-object/from16 v7, v23

    check-cast v7, Ljava/lang/String;

    .line 86
    .local v7, "listKey":Ljava/lang/String;
    nop

    .line 87
    if-eqz v7, :cond_9

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 88
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    move-object v3, v7

    goto :goto_8

    .line 91
    :cond_9
    if-nez v7, :cond_a

    move-object v3, v4

    goto :goto_8

    .line 92
    :cond_a
    const/4 v3, 0x0

    .line 86
    :goto_8
    nop

    .line 94
    .local v3, "key":Ljava/lang/String;
    if-eqz v1, :cond_b

    move-object v7, v3

    const/4 v0, 0x2

    const/4 v5, 0x0

    goto :goto_9

    :cond_b
    if-eqz v3, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v0, v5}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_9

    :cond_c
    const/4 v0, 0x2

    const/4 v5, 0x0

    move-object v7, v5

    .line 178
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "candidate":Ljava/lang/String;
    .end local v7    # "listKey":Ljava/lang/String;
    .end local v19    # "$i$a$-mapNotNull-MapApplicationConfig$keys$1":I
    :goto_9
    if-eqz v7, :cond_d

    move-object v2, v7

    .line 182
    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 178
    .local v3, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v17    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_d
    move v4, v0

    move-object/from16 v3, v16

    move-object/from16 v2, v25

    move-object/from16 v7, v26

    move-object/from16 v0, p0

    .end local v15    # "element$iv$iv$iv":Ljava/lang/Object;
    goto/16 :goto_5

    .line 183
    .end local v16    # "listEntries":Ljava/util/List;
    .end local v25    # "keys":Ljava/util/Collection;
    .end local v26    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v2, "keys":Ljava/util/Collection;
    .local v3, "listEntries":Ljava/util/List;
    .local v7, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_e
    nop

    .line 184
    .end local v12    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapNotNullTo":I
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 170
    nop

    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 95
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public property(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lio/ktor/server/config/MapApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lio/ktor/server/config/ApplicationConfigurationException;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Lio/ktor/server/config/ApplicationConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    const-string v2, "size"

    invoke-static {v0, v2}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v1, Lio/ktor/server/config/MapApplicationConfig$MapApplicationConfigValue;

    iget-object v2, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    invoke-direct {v1, v2, v0}, Lio/ktor/server/config/MapApplicationConfig$MapApplicationConfigValue;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    check-cast v1, Lio/ktor/server/config/ApplicationConfigValue;

    .line 70
    :goto_0
    return-object v1
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "size":I
    move-object v1, p2

    .local v1, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 154
    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index$iv":I
    .local v6, "index$iv":I
    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .local v3, "i":I
    .local v7, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 48
    .local v8, "$i$a$-forEachIndexed-MapApplicationConfig$put$1":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lio/ktor/server/config/MapApplicationConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    nop

    .line 154
    .end local v3    # "i":I
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "$i$a$-forEachIndexed-MapApplicationConfig$put$1":I
    move v3, v6

    .end local v5    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 155
    .end local v6    # "index$iv":I
    .local v3, "index$iv":I
    :cond_1
    nop

    .line 51
    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "index$iv":I
    const-string v1, "size"

    invoke-static {p1, v1}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/ktor/server/config/MapApplicationConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    iget-object v1, p0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-static {v1, p1}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 185
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 186
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 99
    .local v10, "$i$a$-filter-MapApplicationConfig$toMap$keys$1":I
    iget-object v11, v0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v9, v11, v8, v12, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    .line 186
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-filter-MapApplicationConfig$toMap$keys$1":I
    if-eqz v8, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 185
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 100
    move-object v1, v3

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 188
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 189
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 190
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 100
    .local v11, "$i$a$-map-MapApplicationConfig$toMap$keys$2":I
    iget-object v12, v0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_2

    move v12, v13

    goto :goto_2

    :cond_2
    move v12, v8

    :goto_2
    if-eqz v12, :cond_3

    move v12, v8

    goto :goto_3

    :cond_3
    iget-object v12, v0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v13

    :goto_3
    invoke-static {v10, v12}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    new-array v15, v13, [C

    const/16 v12, 0x2e

    aput-char v12, v15, v8

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 190
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-map-MapApplicationConfig$toMap$keys$2":I
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 188
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 101
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 99
    nop

    .line 102
    .local v1, "keys":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$associate$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 192
    .local v3, "$i$f$associate":I
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 193
    .local v5, "capacity$iv":I
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    .local v6, "destination$iv$iv":Ljava/util/Map;
    move-object v7, v2

    .local v7, "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 194
    .local v8, "$i$f$associateTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 195
    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, "$i$a$-associate-MapApplicationConfig$toMap$1":I
    iget-object v13, v0, Lio/ktor/server/config/MapApplicationConfig;->path:Ljava/lang/String;

    invoke-static {v13, v11}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "path":Ljava/lang/String;
    nop

    .line 105
    iget-object v14, v0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_6

    .line 106
    :cond_5
    iget-object v14, v0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    const-string v15, "size"

    invoke-static {v13, v15}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 107
    iget-object v14, v0, Lio/ktor/server/config/MapApplicationConfig;->map:Ljava/util/Map;

    const-string v15, "0"

    invoke-static {v13, v15}, Lio/ktor/server/config/MapApplicationConfigKt;->access$combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v0, v13}, Lio/ktor/server/config/MapApplicationConfig;->property(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v14

    invoke-interface {v14}, Lio/ktor/server/config/ApplicationConfigValue;->getList()Ljava/util/List;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_6

    .line 108
    :cond_6
    invoke-virtual {v0, v13}, Lio/ktor/server/config/MapApplicationConfig;->configList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 196
    .local v15, "$i$f$map":I
    move-object/from16 v16, v1

    .end local v1    # "keys":Ljava/util/List;
    .local v16, "keys":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v17, v2

    .end local v2    # "$this$associate$iv":Ljava/lang/Iterable;
    .local v17, "$this$associate$iv":Ljava/lang/Iterable;
    invoke-static {v14, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object v2, v14

    .local v2, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 197
    .local v18, "$i$f$mapTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 198
    .local v20, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v20

    check-cast v21, Lio/ktor/server/config/ApplicationConfig;

    .local v21, "it":Lio/ktor/server/config/ApplicationConfig;
    const/16 v22, 0x0

    .line 108
    .local v22, "$i$a$-map-MapApplicationConfig$toMap$1$1":I
    invoke-interface/range {v21 .. v21}, Lio/ktor/server/config/ApplicationConfig;->toMap()Ljava/util/Map;

    move-result-object v4

    .line 198
    .end local v21    # "it":Lio/ktor/server/config/ApplicationConfig;
    .end local v22    # "$i$a$-map-MapApplicationConfig$toMap$1$1":I
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_5

    .line 199
    .end local v20    # "item$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v2    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$mapTo":I
    check-cast v1, Ljava/util/List;

    .line 196
    nop

    .line 108
    .end local v14    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$map":I
    invoke-static {v11, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    goto :goto_6

    .line 110
    .end local v16    # "keys":Ljava/util/List;
    .end local v17    # "$this$associate$iv":Ljava/lang/Iterable;
    .local v1, "keys":Ljava/util/List;
    .local v2, "$this$associate$iv":Ljava/lang/Iterable;
    :cond_8
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "keys":Ljava/util/List;
    .end local v2    # "$this$associate$iv":Ljava/lang/Iterable;
    .restart local v16    # "keys":Ljava/util/List;
    .restart local v17    # "$this$associate$iv":Ljava/lang/Iterable;
    invoke-virtual {v0, v11}, Lio/ktor/server/config/MapApplicationConfig;->config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfig;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v11, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 104
    :goto_6
    nop

    .line 195
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "$i$a$-associate-MapApplicationConfig$toMap$1":I
    .end local v13    # "path":Ljava/lang/String;
    invoke-virtual {v14}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    const/16 v4, 0xa

    goto/16 :goto_4

    .line 200
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v16    # "keys":Ljava/util/List;
    .end local v17    # "$this$associate$iv":Ljava/lang/Iterable;
    .restart local v1    # "keys":Ljava/util/List;
    .restart local v2    # "$this$associate$iv":Ljava/lang/Iterable;
    :cond_9
    nop

    .line 193
    .end local v6    # "destination$iv$iv":Ljava/util/Map;
    .end local v7    # "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$associateTo":I
    nop

    .line 102
    .end local v2    # "$this$associate$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$associate":I
    .end local v5    # "capacity$iv":I
    return-object v6
.end method
