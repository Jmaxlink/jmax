.class public final Lio/ktor/http/content/MultipartKt;
.super Ljava/lang/Object;
.source "Multipart.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u001a9\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\"\u0010\u0003\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a\u001b\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n*\u00020\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "forEachPart",
        "",
        "Lio/ktor/http/content/MultiPartData;",
        "partHandler",
        "Lkotlin/Function2;",
        "Lio/ktor/http/content/PartData;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ktor/http/content/MultiPartData;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAllParts",
        "",
        "(Lio/ktor/http/content/MultiPartData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-http"
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
.method public static final forEachPart(Lio/ktor/http/content/MultiPartData;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/MultiPartData;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/http/content/PartData;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/http/content/MultipartKt$forEachPart$1;

    iget v1, v0, Lio/ktor/http/content/MultipartKt$forEachPart$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/http/content/MultipartKt$forEachPart$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/http/content/MultipartKt$forEachPart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/content/MultipartKt$forEachPart$1;

    invoke-direct {v0, p2}, Lio/ktor/http/content/MultipartKt$forEachPart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 126
    iget v2, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    .local p0, "partHandler":Lkotlin/jvm/functions/Function2;
    iget-object p1, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/content/MultiPartData;

    .local p1, "$this$forEachPart":Lio/ktor/http/content/MultiPartData;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_3

    .end local p0    # "partHandler":Lkotlin/jvm/functions/Function2;
    .end local p1    # "$this$forEachPart":Lio/ktor/http/content/MultiPartData;
    :pswitch_1
    iget-object p0, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    .restart local p0    # "partHandler":Lkotlin/jvm/functions/Function2;
    iget-object p1, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/content/MultiPartData;

    .restart local p1    # "$this$forEachPart":Lio/ktor/http/content/MultiPartData;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local p0    # "partHandler":Lkotlin/jvm/functions/Function2;
    .end local p1    # "$this$forEachPart":Lio/ktor/http/content/MultiPartData;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    .local p0, "$this$forEachPart":Lio/ktor/http/content/MultiPartData;
    .local p1, "partHandler":Lkotlin/jvm/functions/Function2;
    :goto_1
    nop

    .line 128
    iput-object p0, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->label:I

    invoke-interface {p0, p2}, Lio/ktor/http/content/MultiPartData;->readPart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 126
    return-object v1

    .line 128
    :cond_1
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    move-object v5, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    .end local v0    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local p0, "partHandler":Lkotlin/jvm/functions/Function2;
    .local p1, "$this$forEachPart":Lio/ktor/http/content/MultiPartData;
    :goto_2
    check-cast v0, Lio/ktor/http/content/PartData;

    if-nez v0, :cond_2

    .line 131
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 129
    .local v0, "part":Lio/ktor/http/content/PartData;
    :cond_2
    iput-object p1, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$0:Ljava/lang/Object;

    iput-object p0, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Lio/ktor/http/content/MultipartKt$forEachPart$1;->label:I

    invoke-interface {p0, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "part":Lio/ktor/http/content/PartData;
    if-ne v0, v2, :cond_3

    .line 126
    return-object v2

    .line 129
    :cond_3
    move-object v0, v1

    move-object v1, v2

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    .end local v1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local p0, "$this$forEachPart":Lio/ktor/http/content/MultiPartData;
    .local p1, "partHandler":Lkotlin/jvm/functions/Function2;
    :goto_3
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final readAllParts(Lio/ktor/http/content/MultiPartData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/MultiPartData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/content/PartData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/http/content/MultipartKt$readAllParts$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;

    iget v1, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;

    invoke-direct {v0, p1}, Lio/ktor/http/content/MultipartKt$readAllParts$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 137
    iget v2, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    iget-object v2, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/http/content/MultiPartData;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    iget-object p0, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/http/content/MultiPartData;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 138
    iput-object p0, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->label:I

    invoke-interface {p0, v0}, Lio/ktor/http/content/MultiPartData;->readPart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    .line 137
    return-object v1

    .line 138
    :cond_1
    :goto_1
    check-cast p1, Lio/ktor/http/content/PartData;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 139
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    move-object v2, p0

    move-object p0, v3

    .line 143
    :goto_2
    iput-object v2, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lio/ktor/http/content/MultipartKt$readAllParts$1;->label:I

    invoke-interface {v2, v0}, Lio/ktor/http/content/MultiPartData;->readPart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    .line 137
    return-object v1

    .line 143
    :cond_3
    :goto_3
    check-cast p1, Lio/ktor/http/content/PartData;

    if-nez p1, :cond_4

    .line 147
    return-object p0

    .line 144
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
