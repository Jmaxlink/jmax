.class public final Lio/ktor/server/routing/RoutingBuilderKt;
.super Ljava/lang/Object;
.source "RoutingBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/routing/RoutingBuilderKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001a>\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\t\"\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u00a2\u0006\u0002\u0010\n\u001a-\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001a\u0012\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r\u001aO\u0010\u000e\u001a\u00020\u0001*\u00020\u000129\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aW\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r29\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001aO\u0010\u0017\u001a\u00020\u0001*\u00020\u000129\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aW\u0010\u0017\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r29\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001aO\u0010\u0018\u001a\u00020\u0001*\u00020\u000129\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aW\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r29\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001a5\u0010\u0019\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001a-\u0010\u001c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001d2\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001a-\u0010\u001e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\r2\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001aO\u0010\u001f\u001a\u00020\u0001*\u00020\u000129\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aW\u0010\u001f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r29\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001a-\u0010 \u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\r2\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001a5\u0010 \u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001aO\u0010!\u001a\u00020\u0001*\u00020\u000129\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aW\u0010!\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r29\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001ah\u0010!\u001a\u00020\u0001\"\n\u0008\u0000\u0010\"\u0018\u0001*\u00020\u0014*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2;\u0008\u0004\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u0002H\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010\u0016\u001a`\u0010!\u001a\u00020\u0001\"\n\u0008\u0000\u0010\"\u0018\u0001*\u00020\u0014*\u00020\u00012;\u0008\u0004\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u0002H\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010\u0015\u001aO\u0010%\u001a\u00020\u0001*\u00020\u000129\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aW\u0010%\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r29\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001ah\u0010%\u001a\u00020\u0001\"\n\u0008\u0000\u0010\"\u0018\u0001*\u00020\u0014*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2;\u0008\u0004\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u0002H\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\u0016\u001a`\u0010%\u001a\u00020\u0001\"\n\u0008\u0000\u0010\"\u0018\u0001*\u00020\u0014*\u00020\u00012;\u0008\u0004\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u0002H\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010\u0015\u001aO\u0010(\u001a\u00020\u0001*\u00020\u000129\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aW\u0010(\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r29\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016\u001ah\u0010(\u001a\u00020\u0001\"\n\u0008\u0000\u0010\"\u0018\u0001*\u00020\u0014*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2;\u0008\u0004\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u0002H\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010\u0016\u001a`\u0010(\u001a\u00020\u0001\"\n\u0008\u0000\u0010\"\u0018\u0001*\u00020\u0014*\u00020\u00012;\u0008\u0004\u0010\u000f\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u0002H\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0010\u00a2\u0006\u0002\u0008\u0007H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010\u0015\u001a5\u0010+\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u001a-\u0010+\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "accept",
        "Lio/ktor/server/routing/Route;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "build",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "contentTypes",
        "",
        "(Lio/ktor/server/routing/Route;[Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;",
        "createRouteFromPath",
        "path",
        "",
        "delete",
        "body",
        "Lkotlin/Function3;",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;",
        "(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;",
        "get",
        "head",
        "header",
        "name",
        "value",
        "method",
        "Lio/ktor/http/HttpMethod;",
        "optionalParam",
        "options",
        "param",
        "patch",
        "R",
        "patchTypedPath",
        "patchTyped",
        "post",
        "postTypedPath",
        "postTyped",
        "put",
        "putTypedPath",
        "putTyped",
        "route",
        "ktor-server-core"
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
.method public static final synthetic accept(Lio/ktor/server/routing/Route;Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$accept"    # Lio/ktor/server/routing/Route;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Please use method with vararg parameter"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Lio/ktor/http/ContentType;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$accept$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$accept$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->accept(Lio/ktor/server/routing/Route;[Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final accept(Lio/ktor/server/routing/Route;[Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$accept"    # Lio/ktor/server/routing/Route;
    .param p1, "contentTypes"    # [Lio/ktor/http/ContentType;
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "[",
            "Lio/ktor/http/ContentType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;-><init>(Ljava/util/List;)V

    .line 100
    .local v0, "selector":Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final contentType(Lio/ktor/server/routing/Route;Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$contentType"    # Lio/ktor/server/routing/Route;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lio/ktor/http/ContentType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;-><init>(Lio/ktor/http/ContentType;)V

    .line 110
    .local v0, "selector":Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final createRouteFromPath(Lio/ktor/server/routing/Route;Ljava/lang/String;)Lio/ktor/server/routing/Route;
    .locals 8
    .param p0, "$this$createRouteFromPath"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lio/ktor/server/routing/RoutingPath;->Companion:Lio/ktor/server/routing/RoutingPath$Companion;

    invoke-virtual {v0, p1}, Lio/ktor/server/routing/RoutingPath$Companion;->parse(Ljava/lang/String;)Lio/ktor/server/routing/RoutingPath;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/routing/RoutingPath;->getParts()Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "parts":Ljava/util/List;
    move-object v1, p0

    .line 320
    .local v1, "current":Lio/ktor/server/routing/Route;
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 321
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/routing/RoutingPathSegment;

    invoke-virtual {v4}, Lio/ktor/server/routing/RoutingPathSegment;->component1()Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4}, Lio/ktor/server/routing/RoutingPathSegment;->component2()Lio/ktor/server/routing/RoutingPathSegmentKind;

    move-result-object v4

    .line 322
    .local v4, "kind":Lio/ktor/server/routing/RoutingPathSegmentKind;
    sget-object v6, Lio/ktor/server/routing/RoutingBuilderKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lio/ktor/server/routing/RoutingPathSegmentKind;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 324
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    :pswitch_0
    sget-object v6, Lio/ktor/server/routing/PathSegmentSelectorBuilder;->INSTANCE:Lio/ktor/server/routing/PathSegmentSelectorBuilder;

    invoke-virtual {v6, v5}, Lio/ktor/server/routing/PathSegmentSelectorBuilder;->parseConstant(Ljava/lang/String;)Lio/ktor/server/routing/RouteSelector;

    move-result-object v6

    goto :goto_1

    .line 323
    :pswitch_1
    sget-object v6, Lio/ktor/server/routing/PathSegmentSelectorBuilder;->INSTANCE:Lio/ktor/server/routing/PathSegmentSelectorBuilder;

    invoke-virtual {v6, v5}, Lio/ktor/server/routing/PathSegmentSelectorBuilder;->parseParameter(Ljava/lang/String;)Lio/ktor/server/routing/RouteSelector;

    move-result-object v6

    .line 322
    :goto_1
    nop

    .line 327
    .local v6, "selector":Lio/ktor/server/routing/RouteSelector;
    invoke-virtual {v1, v6}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 320
    .end local v4    # "kind":Lio/ktor/server/routing/RoutingPathSegmentKind;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "selector":Lio/ktor/server/routing/RouteSelector;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "index":I
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "/"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    sget-object v2, Lio/ktor/server/routing/TrailingSlashRouteSelector;->INSTANCE:Lio/ktor/server/routing/TrailingSlashRouteSelector;

    check-cast v2, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v1, v2}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 332
    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final delete(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$delete"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getDelete()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$delete$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$delete$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final delete(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$delete"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getDelete()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$delete$2;

    invoke-direct {v1, p1}, Lio/ktor/server/routing/RoutingBuilderKt$delete$2;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$get"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$get$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$get$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final get(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$get"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$get$2;

    invoke-direct {v1, p1}, Lio/ktor/server/routing/RoutingBuilderKt$get$2;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final head(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$head"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getHead()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$head$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$head$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final head(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$head"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getHead()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$head$2;

    invoke-direct {v1, p1}, Lio/ktor/server/routing/RoutingBuilderKt$head$2;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final header(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$header"    # Lio/ktor/server/routing/Route;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lio/ktor/server/routing/HttpHeaderRouteSelector;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/routing/HttpHeaderRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "selector":Lio/ktor/server/routing/HttpHeaderRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$method"    # Lio/ktor/server/routing/Route;
    .param p1, "method"    # Lio/ktor/http/HttpMethod;
    .param p2, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lio/ktor/http/HttpMethod;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lio/ktor/server/routing/HttpMethodRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/HttpMethodRouteSelector;-><init>(Lio/ktor/http/HttpMethod;)V

    .line 40
    .local v0, "selector":Lio/ktor/server/routing/HttpMethodRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final optionalParam(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$optionalParam"    # Lio/ktor/server/routing/Route;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lio/ktor/server/routing/OptionalParameterRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/OptionalParameterRouteSelector;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "selector":Lio/ktor/server/routing/OptionalParameterRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final options(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$options"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getOptions()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$options$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$options$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final options(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$options"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getOptions()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$options$2;

    invoke-direct {v1, p1}, Lio/ktor/server/routing/RoutingBuilderKt$options$2;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final param(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$param"    # Lio/ktor/server/routing/Route;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lio/ktor/server/routing/ConstantParameterRouteSelector;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/routing/ConstantParameterRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, "selector":Lio/ktor/server/routing/ConstantParameterRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final param(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$param"    # Lio/ktor/server/routing/Route;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lio/ktor/server/routing/ParameterRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/ParameterRouteSelector;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "selector":Lio/ktor/server/routing/ParameterRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final patch(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$patch"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPatch()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$patch$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$patch$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final patch(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$patch"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPatch()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$patch$2;

    invoke-direct {v1, p1}, Lio/ktor/server/routing/RoutingBuilderKt$patch$2;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic patchTyped(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$patch"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    .local v0, "$i$f$patchTyped":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$patch$3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/ktor/server/routing/RoutingBuilderKt$patch$3;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->patch(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 263
    return-object v1
.end method

.method public static final synthetic patchTypedPath(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$patch"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 274
    .local v0, "$i$f$patchTypedPath":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$patch$4;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/ktor/server/routing/RoutingBuilderKt$patch$4;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->patch(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 276
    return-object v1
.end method

.method public static final post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$post"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPost()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$post$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$post$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final post(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$post"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPost()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$post$4;

    invoke-direct {v1, p1}, Lio/ktor/server/routing/RoutingBuilderKt$post$4;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic postTyped(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$post"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    .local v0, "$i$f$postTyped":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$post$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/ktor/server/routing/RoutingBuilderKt$post$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 150
    return-object v1
.end method

.method public static final synthetic postTypedPath(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$post"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 161
    .local v0, "$i$f$postTypedPath":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$post$3;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/ktor/server/routing/RoutingBuilderKt$post$3;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 163
    return-object v1
.end method

.method public static final put(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$put"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPut()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$put$1;

    invoke-direct {v1, p2}, Lio/ktor/server/routing/RoutingBuilderKt$put$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final put(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$put"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPut()Lio/ktor/http/HttpMethod;

    move-result-object v0

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$put$2;

    invoke-direct {v1, p1}, Lio/ktor/server/routing/RoutingBuilderKt$put$2;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->method(Lio/ktor/server/routing/Route;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic putTyped(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$put"    # Lio/ktor/server/routing/Route;
    .param p1, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 218
    .local v0, "$i$f$putTyped":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$put$3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/ktor/server/routing/RoutingBuilderKt$put$3;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->put(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 220
    return-object v1
.end method

.method public static final synthetic putTypedPath(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$put"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "body"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 231
    .local v0, "$i$f$putTypedPath":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/ktor/server/routing/RoutingBuilderKt$put$4;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/ktor/server/routing/RoutingBuilderKt$put$4;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->put(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    move-result-object v1

    .line 233
    return-object v1
.end method

.method public static final route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpMethod;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$route"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Lio/ktor/http/HttpMethod;
    .param p3, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lio/ktor/http/HttpMethod;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lio/ktor/server/routing/HttpMethodRouteSelector;

    invoke-direct {v0, p2}, Lio/ktor/server/routing/HttpMethodRouteSelector;-><init>(Lio/ktor/http/HttpMethod;)V

    .line 30
    .local v0, "selector":Lio/ktor/server/routing/HttpMethodRouteSelector;
    invoke-static {p0, p1}, Lio/ktor/server/routing/RoutingBuilderKt;->createRouteFromPath(Lio/ktor/server/routing/Route;Ljava/lang/String;)Lio/ktor/server/routing/Route;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v1, v2}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 1
    .param p0, "$this$route"    # Lio/ktor/server/routing/Route;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lio/ktor/server/routing/RoutingBuilderKt;->createRouteFromPath(Lio/ktor/server/routing/Route;Ljava/lang/String;)Lio/ktor/server/routing/Route;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
