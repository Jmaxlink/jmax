.class final Lio/ktor/server/application/debug/UtilsKt$ijDebugReportHandlerStarted$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/debug/UtilsKt;->ijDebugReportHandlerStarted(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/util/debug/plugins/PluginsTrace;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "trace",
        "Lio/ktor/util/debug/plugins/PluginsTrace;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $handler:Ljava/lang/String;

.field final synthetic $pluginName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/application/debug/UtilsKt$ijDebugReportHandlerStarted$2;->$pluginName:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/server/application/debug/UtilsKt$ijDebugReportHandlerStarted$2;->$handler:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p1

    check-cast v0, Lio/ktor/util/debug/plugins/PluginsTrace;

    invoke-virtual {p0, v0}, Lio/ktor/server/application/debug/UtilsKt$ijDebugReportHandlerStarted$2;->invoke(Lio/ktor/util/debug/plugins/PluginsTrace;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/util/debug/plugins/PluginsTrace;)V
    .locals 5
    .param p1, "trace"    # Lio/ktor/util/debug/plugins/PluginsTrace;

    const-string v0, "trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lio/ktor/util/debug/plugins/PluginsTrace;->getEventOrder()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/ktor/util/debug/plugins/PluginTraceElement;

    iget-object v2, p0, Lio/ktor/server/application/debug/UtilsKt$ijDebugReportHandlerStarted$2;->$pluginName:Ljava/lang/String;

    iget-object v3, p0, Lio/ktor/server/application/debug/UtilsKt$ijDebugReportHandlerStarted$2;->$handler:Ljava/lang/String;

    sget-object v4, Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;->STARTED:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    invoke-direct {v1, v2, v3, v4}, Lio/ktor/util/debug/plugins/PluginTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method
