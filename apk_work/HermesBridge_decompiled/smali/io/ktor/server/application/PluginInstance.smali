.class public final Lio/ktor/server/application/PluginInstance;
.super Ljava/lang/Object;
.source "PluginInstance.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0013\u0008\u0000\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/ktor/server/application/PluginInstance;",
        "",
        "builder",
        "Lio/ktor/server/application/PluginBuilder;",
        "(Lio/ktor/server/application/PluginBuilder;)V",
        "getBuilder$ktor_server_core",
        "()Lio/ktor/server/application/PluginBuilder;",
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
.field private final builder:Lio/ktor/server/application/PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/PluginBuilder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/server/application/PluginBuilder;)V
    .locals 1
    .param p1, "builder"    # Lio/ktor/server/application/PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/PluginBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/application/PluginInstance;->builder:Lio/ktor/server/application/PluginBuilder;

    return-void
.end method


# virtual methods
.method public final getBuilder$ktor_server_core()Lio/ktor/server/application/PluginBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/server/application/PluginBuilder<",
            "*>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lio/ktor/server/application/PluginInstance;->builder:Lio/ktor/server/application/PluginBuilder;

    return-object v0
.end method
