.class public interface abstract Lio/ktor/server/application/Plugin;
.super Ljava/lang/Object;
.source "ApplicationPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TPipeline:",
        "Lio/ktor/util/pipeline/Pipeline<",
        "*",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;TConfiguration:",
        "Ljava/lang/Object;",
        "TPlugin:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0014\u0008\u0000\u0010\u0001 \u0000*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00030\u0002*\n\u0008\u0001\u0010\u0004 \u0001*\u00020\u0005*\u0008\u0008\u0002\u0010\u0006*\u00020\u00052\u00020\u0005J.\u0010\u000b\u001a\u00028\u00022\u0006\u0010\u000c\u001a\u00028\u00002\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0002\u0008\u0010H&\u00a2\u0006\u0002\u0010\u0011R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/server/application/Plugin;",
        "TPipeline",
        "Lio/ktor/util/pipeline/Pipeline;",
        "Lio/ktor/server/application/ApplicationCall;",
        "TConfiguration",
        "",
        "TPlugin",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "install",
        "pipeline",
        "configure",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract getKey()Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "TTPlugin;>;"
        }
    .end annotation
.end method

.method public abstract install(Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPipeline;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTConfiguration;",
            "Lkotlin/Unit;",
            ">;)TTPlugin;"
        }
    .end annotation
.end method
