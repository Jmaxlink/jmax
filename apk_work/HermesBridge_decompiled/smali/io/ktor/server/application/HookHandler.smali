.class public final Lio/ktor/server/application/HookHandler;
.super Ljava/lang/Object;
.source "Hook.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u0010\u0010\u0005\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/server/application/HookHandler;",
        "T",
        "",
        "hook",
        "Lio/ktor/server/application/Hook;",
        "handler",
        "(Lio/ktor/server/application/Hook;Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "install",
        "",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
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
.field private final handler:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hook:Lio/ktor/server/application/Hook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/Hook<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/server/application/Hook;Ljava/lang/Object;)V
    .locals 1
    .param p1, "hook"    # Lio/ktor/server/application/Hook;
    .param p2, "handler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/Hook<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "hook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/application/HookHandler;->hook:Lio/ktor/server/application/Hook;

    iput-object p2, p0, Lio/ktor/server/application/HookHandler;->handler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final install(Lio/ktor/server/application/ApplicationCallPipeline;)V
    .locals 2
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lio/ktor/server/application/HookHandler;->hook:Lio/ktor/server/application/Hook;

    iget-object v1, p0, Lio/ktor/server/application/HookHandler;->handler:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lio/ktor/server/application/Hook;->install(Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;)V

    .line 23
    return-void
.end method
