.class public final Lio/ktor/util/converters/DataConversion;
.super Ljava/lang/Object;
.source "DataConversion.kt"

# interfaces
.implements Lio/ktor/util/converters/ConversionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/util/converters/DataConversion$Configuration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataConversion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataConversion.kt\nio/ktor/util/converters/DataConversion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1#2:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0008\u001a\u0004\u0018\u00010\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016R\u001e\u0010\u0005\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u0012\u0004\u0012\u00020\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/util/converters/DataConversion;",
        "Lio/ktor/util/converters/ConversionService;",
        "configuration",
        "Lio/ktor/util/converters/DataConversion$Configuration;",
        "(Lio/ktor/util/converters/DataConversion$Configuration;)V",
        "converters",
        "",
        "Lkotlin/reflect/KClass;",
        "fromValues",
        "",
        "values",
        "",
        "",
        "type",
        "Lio/ktor/util/reflect/TypeInfo;",
        "toValues",
        "value",
        "Configuration",
        "ktor-utils"
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
.field private final converters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lio/ktor/util/converters/ConversionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/util/converters/DataConversion$Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lio/ktor/util/converters/DataConversion$Configuration;

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lio/ktor/util/converters/DataConversion$Configuration;->getConverters$ktor_utils()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/util/converters/DataConversion;->converters:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public fromValues(Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;)Ljava/lang/Object;
    .locals 2
    .param p1, "values"    # Ljava/util/List;
    .param p2, "type"    # Lio/ktor/util/reflect/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/ktor/util/reflect/TypeInfo;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lio/ktor/util/converters/DataConversion;->converters:Ljava/util/Map;

    invoke-virtual {p2}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/util/converters/ConversionService;

    if-nez v0, :cond_1

    sget-object v0, Lio/ktor/util/converters/DefaultConversionService;->INSTANCE:Lio/ktor/util/converters/DefaultConversionService;

    check-cast v0, Lio/ktor/util/converters/ConversionService;

    .line 22
    .local v0, "converter":Lio/ktor/util/converters/ConversionService;
    :cond_1
    invoke-interface {v0, p1, p2}, Lio/ktor/util/converters/ConversionService;->fromValues(Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 118
    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 26
    .local v1, "$i$a$-let-DataConversion$toValues$type$1":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 27
    .end local v1    # "$i$a$-let-DataConversion$toValues$type$1":I
    .local v0, "type":Lkotlin/reflect/KClass;
    iget-object v1, p0, Lio/ktor/util/converters/DataConversion;->converters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/util/converters/ConversionService;

    if-nez v1, :cond_0

    sget-object v1, Lio/ktor/util/converters/DefaultConversionService;->INSTANCE:Lio/ktor/util/converters/DefaultConversionService;

    check-cast v1, Lio/ktor/util/converters/ConversionService;

    .line 28
    .local v1, "converter":Lio/ktor/util/converters/ConversionService;
    :cond_0
    invoke-interface {v1, p1}, Lio/ktor/util/converters/ConversionService;->toValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 26
    .end local v0    # "type":Lkotlin/reflect/KClass;
    .end local v1    # "converter":Lio/ktor/util/converters/ConversionService;
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
