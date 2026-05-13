.class final Lio/ktor/util/NonceKt$nonceGeneratorJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Nonce.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/NonceKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.util.NonceKt$nonceGeneratorJob$1"
    f = "Nonce.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x4c
    }
    m = "invokeSuspend"
    n = {
        "seedChannel",
        "previousRoundNonceList",
        "secureInstance",
        "weakRandom",
        "secureBytes",
        "weakBytes",
        "randomNonceList",
        "lastReseed",
        "index"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "J$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/NonceKt$nonceGeneratorJob$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;

    invoke-direct {v0, p2}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 34
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/util/NonceKt$nonceGeneratorJob$1;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget v5, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$1:I

    iget v6, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$0:I

    .local v6, "index":I
    iget-wide v7, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->J$0:J

    .local v7, "lastReseed":J
    iget-object v9, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    .local v9, "randomNonceList":Ljava/util/List;
    iget-object v10, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$5:Ljava/lang/Object;

    check-cast v10, [B

    .local v10, "weakBytes":[B
    iget-object v11, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$4:Ljava/lang/Object;

    check-cast v11, [B

    .local v11, "secureBytes":[B
    iget-object v12, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/security/SecureRandom;

    .local v12, "weakRandom":Ljava/security/SecureRandom;
    iget-object v13, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/security/SecureRandom;

    .local v13, "secureInstance":Ljava/security/SecureRandom;
    iget-object v14, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    .local v14, "previousRoundNonceList":Ljava/util/ArrayList;
    iget-object v15, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/channels/Channel;

    .local v15, "seedChannel":Lkotlinx/coroutines/channels/Channel;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    move-object v3, v14

    move-object v14, v10

    move-object v10, v13

    move v13, v5

    move-object/from16 v20, v12

    move-object v12, v11

    move-object/from16 v11, v20

    goto/16 :goto_4

    .line 85
    .end local v6    # "index":I
    .end local v7    # "lastReseed":J
    .end local v9    # "randomNonceList":Ljava/util/List;
    .end local v10    # "weakBytes":[B
    .end local v11    # "secureBytes":[B
    .end local v12    # "weakRandom":Ljava/security/SecureRandom;
    .end local v13    # "secureInstance":Ljava/security/SecureRandom;
    .end local v14    # "previousRoundNonceList":Ljava/util/ArrayList;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 34
    .end local v2    # "this":Lio/ktor/util/NonceKt$nonceGeneratorJob$1;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v15    # "seedChannel":Lkotlinx/coroutines/channels/Channel;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/NonceKt$nonceGeneratorJob$1;
    move-object/from16 v4, p1

    .line 35
    .restart local v4    # "$result":Ljava/lang/Object;
    invoke-static {}, Lio/ktor/util/NonceKt;->getSeedChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v5

    .line 36
    .local v5, "seedChannel":Lkotlinx/coroutines/channels/Channel;
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "lastReseed":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v8, "previousRoundNonceList":Ljava/util/ArrayList;
    invoke-static {}, Lio/ktor/util/NonceKt;->access$lookupSecureRandom()Ljava/security/SecureRandom;

    move-result-object v9

    .line 39
    .local v9, "secureInstance":Ljava/security/SecureRandom;
    const-string v10, "SHA1PRNG"

    invoke-static {v10}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v10

    .line 41
    .local v10, "weakRandom":Ljava/security/SecureRandom;
    const/16 v11, 0x80

    new-array v11, v11, [B

    .line 42
    .restart local v11    # "secureBytes":[B
    array-length v12, v11

    mul-int/lit8 v12, v12, 0x4

    new-array v12, v12, [B

    .line 44
    .local v12, "weakBytes":[B
    array-length v13, v11

    invoke-virtual {v9, v13}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 46
    move-object v15, v5

    .line 47
    .end local v5    # "seedChannel":Lkotlinx/coroutines/channels/Channel;
    .restart local v15    # "seedChannel":Lkotlinx/coroutines/channels/Channel;
    :goto_0
    nop

    .line 49
    :try_start_1
    invoke-virtual {v9, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 50
    invoke-virtual {v10, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v13, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    if-ge v5, v13, :cond_0

    .line 54
    mul-int/lit8 v14, v5, 0x4

    :try_start_2
    aget-byte v16, v11, v5

    aput-byte v16, v12, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 60
    .end local v5    # "i":I
    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    .local v13, "currentTime":J
    sub-long v16, v13, v6

    const-wide/16 v18, 0x7530

    cmp-long v5, v16, v18

    if-lez v5, :cond_1

    .line 63
    move-object/from16 p1, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    sub-long v3, v6, v13

    :try_start_4
    invoke-virtual {v10, v3, v4}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 64
    .end local v6    # "lastReseed":J
    array-length v3, v11

    invoke-virtual {v9, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 65
    move-wide v6, v13

    .end local v13    # "currentTime":J
    .restart local v6    # "lastReseed":J
    goto :goto_2

    .line 62
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v13    # "currentTime":J
    :cond_1
    move-object/from16 p1, v4

    .line 67
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v13    # "currentTime":J
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-virtual {v10, v11}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 72
    :goto_2
    invoke-static {v12}, Lio/ktor/util/CryptoKt;->hex([B)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v4, v8

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, "weakRandom"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v10

    check-cast v4, Ljava/util/Random;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;Ljava/util/Random;)Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, "randomNonceList":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "index":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    div-int/lit8 v13, v13, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v14, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v3

    move-object v3, v8

    move-wide v7, v6

    move v6, v4

    move-object/from16 v4, p1

    .end local v8    # "previousRoundNonceList":Ljava/util/ArrayList;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v3, "previousRoundNonceList":Ljava/util/ArrayList;
    .local v4, "$result":Ljava/lang/Object;
    .local v6, "index":I
    .restart local v7    # "lastReseed":J
    .local v9, "randomNonceList":Ljava/util/List;
    .local v10, "secureInstance":Ljava/security/SecureRandom;
    .local v11, "weakRandom":Ljava/security/SecureRandom;
    .local v12, "secureBytes":[B
    .local v14, "weakBytes":[B
    :goto_3
    if-ge v6, v13, :cond_3

    .line 76
    :try_start_5
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v2

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object v15, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$4:Ljava/lang/Object;

    iput-object v14, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$6:Ljava/lang/Object;

    iput-wide v7, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->J$0:J

    iput v6, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$0:I

    iput v13, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$1:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 p1, v4

    const/4 v4, 0x1

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_6
    iput v4, v2, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->label:I

    invoke-interface {v15, v5, v1}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 34
    return-object v0

    .line 76
    :cond_2
    move-object/from16 v1, p1

    .line 75
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_4
    const/4 v4, 0x1

    add-int/2addr v6, v4

    move-object v4, v1

    move-object/from16 v1, p0

    goto :goto_3

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_3
    move-object/from16 p1, v4

    .line 80
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "index":I
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 81
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .local v1, "index":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    :goto_5
    if-ge v1, v4, :cond_4

    .line 82
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-wide v6, v7

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    move-object v8, v3

    goto/16 :goto_0

    .line 85
    .end local v1    # "index":I
    .end local v3    # "previousRoundNonceList":Ljava/util/ArrayList;
    .end local v7    # "lastReseed":J
    .end local v9    # "randomNonceList":Ljava/util/List;
    .end local v10    # "secureInstance":Ljava/security/SecureRandom;
    .end local v11    # "weakRandom":Ljava/security/SecureRandom;
    .end local v12    # "secureBytes":[B
    .end local v14    # "weakBytes":[B
    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_6

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 p1, v4

    .line 86
    .local v0, "t":Ljava/lang/Throwable;
    :goto_6
    const/4 v1, 0x0

    :try_start_7
    invoke-interface {v15, v0}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 88
    nop

    .end local v0    # "t":Ljava/lang/Throwable;
    move-object v0, v15

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 89
    .end local v15    # "seedChannel":Lkotlinx/coroutines/channels/Channel;
    move-object v0, v15

    .line 90
    .local v0, "seedChannel":Lkotlinx/coroutines/channels/Channel;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 88
    .end local v0    # "seedChannel":Lkotlinx/coroutines/channels/Channel;
    .restart local v15    # "seedChannel":Lkotlinx/coroutines/channels/Channel;
    :catchall_3
    move-exception v0

    const/4 v3, 0x1

    move-object v5, v0

    move-object v0, v15

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, v1, v3, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
