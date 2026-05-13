.class public final Lio/ktor/server/engine/ShutDownUrl;
.super Ljava/lang/Object;
.source "ShutDownUrl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/engine/ShutDownUrl$Companion;,
        Lio/ktor/server/engine/ShutDownUrl$Config;,
        Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShutDownUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShutDownUrl.kt\nio/ktor/server/engine/ShutDownUrl\n+ 2 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,109:1\n26#2,2:110\n29#2,2:115\n17#3,3:112\n*S KotlinDebug\n*F\n+ 1 ShutDownUrl.kt\nio/ktor/server/engine/ShutDownUrl\n*L\n49#1:110,2\n49#1:115,2\n49#1:112,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0003\u0012\u0013\u0014B&\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\tJ\u0019\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\"\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ktor/server/engine/ShutDownUrl;",
        "",
        "url",
        "",
        "exitCode",
        "Lkotlin/Function1;",
        "Lio/ktor/server/application/ApplicationCall;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "getExitCode",
        "()Lkotlin/jvm/functions/Function1;",
        "getUrl",
        "()Ljava/lang/String;",
        "doShutdown",
        "",
        "call",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "Config",
        "EnginePlugin",
        "ktor-server-host-common"
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
.field private static final ApplicationCallPlugin:Lio/ktor/server/application/BaseApplicationPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/BaseApplicationPlugin<",
            "Lio/ktor/server/application/Application;",
            "Lio/ktor/server/engine/ShutDownUrl$Config;",
            "Lio/ktor/server/application/PluginInstance;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/ktor/server/engine/ShutDownUrl$Companion;


# instance fields
.field private final exitCode:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/ktor/server/engine/ShutDownUrl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/engine/ShutDownUrl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/engine/ShutDownUrl;->Companion:Lio/ktor/server/engine/ShutDownUrl$Companion;

    .line 98
    sget-object v0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$1;->INSTANCE:Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    sget-object v1, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;->INSTANCE:Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "shutdown.url"

    invoke-static {v2, v0, v1}, Lio/ktor/server/application/CreatePluginUtilsKt;->createApplicationPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/ApplicationPlugin;

    move-result-object v0

    check-cast v0, Lio/ktor/server/application/BaseApplicationPlugin;

    sput-object v0, Lio/ktor/server/engine/ShutDownUrl;->ApplicationCallPlugin:Lio/ktor/server/application/BaseApplicationPlugin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "exitCode"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/engine/ShutDownUrl;->url:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/server/engine/ShutDownUrl;->exitCode:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getApplicationCallPlugin$cp()Lio/ktor/server/application/BaseApplicationPlugin;
    .locals 1

    .line 24
    sget-object v0, Lio/ktor/server/engine/ShutDownUrl;->ApplicationCallPlugin:Lio/ktor/server/application/BaseApplicationPlugin;

    return-object v0
.end method


# virtual methods
.method public final doShutdown(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
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

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;

    iget v2, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;-><init>(Lio/ktor/server/engine/ShutDownUrl;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v4, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$respondWithType":I
    iget-object v4, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    .local v4, "latch":Lkotlinx/coroutines/CompletableDeferred;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 51
    .end local v0    # "$i$f$respondWithType":I
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 28
    .end local v4    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lio/ktor/server/engine/ShutDownUrl;
    move-object/from16 v7, p1

    .line 29
    .local v7, "call":Lio/ktor/server/application/ApplicationCall;
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v8

    invoke-static {v8}, Lio/ktor/server/application/ApplicationKt;->getLog(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "Shutdown URL was called: server is going down"

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 30
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v8

    .line 31
    .local v8, "application":Lio/ktor/server/application/Application;
    invoke-virtual {v8}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v9

    .line 32
    .local v9, "environment":Lio/ktor/server/application/ApplicationEnvironment;
    iget-object v10, v4, Lio/ktor/server/engine/ShutDownUrl;->exitCode:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 34
    .local v4, "exitCode":I
    invoke-static {v6, v5, v6}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v15

    .line 35
    .local v15, "latch":Lkotlinx/coroutines/CompletableDeferred;
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    new-instance v17, Lio/ktor/server/engine/ShutDownUrl$doShutdown$2;

    const/16 v18, 0x0

    move-object/from16 v10, v17

    move-object v11, v15

    move-object v12, v9

    move-object v13, v8

    move v14, v4

    move-object v6, v15

    .end local v15    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    .local v6, "latch":Lkotlinx/coroutines/CompletableDeferred;
    move-object/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lio/ktor/server/engine/ShutDownUrl$doShutdown$2;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/application/Application;ILkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v17

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 48
    .end local v4    # "exitCode":I
    .end local v8    # "application":Lio/ktor/server/application/Application;
    .end local v9    # "environment":Lio/ktor/server/application/ApplicationEnvironment;
    nop

    .line 49
    :try_start_1
    sget-object v4, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v4}, Lio/ktor/http/HttpStatusCode$Companion;->getGone()Lio/ktor/http/HttpStatusCode;

    move-result-object v4

    .local v4, "message$iv":Ljava/lang/Object;
    .local v7, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v8, 0x0

    .line 110
    .local v8, "$i$f$respondWithType":I
    instance-of v9, v4, Lio/ktor/http/content/OutgoingContent;

    if-nez v9, :cond_1

    instance-of v9, v4, [B

    if-nez v9, :cond_1

    .line 111
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v9

    const/4 v10, 0x0

    .local v10, "$i$f$typeInfo":I
    const-class v11, Lio/ktor/http/HttpStatusCode;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v11

    .line 112
    nop

    .line 113
    .local v11, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v11}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 114
    .local v12, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v13, Lio/ktor/http/HttpStatusCode;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v12, v13, v11}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v13

    .line 111
    .end local v10    # "$i$f$typeInfo":I
    .end local v11    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v12    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v9, v13}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 115
    :cond_1
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v9

    invoke-interface {v9}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v4

    check-cast v10, Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->L$0:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/server/engine/ShutDownUrl$doShutdown$1;->label:I

    invoke-virtual {v9, v7, v10, v1}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "message$iv":Ljava/lang/Object;
    .end local v7    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    if-ne v9, v0, :cond_2

    .line 28
    return-object v0

    .line 115
    :cond_2
    move-object v4, v6

    move v0, v8

    .line 116
    .end local v6    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    .end local v8    # "$i$f$respondWithType":I
    .restart local v0    # "$i$f$respondWithType":I
    .local v4, "latch":Lkotlinx/coroutines/CompletableDeferred;
    :goto_1
    nop

    .line 51
    .end local v0    # "$i$f$respondWithType":I
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 52
    .end local v4    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    move-object v0, v4

    .line 53
    .local v0, "latch":Lkotlinx/coroutines/CompletableDeferred;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 51
    .end local v0    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    .restart local v6    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    :catchall_1
    move-exception v0

    move-object v4, v6

    .end local v6    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    .restart local v4    # "latch":Lkotlinx/coroutines/CompletableDeferred;
    :goto_2
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/Job;

    const/4 v7, 0x0

    invoke-static {v6, v7, v5, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getExitCode()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lio/ktor/server/engine/ShutDownUrl;->exitCode:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/server/engine/ShutDownUrl;->url:Ljava/lang/String;

    return-object v0
.end method
