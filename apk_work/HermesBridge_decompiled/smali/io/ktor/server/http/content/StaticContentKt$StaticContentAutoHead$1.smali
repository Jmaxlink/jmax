.class final Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StaticContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/http/content/StaticContentKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/application/RouteScopedPluginBuilder<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/RouteScopedPluginBuilder;",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;

    invoke-direct {v0}, Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;-><init>()V

    sput-object v0, Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 23
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/RouteScopedPluginBuilder;

    invoke-virtual {p0, v0}, Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;->invoke(Lio/ktor/server/application/RouteScopedPluginBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/application/RouteScopedPluginBuilder;)V
    .locals 3
    .param p1, "$this$createRouteScopedPlugin"    # Lio/ktor/server/application/RouteScopedPluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/RouteScopedPluginBuilder<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$createRouteScopedPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;->INSTANCE:Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;

    check-cast v0, Lio/ktor/server/application/Hook;

    new-instance v1, Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0, v1}, Lio/ktor/server/application/RouteScopedPluginBuilder;->on(Lio/ktor/server/application/Hook;Ljava/lang/Object;)V

    .line 39
    return-void
.end method
