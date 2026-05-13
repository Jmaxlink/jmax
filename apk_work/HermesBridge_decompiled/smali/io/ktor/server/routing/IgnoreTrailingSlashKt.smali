.class public final Lio/ktor/server/routing/IgnoreTrailingSlashKt;
.super Ljava/lang/Object;
.source "IgnoreTrailingSlash.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"(\u0010\t\u001a\u00020\u0008*\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00088@@BX\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0003\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "IgnoreTrailingSlash",
        "Lio/ktor/server/application/ApplicationPlugin;",
        "",
        "getIgnoreTrailingSlash",
        "()Lio/ktor/server/application/ApplicationPlugin;",
        "IgnoreTrailingSlashAttributeKey",
        "Lio/ktor/util/AttributeKey;",
        "value",
        "",
        "ignoreTrailingSlash",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;)Z",
        "setIgnoreTrailingSlash",
        "(Lio/ktor/server/application/ApplicationCall;Z)V",
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


# static fields
.field private static final IgnoreTrailingSlash:Lio/ktor/server/application/ApplicationPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/ApplicationPlugin<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final IgnoreTrailingSlashAttributeKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "IgnoreTrailingSlashAttributeKey"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->IgnoreTrailingSlashAttributeKey:Lio/ktor/util/AttributeKey;

    .line 24
    sget-object v0, Lio/ktor/server/routing/IgnoreTrailingSlashKt$IgnoreTrailingSlash$1;->INSTANCE:Lio/ktor/server/routing/IgnoreTrailingSlashKt$IgnoreTrailingSlash$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "IgnoreTrailingSlash"

    invoke-static {v1, v0}, Lio/ktor/server/application/CreatePluginUtilsKt;->createApplicationPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/ApplicationPlugin;

    move-result-object v0

    sput-object v0, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->IgnoreTrailingSlash:Lio/ktor/server/application/ApplicationPlugin;

    return-void
.end method

.method public static final synthetic access$setIgnoreTrailingSlash(Lio/ktor/server/application/ApplicationCall;Z)V
    .locals 0
    .param p0, "$receiver"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "value"    # Z

    .line 1
    invoke-static {p0, p1}, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->setIgnoreTrailingSlash(Lio/ktor/server/application/ApplicationCall;Z)V

    return-void
.end method

.method public static final getIgnoreTrailingSlash()Lio/ktor/server/application/ApplicationPlugin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/server/application/ApplicationPlugin<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->IgnoreTrailingSlash:Lio/ktor/server/application/ApplicationPlugin;

    return-object v0
.end method

.method public static final getIgnoreTrailingSlash(Lio/ktor/server/application/ApplicationCall;)Z
    .locals 2
    .param p0, "$this$ignoreTrailingSlash"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->IgnoreTrailingSlashAttributeKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->contains(Lio/ktor/util/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method private static final setIgnoreTrailingSlash(Lio/ktor/server/application/ApplicationCall;Z)V
    .locals 3
    .param p0, "$this$ignoreTrailingSlash"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "value"    # Z

    .line 14
    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->IgnoreTrailingSlashAttributeKey:Lio/ktor/util/AttributeKey;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1, v2}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->IgnoreTrailingSlashAttributeKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->remove(Lio/ktor/util/AttributeKey;)V

    .line 18
    :goto_0
    return-void
.end method
