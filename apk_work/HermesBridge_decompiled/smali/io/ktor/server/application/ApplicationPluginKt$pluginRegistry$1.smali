.class final Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApplicationPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/util/Attributes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/util/Attributes;",
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
.field public static final INSTANCE:Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;

    invoke-direct {v0}, Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;-><init>()V

    sput-object v0, Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;->INSTANCE:Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/util/Attributes;
    .locals 1

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Lio/ktor/util/AttributesJvmKt;->Attributes(Z)Lio/ktor/util/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;->invoke()Lio/ktor/util/Attributes;

    move-result-object v0

    return-object v0
.end method
