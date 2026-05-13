.class public final Lio/ktor/utils/io/core/internal/EncodeResult;
.super Ljava/lang/Object;
.source "EncodeResult.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncodeResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n+ 2 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n*L\n1#1,20:1\n47#2:21\n49#2:22\n*S KotlinDebug\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n*L\n14#1:21\n15#1:22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0081@\u0018\u00002\u00020\u0001B\u001c\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u0019\u0010\u000f\u001a\u00020\u0003H\u0086\u0002\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0019\u0010\u0011\u001a\u00020\u0003H\u0086\u0002\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u000bJ\u001a\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\tJ\u0010\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u00038F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u00038F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u0088\u0001\u0007\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/ktor/utils/io/core/internal/EncodeResult;",
        "",
        "characters",
        "Lkotlin/UShort;",
        "bytes",
        "constructor-impl",
        "(SS)I",
        "value",
        "",
        "(I)I",
        "getBytes-Mh2AYeg",
        "(I)S",
        "getCharacters-Mh2AYeg",
        "getValue",
        "()I",
        "component1",
        "component1-Mh2AYeg",
        "component2",
        "component2-Mh2AYeg",
        "equals",
        "",
        "other",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final value:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/utils/io/core/internal/EncodeResult;->value:I

    return-void
.end method

.method public static final synthetic box-impl(I)Lio/ktor/utils/io/core/internal/EncodeResult;
    .locals 1

    new-instance v0, Lio/ktor/utils/io/core/internal/EncodeResult;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/core/internal/EncodeResult;-><init>(I)V

    return-object v0
.end method

.method public static final component1-Mh2AYeg(I)S
    .locals 1
    .param p0, "arg0"    # I

    .line 17
    invoke-static {p0}, Lio/ktor/utils/io/core/internal/EncodeResult;->getCharacters-Mh2AYeg(I)S

    move-result v0

    return v0
.end method

.method public static final component2-Mh2AYeg(I)S
    .locals 1
    .param p0, "arg0"    # I

    .line 18
    invoke-static {p0}, Lio/ktor/utils/io/core/internal/EncodeResult;->getBytes-Mh2AYeg(I)S

    move-result v0

    return v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static constructor-impl(SS)I
    .locals 2
    .param p0, "characters"    # S
    .param p1, "bytes"    # S

    .line 12
    const v0, 0xffff

    and-int v1, p0, v0

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v0, p1

    or-int/2addr v0, v1

    invoke-static {v0}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/ktor/utils/io/core/internal/EncodeResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/internal/EncodeResult;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/EncodeResult;->unbox-impl()I

    move-result v0

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(II)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getBytes-Mh2AYeg(I)S
    .locals 3
    .param p0, "arg0"    # I

    .line 15
    move v0, p0

    .local v0, "$this$lowShort$iv":I
    const/4 v1, 0x0

    .line 22
    .local v1, "$i$f$getLowShort":I
    const v2, 0xffff

    and-int/2addr v2, v0

    int-to-short v0, v2

    .line 15
    .end local v0    # "$this$lowShort$iv":I
    .end local v1    # "$i$f$getLowShort":I
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    return v0
.end method

.method public static final getCharacters-Mh2AYeg(I)S
    .locals 3
    .param p0, "arg0"    # I

    .line 14
    move v0, p0

    .local v0, "$this$highShort$iv":I
    const/4 v1, 0x0

    .line 21
    .local v1, "$i$f$getHighShort":I
    ushr-int/lit8 v2, v0, 0x10

    int-to-short v0, v2

    .line 14
    .end local v0    # "$this$highShort$iv":I
    .end local v1    # "$i$f$getHighShort":I
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    return v0
.end method

.method public static hashCode-impl(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodeResult(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lio/ktor/utils/io/core/internal/EncodeResult;->value:I

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/internal/EncodeResult;->equals-impl(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 11
    iget v0, p0, Lio/ktor/utils/io/core/internal/EncodeResult;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/ktor/utils/io/core/internal/EncodeResult;->value:I

    invoke-static {v0}, Lio/ktor/utils/io/core/internal/EncodeResult;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lio/ktor/utils/io/core/internal/EncodeResult;->value:I

    invoke-static {v0}, Lio/ktor/utils/io/core/internal/EncodeResult;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Lio/ktor/utils/io/core/internal/EncodeResult;->value:I

    return v0
.end method
