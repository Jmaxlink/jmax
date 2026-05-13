.class final Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StaticContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/StaticContentKt;->staticFiles(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/server/application/ApplicationCall;",
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
        "Lio/ktor/server/application/ApplicationCall;"
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
    c = "io.ktor.server.http.content.StaticContentKt$staticFiles$2"
    f = "StaticContent.kt"
    i = {}
    l = {
        0xae
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cacheControl:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lio/ktor/http/CacheControl;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $compressedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentType:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $defaultPath:Ljava/lang/String;

.field final synthetic $dir:Ljava/io/File;

.field final synthetic $exclude:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $index:Ljava/lang/String;

.field final synthetic $modify:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/io/File;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lio/ktor/http/ContentType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/io/File;",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$index:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$dir:Ljava/io/File;

    iput-object p3, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$compressedTypes:Ljava/util/List;

    iput-object p4, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$contentType:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$cacheControl:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$modify:Lkotlin/jvm/functions/Function3;

    iput-object p7, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$exclude:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$extensions:Ljava/util/List;

    iput-object p9, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$defaultPath:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance v11, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;

    iget-object v1, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$index:Ljava/lang/String;

    iget-object v2, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$dir:Ljava/io/File;

    iget-object v3, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$compressedTypes:Ljava/util/List;

    iget-object v4, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$contentType:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$cacheControl:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$modify:Lkotlin/jvm/functions/Function3;

    iget-object v7, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$exclude:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$extensions:Ljava/util/List;

    iget-object v9, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$defaultPath:Ljava/lang/String;

    move-object v0, v11

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v11, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/coroutines/Continuation;

    return-object v11
.end method

.method public final invoke(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/server/application/ApplicationCall;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->invoke(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 173
    iget v1, p0, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->L$0:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lio/ktor/server/application/ApplicationCall;

    .line 174
    .local v3, "$this$staticContentRoute":Lio/ktor/server/application/ApplicationCall;
    nop

    .line 175
    .end local v3    # "$this$staticContentRoute":Lio/ktor/server/application/ApplicationCall;
    iget-object v4, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$index:Ljava/lang/String;

    .line 176
    iget-object v5, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$dir:Ljava/io/File;

    .line 177
    iget-object v6, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$compressedTypes:Ljava/util/List;

    .line 178
    iget-object v7, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$contentType:Lkotlin/jvm/functions/Function1;

    .line 179
    iget-object v8, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$cacheControl:Lkotlin/jvm/functions/Function1;

    .line 180
    iget-object v9, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$modify:Lkotlin/jvm/functions/Function3;

    .line 181
    iget-object v10, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$exclude:Lkotlin/jvm/functions/Function1;

    .line 182
    iget-object v11, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$extensions:Ljava/util/List;

    .line 183
    iget-object v12, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->$defaultPath:Ljava/lang/String;

    move-object v13, v1

    check-cast v13, Lkotlin/coroutines/Continuation;

    .line 174
    const/4 v2, 0x1

    iput v2, v1, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;->label:I

    invoke-static/range {v3 .. v13}, Lio/ktor/server/http/content/StaticContentKt;->access$respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 173
    return-object v0

    .line 174
    :cond_0
    move-object v0, v1

    .line 185
    .end local v1    # "this":Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;
    .restart local v0    # "this":Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
