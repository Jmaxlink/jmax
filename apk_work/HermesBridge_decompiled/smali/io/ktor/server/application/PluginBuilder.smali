.class public abstract Lio/ktor/server/application/PluginBuilder;
.super Ljava/lang/Object;
.source "PluginBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PluginConfig:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0015\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\r\u0010.\u001a\u00020/H\u0000\u00a2\u0006\u0002\u00080J\'\u00101\u001a\u00020\u0016\"\u0004\u0008\u0001\u001022\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u0002H2042\u0006\u00105\u001a\u0002H2\u00a2\u0006\u0002\u00106JR\u00107\u001a\u00020\u00162B\u00108\u001a>\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000:\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160?\u0012\u0006\u0012\u0004\u0018\u00010\u000209\u00a2\u0006\u0002\u0008@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJR\u0010B\u001a\u00020\u00162B\u00108\u001a>\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000C\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160?\u0012\u0006\u0012\u0004\u0018\u00010\u000209\u00a2\u0006\u0002\u0008@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJg\u0010B\u001a\u00020\u00162W\u00108\u001aS\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000C\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(>\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(E\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160?\u0012\u0006\u0012\u0004\u0018\u00010\u00020D\u00a2\u0006\u0002\u0008@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010FJR\u0010G\u001a\u00020\u00162B\u00108\u001a>\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000H\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160?\u0012\u0006\u0012\u0004\u0018\u00010\u000209\u00a2\u0006\u0002\u0008@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJg\u0010G\u001a\u00020\u00162W\u00108\u001aS\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000H\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(>\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(E\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160?\u0012\u0006\u0012\u0004\u0018\u00010\u00020D\u00a2\u0006\u0002\u0008@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010FJ\u00d6\u0001\u0010I\u001a\u00020\u0016\"\u0008\u0008\u0001\u0010J*\u00020\u0002\"\u000e\u0008\u0002\u0010K*\u0008\u0012\u0004\u0012\u00028\u00000L2\u0012\u0010M\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002HJ0\t0\u00082\u0006\u0010N\u001a\u00020/2\u0006\u0010O\u001a\u00020P23\u0010Q\u001a/\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(+\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HJ\u0012\u0004\u0012\u00020;0S\u0012\u0004\u0012\u0002HK0R2Q\u00108\u001aM\u0008\u0001\u0012\u0004\u0012\u0002HK\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(>\u0012\u0013\u0012\u0011HJ\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(E\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160?\u0012\u0006\u0012\u0004\u0018\u00010\u00020D\u00a2\u0006\u0002\u0008@H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010TJ\u00b8\u0001\u0010U\u001a\u00020\u0016\"\u0008\u0008\u0001\u0010J*\u00020\u0002\"\u000e\u0008\u0002\u0010K*\u0008\u0012\u0004\u0012\u00028\u00000L2\u0012\u0010M\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002HJ0\t0\u00082\u0006\u0010N\u001a\u00020/2\u0006\u0010O\u001a\u00020P23\u0010Q\u001a/\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(+\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002HJ\u0012\u0004\u0012\u00020;0S\u0012\u0004\u0012\u0002HK0R23\u00108\u001a/\u0008\u0001\u0012\u0004\u0012\u0002HK\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u0002HJ\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160?\u0012\u0006\u0012\u0004\u0018\u00010\u00020D\u00a2\u0006\u0002\u0008@H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010TR$\u0010\u0007\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00020\tj\u0002`\n0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\r\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R$\u0010\u0015\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00160\tj\u0002`\u00170\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000cR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001e0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u000cR\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R$\u0010\"\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00020\tj\u0002`#0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u000cR$\u0010%\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00020\tj\u0002`\n0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u000cR\u0012\u0010\'\u001a\u00020(X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0012\u0010+\u001a\u00028\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006V"
    }
    d2 = {
        "Lio/ktor/server/application/PluginBuilder;",
        "PluginConfig",
        "",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/server/application/PluginInstance;",
        "(Lio/ktor/util/AttributeKey;)V",
        "afterResponseInterceptions",
        "",
        "Lio/ktor/server/application/Interception;",
        "Lio/ktor/server/application/ResponseInterception;",
        "getAfterResponseInterceptions$ktor_server_core",
        "()Ljava/util/List;",
        "application",
        "Lio/ktor/server/application/Application;",
        "getApplication",
        "()Lio/ktor/server/application/Application;",
        "applicationConfig",
        "Lio/ktor/server/config/ApplicationConfig;",
        "getApplicationConfig",
        "()Lio/ktor/server/config/ApplicationConfig;",
        "callInterceptions",
        "",
        "Lio/ktor/server/application/CallInterception;",
        "getCallInterceptions$ktor_server_core",
        "environment",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "getEnvironment",
        "()Lio/ktor/server/application/ApplicationEnvironment;",
        "hooks",
        "Lio/ktor/server/application/HookHandler;",
        "getHooks$ktor_server_core",
        "getKey$ktor_server_core",
        "()Lio/ktor/util/AttributeKey;",
        "onReceiveInterceptions",
        "Lio/ktor/server/application/ReceiveInterception;",
        "getOnReceiveInterceptions$ktor_server_core",
        "onResponseInterceptions",
        "getOnResponseInterceptions$ktor_server_core",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "getPipeline$ktor_server_core",
        "()Lio/ktor/server/application/ApplicationCallPipeline;",
        "pluginConfig",
        "getPluginConfig",
        "()Ljava/lang/Object;",
        "newPhase",
        "Lio/ktor/util/pipeline/PipelinePhase;",
        "newPhase$ktor_server_core",
        "on",
        "HookHandler",
        "hook",
        "Lio/ktor/server/application/Hook;",
        "handler",
        "(Lio/ktor/server/application/Hook;Ljava/lang/Object;)V",
        "onCall",
        "block",
        "Lkotlin/Function3;",
        "Lio/ktor/server/application/OnCallContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/ParameterName;",
        "name",
        "call",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;)V",
        "onCallReceive",
        "Lio/ktor/server/application/OnCallReceiveContext;",
        "Lkotlin/Function4;",
        "body",
        "(Lkotlin/jvm/functions/Function4;)V",
        "onCallRespond",
        "Lio/ktor/server/application/OnCallRespondContext;",
        "onDefaultPhase",
        "T",
        "ContextT",
        "Lio/ktor/server/application/CallContext;",
        "interceptions",
        "phase",
        "handlerName",
        "",
        "contextInit",
        "Lkotlin/Function2;",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V",
        "onDefaultPhaseWithMessage",
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
.field private final afterResponseInterceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final callInterceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/application/HookHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final onReceiveInterceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onResponseInterceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/util/AttributeKey;)V
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/ktor/server/application/PluginBuilder;->key:Lio/ktor/util/AttributeKey;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/application/PluginBuilder;->callInterceptions:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/application/PluginBuilder;->onReceiveInterceptions:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/application/PluginBuilder;->onResponseInterceptions:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/application/PluginBuilder;->afterResponseInterceptions:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/application/PluginBuilder;->hooks:Ljava/util/List;

    .line 21
    return-void
