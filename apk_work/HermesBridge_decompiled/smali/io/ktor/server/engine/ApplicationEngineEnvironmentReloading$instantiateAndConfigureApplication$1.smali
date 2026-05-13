.class final Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApplicationEngineEnvironmentReloading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->instantiateAndConfigureApplication(Ljava/lang/ClassLoader;)Lio/ktor/server/application/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationEngineEnvironmentReloading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationEngineEnvironmentReloading.kt\nio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,388:1\n1855#2,2:389\n1855#2,2:391\n*S KotlinDebug\n*F\n+ 1 ApplicationEngineEnvironmentReloading.kt\nio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1\n*L\n311#1:389,2\n315#1:391,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $currentClassLoader:Ljava/lang/ClassLoader;

.field final synthetic $newInstance:Lio/ktor/server/application/Application;

.field final synthetic this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    iput-object p2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->$currentClassLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->$newInstance:Lio/ktor/server/application/Application;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 11

    .line 311
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    invoke-virtual {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getModulesNames$ktor_server_host_common()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    iget-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->$currentClassLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->$newInstance:Lio/ktor/server/application/Application;

    const/4 v4, 0x0

    .line 389
    .local v4, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 312
    .local v8, "$i$a$-forEach-ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1$1":I
    invoke-static {v1, v7, v2, v3}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->access$launchModuleByName(Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;Ljava/lang/String;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V

    .line 313
    nop

    .line 389
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 390
    :cond_0
    nop

    .line 315
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    invoke-virtual {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getModules$ktor_server_host_common()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    iget-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->$currentClassLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;->$newInstance:Lio/ktor/server/application/Application;

    const/4 v4, 0x0

    .line 391
    .restart local v4    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "module":Lkotlin/jvm/functions/Function1;
    const/4 v8, 0x0

    .line 316
    .local v8, "$i$a$-forEach-ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1$2":I
    move-object v9, v7

    check-cast v9, Lkotlin/Function;

    invoke-static {v9}, Lio/ktor/server/engine/ServerHostUtilsKt;->methodName(Lkotlin/Function;)Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "name":Ljava/lang/String;
    nop

    .line 319
    :try_start_0
    invoke-static {v1, v9, v2, v3}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->access$launchModuleByName(Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;Ljava/lang/String;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V
    :try_end_0
    .catch Lio/ktor/server/engine/internal/ReloadingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 320
    :catch_0
    move-exception v10

    .line 321
    .local v10, "_":Lio/ktor/server/engine/internal/ReloadingException;
    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v10    # "_":Lio/ktor/server/engine/internal/ReloadingException;
    :goto_2
    nop

    .line 391
    .end local v7    # "module":Lkotlin/jvm/functions/Function1;
    .end local v8    # "$i$a$-forEach-ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1$2":I
    .end local v9    # "name":Ljava/lang/String;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 392
    :cond_1
    nop

    .line 324
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    return-void
.end method
