.class public final Lio/ktor/http/cio/ConnectionOptions$Companion;
.super Ljava/lang/Object;
.source "ConnectionOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/ConnectionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00040\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/http/cio/ConnectionOptions$Companion;",
        "",
        "()V",
        "Close",
        "Lio/ktor/http/cio/ConnectionOptions;",
        "getClose",
        "()Lio/ktor/http/cio/ConnectionOptions;",
        "KeepAlive",
        "getKeepAlive",
        "Upgrade",
        "getUpgrade",
        "knownTypes",
        "Lio/ktor/http/cio/internals/AsciiCharTree;",
        "Lkotlin/Pair;",
        "",
        "parse",
        "connection",
        "",
        "parseSlow",
        "ktor-http-cio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/http/cio/ConnectionOptions$Companion;-><init>()V

    return-void
.end method

.method private final parseSlow(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;
    .locals 14
    .param p1, "connection"    # Ljava/lang/CharSequence;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 57
    .local v1, "start":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 58
    .local v2, "length":I
    const/4 v3, 0x0

    .line 59
    .local v3, "connectionOptions":Lio/ktor/http/cio/ConnectionOptions;
    const/4 v4, 0x0

    .line 61
    .local v4, "hopHeadersList":Ljava/util/ArrayList;
    :goto_0
    if-ge v0, v2, :cond_d

    .line 63
    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 64
    .local v5, "ch":C
    const/16 v6, 0x2c

    const/16 v7, 0x20

    if-eq v5, v7, :cond_1

    if-eq v5, v6, :cond_1

    .line 65
    move v1, v0

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    nop

    .end local v5    # "ch":C
    add-int/lit8 v0, v0, 0x1

    .line 69
    if-lt v0, v2, :cond_0

    .line 71
    :goto_1
    if-ge v0, v2, :cond_3

    .line 72
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 73
    .restart local v5    # "ch":C
    if-eq v5, v7, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    nop

    .end local v5    # "ch":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_3
    :goto_2
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getKnownTypes$cp()Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v8

    .line 78
    sget-object v5, Lio/ktor/http/cio/ConnectionOptions$Companion$parseSlow$detected$1;->INSTANCE:Lio/ktor/http/cio/ConnectionOptions$Companion$parseSlow$detected$1;

    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x1

    move-object v9, p1

    move v10, v1

    move v11, v0

    invoke-virtual/range {v8 .. v13}, Lio/ktor/http/cio/internals/AsciiCharTree;->search(Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v5

    .line 79
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    .line 77
    nop

    .line 80
    .local v5, "detected":Lkotlin/Pair;
    nop

    .line 81
    if-nez v5, :cond_5

    .line 82
    if-nez v4, :cond_4

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 86
    :cond_4
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lio/ktor/http/cio/ConnectionOptions;

    goto :goto_0

    .line 90
    :cond_6
    new-instance v6, Lio/ktor/http/cio/ConnectionOptions;

    .line 91
    invoke-virtual {v3}, Lio/ktor/http/cio/ConnectionOptions;->getClose()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_8

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/http/cio/ConnectionOptions;

    invoke-virtual {v7}, Lio/ktor/http/cio/ConnectionOptions;->getClose()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    move v7, v8

    goto :goto_4

    :cond_8
    :goto_3
    move v7, v9

    .line 92
    :goto_4
    invoke-virtual {v3}, Lio/ktor/http/cio/ConnectionOptions;->getKeepAlive()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/ktor/http/cio/ConnectionOptions;

    invoke-virtual {v10}, Lio/ktor/http/cio/ConnectionOptions;->getKeepAlive()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    move v10, v8

    goto :goto_6

    :cond_a
    :goto_5
    move v10, v9

    .line 93
    :goto_6
    invoke-virtual {v3}, Lio/ktor/http/cio/ConnectionOptions;->getUpgrade()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/ktor/http/cio/ConnectionOptions;

    invoke-virtual {v11}, Lio/ktor/http/cio/ConnectionOptions;->getUpgrade()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_b
    move v8, v9

    .line 94
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 90
    invoke-direct {v6, v7, v10, v8, v9}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;)V

    move-object v3, v6

    .end local v5    # "detected":Lkotlin/Pair;
    goto/16 :goto_0

    .line 100
    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {p0}, Lio/ktor/http/cio/ConnectionOptions$Companion;->getKeepAlive()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v3

    .line 102
    :cond_e
    if-nez v4, :cond_f

    .line 103
    move-object v5, v3

    goto :goto_7

    .line 105
    :cond_f
    new-instance v5, Lio/ktor/http/cio/ConnectionOptions;

    .line 106
    invoke-virtual {v3}, Lio/ktor/http/cio/ConnectionOptions;->getClose()Z

    move-result v6

    .line 107
    invoke-virtual {v3}, Lio/ktor/http/cio/ConnectionOptions;->getKeepAlive()Z

    move-result v7

    .line 108
    invoke-virtual {v3}, Lio/ktor/http/cio/ConnectionOptions;->getUpgrade()Z

    move-result v8

    .line 109
    move-object v9, v4

    check-cast v9, Ljava/util/List;

    .line 105
    invoke-direct {v5, v6, v7, v8, v9}, Lio/ktor/http/cio/ConnectionOptions;-><init>(ZZZLjava/util/List;)V

    .line 102
    :goto_7
    return-object v5
.end method


# virtual methods
.method public final getClose()Lio/ktor/http/cio/ConnectionOptions;
    .locals 1

    .line 26
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getClose$cp()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getKeepAlive()Lio/ktor/http/cio/ConnectionOptions;
    .locals 1

    .line 31
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getKeepAlive$cp()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getUpgrade()Lio/ktor/http/cio/ConnectionOptions;
    .locals 1

    .line 36
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getUpgrade$cp()Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;
    .locals 9
    .param p1, "connection"    # Ljava/lang/CharSequence;

    .line 48
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    invoke-static {}, Lio/ktor/http/cio/ConnectionOptions;->access$getKnownTypes$cp()Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v1

    sget-object v0, Lio/ktor/http/cio/ConnectionOptions$Companion$parse$known$1;->INSTANCE:Lio/ktor/http/cio/ConnectionOptions$Companion$parse$known$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lio/ktor/http/cio/internals/AsciiCharTree;->search$default(Lio/ktor/http/cio/internals/AsciiCharTree;Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "known":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/http/cio/ConnectionOptions;

    return-object v1

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lio/ktor/http/cio/ConnectionOptions$Companion;->parseSlow(Ljava/lang/CharSequence;)Lio/ktor/http/cio/ConnectionOptions;

    move-result-object v1

    return-object v1
.end method
