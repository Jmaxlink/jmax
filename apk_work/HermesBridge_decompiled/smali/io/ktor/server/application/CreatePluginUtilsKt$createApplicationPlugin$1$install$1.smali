.class final Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1$install$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreatePluginUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1;->install(Lio/ktor/server/application/Application;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/PluginInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TPluginConfigT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "PluginConfigT",
        "",
        "invoke",
        "()Ljava/lang/Object;"
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
.field final synthetic $config:Lio/ktor/server/config/ApplicationConfig;

.field final synthetic $createConfiguration:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/config/ApplicationConfig;",
            "TPluginConfigT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lio/ktor/server/config/ApplicationConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/config/ApplicationConfig;",
            "+TPluginConfigT;>;",
            "Lio/ktor/server/config/ApplicationConfig;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1$install$1;->$createConfiguration:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1$install$1;->$config:Lio/ktor/server/config/ApplicationConfig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPluginConfigT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1$install$1;->$createConfiguration:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lio/ktor/server/application/CreatePluginUtilsKt$createApplicationPlugin$1$install$1;->$config:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