.end method

.method private final onDefaultPhase(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V
    .locals 8
    .param p1, "interceptions"    # Ljava/util/List;
    .param p2, "phase"    # Lio/ktor/util/pipeline/PipelinePhase;
    .param p3, "handlerName"    # Ljava/lang/String;
    .param p4, "contextInit"    # Lkotlin/jvm/functions/Function2;
    .param p5, "block"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ContextT:",
            "Lio/ktor/server/application/CallContext<",
            "TPluginConfig;>;>(",
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "TT;>;>;",
            "Lio/ktor/util/pipeline/PipelinePhase;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-TPluginConfig;-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;+TContextT;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-TContextT;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 215
    new-instance v0, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;

    const/4 v1, 0x0

    invoke-direct {v0, p5, v1}, Lio/ktor/server/application/PluginBuilder$onDefaultPhase$1;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lio/ktor/server/application/PluginBuilder;->onDefaultPhaseWithMessage(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V

    .line 216
    return-void
.end method

.method private final onDefaultPhaseWithMessage(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V
    .locals 8
    .param p1, "interceptions"    # Ljava/util/List;
    .param p2, "phase"    # Lio/ktor/util/pipeline/PipelinePhase;
    .param p3, "handlerName"    # Ljava/lang/String;
    .param p4, "contextInit"    # Lkotlin/jvm/functions/Function2;
    .param p5, "block"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ContextT:",
            "Lio/ktor/server/application/CallContext<",
            "TPluginConfig;>;>(",
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "TT;>;>;",
            "Lio/ktor/util/pipeline/PipelinePhase;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-TPluginConfig;-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;+TContextT;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-TContextT;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 186
    nop

    .line 187
    new-instance v0, Lio/ktor/server/application/Interception;

    .line 188
    nop

    .line 186
    new-instance v7, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;-><init>(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/server/application/PluginBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 187
    invoke-direct {v0, p2, v7}, Lio/ktor/server/application/Interception;-><init>(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function1;)V

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method


# virtual methods
.method public final getAfterResponseInterceptions$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder;->afterResponseInterceptions:Ljava/util/List;

    return-object v0
.end method

.method public abstract getApplication()Lio/ktor/server/application/Application;
.end method

.method public final getApplicationConfig()Lio/ktor/server/config/ApplicationConfig;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationEnvironment;->getConfig()Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCallInterceptions$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder;->callInterceptions:Ljava/util/List;

    return-object v0
.end method

.method public final getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/ktor/server/application/PluginBuilder;->getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/application/ApplicationCallPipeline;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public final getHooks$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/application/HookHandler<",
            "*>;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder;->hooks:Ljava/util/List;

    return-object v0
.end method

.method public final getKey$ktor_server_core()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public final getOnReceiveInterceptions$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder;->onReceiveInterceptions:Ljava/util/List;

    return-object v0
.end method

.method public final getOnResponseInterceptions$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/application/Interception<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder;->onResponseInterceptions:Ljava/util/List;

    return-object v0
.end method

.method public abstract getPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;
.end method

.method public abstract getPluginConfig()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPluginConfig;"
        }
    .end annotation
.end method

.method public final newPhase$ktor_server_core()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 3

    .line 218
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/ktor/server/application/PluginBuilder;->key:Lio/ktor/util/AttributeKey;

    invoke-virtual {v2}, Lio/ktor/util/AttributeKey;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Phase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v2}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final on(Lio/ktor/server/application/Hook;Ljava/lang/Object;)V
    .locals 2
    .param p1, "hook"    # Lio/ktor/server/application/Hook;
    .param p2, "handler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HookHandler:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/Hook<",
            "THookHandler;>;THookHandler;)V"
        }
    .end annotation

    const-string v0, "hook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lio/ktor/server/application/PluginBuilder;->hooks:Ljava/util/List;

    new-instance v1, Lio/ktor/server/application/HookHandler;

    invoke-direct {v1, p1, p2}, Lio/ktor/server/application/HookHandler;-><init>(Lio/ktor/server/application/Hook;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public final onCall(Lkotlin/jvm/functions/Function3;)V
    .locals 7
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/server/application/OnCallContext<",
            "TPluginConfig;>;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    nop

    .line 83
    iget-object v2, p0, Lio/ktor/server/application/PluginBuilder;->callInterceptions:Ljava/util/List;

    .line 84
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    invoke-virtual {v0}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;->getPlugins()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    .line 85
    nop

    .line 86
    sget-object v0, Lio/ktor/server/application/PluginBuilder$onCall$1;->INSTANCE:Lio/ktor/server/application/PluginBuilder$onCall$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 82
    new-instance v0, Lio/ktor/server/application/PluginBuilder$onCall$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/ktor/server/application/PluginBuilder$onCall$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function4;

    const-string v4, "onCall"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/application/PluginBuilder;->onDefaultPhase(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V

    .line 90
    return-void
.end method

.method public final onCallReceive(Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/server/application/OnCallReceiveContext<",
            "TPluginConfig;>;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lio/ktor/server/application/PluginBuilder$onCallReceive$3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/ktor/server/application/PluginBuilder$onCallReceive$3;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function4;

    invoke-virtual {p0, v0}, Lio/ktor/server/application/PluginBuilder;->onCallReceive(Lkotlin/jvm/functions/Function4;)V

    .line 164
    return-void
.end method

.method public final onCallReceive(Lkotlin/jvm/functions/Function4;)V
    .locals 7
    .param p1, "block"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lio/ktor/server/application/OnCallReceiveContext<",
            "TPluginConfig;>;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    nop

    .line 103
    iget-object v2, p0, Lio/ktor/server/application/PluginBuilder;->onReceiveInterceptions:Ljava/util/List;

    .line 104
    sget-object v0, Lio/ktor/server/request/ApplicationReceivePipeline;->Phases:Lio/ktor/server/request/ApplicationReceivePipeline$Phases;

    invoke-virtual {v0}, Lio/ktor/server/request/ApplicationReceivePipeline$Phases;->getTransform()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    .line 105
    nop

    .line 106
    sget-object v0, Lio/ktor/server/application/PluginBuilder$onCallReceive$1;->INSTANCE:Lio/ktor/server/application/PluginBuilder$onCallReceive$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 102
    new-instance v0, Lio/ktor/server/application/PluginBuilder$onCallReceive$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/ktor/server/application/PluginBuilder$onCallReceive$2;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function4;

    const-string v4, "onCallReceive"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/application/PluginBuilder;->onDefaultPhase(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V

    .line 108
    return-void
.end method

.method public final onCallRespond(Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/server/application/OnCallRespondContext<",
            "TPluginConfig;>;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lio/ktor/server/application/PluginBuilder$onCallRespond$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/ktor/server/application/PluginBuilder$onCallRespond$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function4;

    invoke-virtual {p0, v0}, Lio/ktor/server/application/PluginBuilder;->onCallRespond(Lkotlin/jvm/functions/Function4;)V

    .line 177
    return-void
.end method

.method public final onCallRespond(Lkotlin/jvm/functions/Function4;)V
    .locals 7
    .param p1, "block"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lio/ktor/server/application/OnCallRespondContext<",
            "TPluginConfig;>;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    nop

    .line 121
    iget-object v2, p0, Lio/ktor/server/application/PluginBuilder;->onResponseInterceptions:Ljava/util/List;

    .line 122
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    invoke-virtual {v0}, Lio/ktor/server/response/ApplicationSendPipeline$Phases;->getTransform()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    .line 123
    nop

    .line 124
    sget-object v0, Lio/ktor/server/application/PluginBuilder$onCallRespond$1;->INSTANCE:Lio/ktor/server/application/PluginBuilder$onCallRespond$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 125
    nop

    .line 120
    const-string v4, "onCallRespond"

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/application/PluginBuilder;->onDefaultPhase(Ljava/util/List;Lio/ktor/util/pipeline/PipelinePhase;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V

    .line 127
    return-void
.end method
