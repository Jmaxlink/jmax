.class public final Lio/ktor/server/application/ApplicationPluginKt;
.super Ljava/lang/Object;
.source "ApplicationPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationPlugin.kt\nio/ktor/server/application/ApplicationPluginKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1855#2:263\n1855#2,2:264\n1856#2:266\n1855#2,2:267\n*S KotlinDebug\n*F\n+ 1 ApplicationPlugin.kt\nio/ktor/server/application/ApplicationPluginKt\n*L\n163#1:263\n165#1:264,2\n163#1:266\n199#1:267,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u001ak\u0010\u000b\u001a\u00020\u000c\"\u0008\u0008\u0000\u0010\r*\u00020\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u000e\"\u0004\u0008\u0002\u0010\u0010\"\u0004\u0008\u0003\u0010\u0011\"\u0014\u0008\u0004\u0010\u0012*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u0007*\u0002H\u00122\u0006\u0010\u0013\u001a\u0002H\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000f0\u00152\u0006\u0010\u0016\u001a\u0002H\u000fH\u0002\u00a2\u0006\u0002\u0010\u0017\u001ad\u0010\u0018\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u0012*\u00020\u0019\"\u0008\u0008\u0001\u0010\r*\u00020\u000e\"\u0008\u0008\u0002\u0010\u000f*\u00020\u000e*\u0002H\u00122\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000f0\u001a2\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u000c0\u001c\u00a2\u0006\u0002\u0008\u001dH\u0007\u00a2\u0006\u0002\u0010\u001e\u001al\u0010\u0018\u001a\u0002H\u000f\"\u0012\u0008\u0000\u0010\u0012*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00080\u0007\"\u0008\u0008\u0001\u0010\r*\u00020\u000e\"\u0008\u0008\u0002\u0010\u000f*\u00020\u000e*\u0002H\u00122\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000f0\u001f2\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u000c0\u001c\u00a2\u0006\u0002\u0008\u001d\u00a2\u0006\u0002\u0010 \u001aT\u0010!\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\r*\u00020\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u000e*\u00020\u00192\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000f0\u00152\u0019\u0008\u0002\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u000c0\u001c\u00a2\u0006\u0002\u0008\u001dH\u0002\u00a2\u0006\u0002\u0010\"\u001aC\u0010\u0014\u001a\u0002H\u000f\"\u0012\u0008\u0000\u0010\u0006*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00080\u0007\"\u0008\u0008\u0001\u0010\u000f*\u00020\u000e*\u0002H\u00062\u0014\u0010\u0014\u001a\u0010\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u0002H\u000f0\u001f\u00a2\u0006\u0002\u0010#\u001aE\u0010$\u001a\u0004\u0018\u0001H\u000f\"\u0012\u0008\u0000\u0010\u0006*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00080\u0007\"\u0008\u0008\u0001\u0010\u000f*\u00020\u000e*\u0002H\u00062\u0014\u0010\u0014\u001a\u0010\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u0002H\u000f0\u001f\u00a2\u0006\u0002\u0010#\u001aS\u0010%\u001a\u00020\u000c\"\u0012\u0008\u0000\u0010\u0006*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00080\u0007\"\u0008\u0008\u0001\u0010\r*\u00020\u000e\"\u0008\u0008\u0002\u0010\u000f*\u00020\u000e*\u0002H\u00062\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000f0\u001fH\u0007\u00a2\u0006\u0002\u0010&\u001a%\u0010\'\u001a\u00020\u000c\"\u0012\u0008\u0000\u0010\u0006*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00080\u0007*\u0002H\u0006H\u0007\u00a2\u0006\u0002\u0010(\u001a=\u0010)\u001a\u00020\u000c\"\u0012\u0008\u0000\u0010\u0006*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00080\u0007\"\u0008\u0008\u0001\u0010\u000f*\u00020\u000e*\u0002H\u00062\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0001H\u0007\u00a2\u0006\u0002\u0010+\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\")\u0010\u0005\u001a\u00020\u0002\"\u0012\u0008\u0000\u0010\u0006*\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00080\u0007*\u0002H\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006,"
    }
    d2 = {
        "pluginRegistryKey",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/util/Attributes;",
        "getPluginRegistryKey",
        "()Lio/ktor/util/AttributeKey;",
        "pluginRegistry",
        "A",
        "Lio/ktor/util/pipeline/Pipeline;",
        "Lio/ktor/server/application/ApplicationCall;",
        "getPluginRegistry",
        "(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;",
        "addAllInterceptors",
        "",
        "B",
        "",
        "F",
        "TSubject",
        "TContext",
        "P",
        "fakePipeline",
        "plugin",
        "Lio/ktor/server/application/BaseRouteScopedPlugin;",
        "pluginInstance",
        "(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;)V",
        "install",
        "Lio/ktor/server/routing/Route;",
        "Lio/ktor/server/application/BaseApplicationPlugin;",
        "configure",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseApplicationPlugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Lio/ktor/server/application/Plugin;",
        "(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "installIntoRoute",
        "(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseRouteScopedPlugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;",
        "pluginOrNull",
        "uninstall",
        "(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)V",
        "uninstallAllPlugins",
        "(Lio/ktor/util/pipeline/Pipeline;)V",
        "uninstallPlugin",
        "key",
        "(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/AttributeKey;)V",
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
.field private static final pluginRegistryKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/util/Attributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "ApplicationPluginRegistry"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/ApplicationPluginKt;->pluginRegistryKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private static final addAllInterceptors(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;)V
    .locals 17
    .param p0, "$this$addAllInterceptors"    # Lio/ktor/util/pipeline/Pipeline;
    .param p1, "fakePipeline"    # Lio/ktor/util/pipeline/Pipeline;
    .param p2, "plugin"    # Lio/ktor/server/application/BaseRouteScopedPlugin;
    .param p3, "pluginInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "TSubject:",
            "Ljava/lang/Object;",
            "TContext:",
            "Ljava/lang/Object;",
            "P:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "TTSubject;TTContext;>;>(TP;TP;",
            "Lio/ktor/server/application/BaseRouteScopedPlugin<",
            "TB;TF;>;TF;)V"
        }
    .end annotation

    .line 163
    invoke-virtual/range {p0 .. p0}, Lio/ktor/util/pipeline/Pipeline;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 263
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/util/pipeline/PipelinePhase;

    .local v4, "phase":Lio/ktor/util/pipeline/PipelinePhase;
    const/4 v5, 0x0

    .line 164
    .local v5, "$i$a$-forEach-ApplicationPluginKt$addAllInterceptors$1":I
    move-object/from16 v6, p1

    invoke-virtual {v6, v4}, Lio/ktor/util/pipeline/Pipeline;->interceptorsForPhase(Lio/ktor/util/pipeline/PipelinePhase;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 165
    nop

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 264
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/jvm/functions/Function3;

    .local v11, "interceptor":Lkotlin/jvm/functions/Function3;
    const/4 v12, 0x0

    .line 166
    .local v12, "$i$a$-forEach-ApplicationPluginKt$addAllInterceptors$1$1":I
    new-instance v13, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;

    const/4 v14, 0x0

    move-object/from16 v15, p2

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v16, "$this$forEach$iv":Ljava/lang/Iterable;
    invoke-direct {v13, v15, v0, v11, v14}, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;-><init>(Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function3;

    move-object/from16 v14, p0

    invoke-virtual {v14, v4, v13}, Lio/ktor/util/pipeline/Pipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 172
    nop

    .line 264
    .end local v11    # "interceptor":Lkotlin/jvm/functions/Function3;
    .end local v12    # "$i$a$-forEach-ApplicationPluginKt$addAllInterceptors$1$1":I
    move-object/from16 v0, v16

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 265
    .end local v16    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_0
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    .line 173
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    .restart local v16    # "$this$forEach$iv":Ljava/lang/Iterable;
    nop

    .line 263
    .end local v4    # "phase":Lio/ktor/util/pipeline/PipelinePhase;
    .end local v5    # "$i$a$-forEach-ApplicationPluginKt$addAllInterceptors$1":I
    move-object/from16 v0, v16

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 266
    .end local v16    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_1
    nop

    .line 174
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static final getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;
    .locals 3
    .param p0, "$this$pluginRegistry"    # Lio/ktor/util/pipeline/Pipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;>(TA;)",
            "Lio/ktor/util/Attributes;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/application/ApplicationPluginKt;->pluginRegistryKey:Lio/ktor/util/AttributeKey;

    sget-object v2, Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;->INSTANCE:Lio/ktor/server/application/ApplicationPluginKt$pluginRegistry$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, v2}, Lio/ktor/util/Attributes;->computeIfAbsent(Lio/ktor/util/AttributeKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/util/Attributes;

    return-object v0
.end method

.method public static final getPluginRegistryKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/util/Attributes;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lio/ktor/server/application/ApplicationPluginKt;->pluginRegistryKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final install(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseApplicationPlugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$install"    # Lio/ktor/server/routing/Route;
    .param p1, "plugin"    # Lio/ktor/server/application/BaseApplicationPlugin;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lio/ktor/server/routing/Route;",
            "B:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(TP;",
            "Lio/ktor/server/application/BaseApplicationPlugin<",
            "-TP;+TB;TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TB;",
            "Lkotlin/Unit;",
            ">;)TF;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Installing ApplicationPlugin into routing may lead to unexpected behaviour. Consider moving installation to the application level or migrate this plugin to `RouteScopedPlugin` to support installing into route."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    move-object v0, p0

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    move-object v1, p1

    check-cast v1, Lio/ktor/server/application/Plugin;

    invoke-static {v0, v1, p2}, Lio/ktor/server/application/ApplicationPluginKt;->install(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final install(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$install"    # Lio/ktor/util/pipeline/Pipeline;
    .param p1, "plugin"    # Lio/ktor/server/application/Plugin;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;B:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(TP;",
            "Lio/ktor/server/application/Plugin<",
            "-TP;+TB;TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TB;",
            "Lkotlin/Unit;",
            ">;)TF;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    instance-of v0, p0, Lio/ktor/server/routing/Route;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/ktor/server/application/BaseRouteScopedPlugin;

    if-eqz v0, :cond_0

    .line 93
    move-object v0, p0

    check-cast v0, Lio/ktor/server/routing/Route;

    move-object v1, p1

    check-cast v1, Lio/ktor/server/application/BaseRouteScopedPlugin;

    invoke-static {v0, v1, p2}, Lio/ktor/server/application/ApplicationPluginKt;->installIntoRoute(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseRouteScopedPlugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    invoke-static {p0}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v0

    .line 97
    .local v0, "registry":Lio/ktor/util/Attributes;
    invoke-interface {p1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "installedPlugin":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 99
    nop

    .line 100
    :try_start_0
    invoke-interface {p1, p0, p2}, Lio/ktor/server/application/Plugin;->install(Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    .local v2, "installed":Ljava/lang/Object;
    invoke-interface {p1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    nop

    .line 106
    .end local v2    # "installed":Ljava/lang/Object;
    move-object v1, v2

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v2

    .line 106
    .local v2, "t":Ljava/lang/Throwable;
    throw v2

    .line 109
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    nop

    .line 97
    .end local v1    # "installedPlugin":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 114
    .restart local v1    # "installedPlugin":Ljava/lang/Object;
    :cond_2
    new-instance v2, Lio/ktor/server/application/DuplicatePluginException;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please make sure that you use unique name for the plugin and don\'t install it twice. Conflicting application plugin is already installed with the same key as `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    invoke-interface {p1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/util/AttributeKey;->getName()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x60

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {v2, v3}, Lio/ktor/server/application/DuplicatePluginException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic install$default(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseApplicationPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 186
    sget-object p2, Lio/ktor/server/application/ApplicationPluginKt$install$2;->INSTANCE:Lio/ktor/server/application/ApplicationPluginKt$install$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 184
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/application/ApplicationPluginKt;->install(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseApplicationPlugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic install$default(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 90
    sget-object p2, Lio/ktor/server/application/ApplicationPluginKt$install$1;->INSTANCE:Lio/ktor/server/application/ApplicationPluginKt$install$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 88
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/application/ApplicationPluginKt;->install(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final installIntoRoute(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseRouteScopedPlugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$installIntoRoute"    # Lio/ktor/server/routing/Route;
    .param p1, "plugin"    # Lio/ktor/server/application/BaseRouteScopedPlugin;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lio/ktor/server/application/BaseRouteScopedPlugin<",
            "TB;TF;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TB;",
            "Lkotlin/Unit;",
            ">;)TF;"
        }
    .end annotation

    .line 126
    move-object v0, p0

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v0}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v0

    invoke-interface {p1}, Lio/ktor/server/application/BaseRouteScopedPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 132
    invoke-static {p0}, Lio/ktor/server/routing/RoutingKt;->getApplication(Lio/ktor/server/routing/Route;)Lio/ktor/server/application/Application;

    move-result-object v0

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v0}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v0

    invoke-interface {p1}, Lio/ktor/server/application/BaseRouteScopedPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    nop

    .line 141
    instance-of v0, p0, Lio/ktor/server/routing/Routing;

    if-eqz v0, :cond_0

    new-instance v0, Lio/ktor/server/routing/Routing;

    move-object v1, p0

    check-cast v1, Lio/ktor/server/routing/Routing;

    invoke-virtual {v1}, Lio/ktor/server/routing/Routing;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/server/routing/Routing;-><init>(Lio/ktor/server/application/Application;)V

    check-cast v0, Lio/ktor/server/routing/Route;

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Lio/ktor/server/routing/Route;

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getParent()Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getSelector()Lio/ktor/server/routing/RouteSelector;

    move-result-object v2

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getDevelopmentMode()Z

    move-result v3

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/ktor/server/routing/Route;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 140
    :goto_0
    nop

    .line 144
    .local v0, "fakePipeline":Lio/ktor/server/routing/Route;
    move-object v1, v0

    check-cast v1, Lio/ktor/util/pipeline/Pipeline;

    invoke-interface {p1, v1, p2}, Lio/ktor/server/application/BaseRouteScopedPlugin;->install(Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "installed":Ljava/lang/Object;
    move-object v2, p0

    check-cast v2, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v2}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v2

    invoke-interface {p1}, Lio/ktor/server/application/BaseRouteScopedPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 147
    move-object v2, v0

    check-cast v2, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {p0, v2}, Lio/ktor/server/routing/Route;->mergePhases(Lio/ktor/util/pipeline/Pipeline;)V

    .line 148
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v2

    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v3

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v2, v3}, Lio/ktor/server/request/ApplicationReceivePipeline;->mergePhases(Lio/ktor/util/pipeline/Pipeline;)V

    .line 149
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v2

    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v2, v3}, Lio/ktor/server/response/ApplicationSendPipeline;->mergePhases(Lio/ktor/util/pipeline/Pipeline;)V

    .line 151
    move-object v2, p0

    check-cast v2, Lio/ktor/util/pipeline/Pipeline;

    move-object v3, v0

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v2, v3, p1, v1}, Lio/ktor/server/application/ApplicationPluginKt;->addAllInterceptors(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v2

    check-cast v2, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v3

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v2, v3, p1, v1}, Lio/ktor/server/application/ApplicationPluginKt;->addAllInterceptors(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v2

    check-cast v2, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v2, v3, p1, v1}, Lio/ktor/server/application/ApplicationPluginKt;->addAllInterceptors(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;)V

    .line 155
    return-object v1

    .line 133
    .end local v0    # "fakePipeline":Lio/ktor/server/routing/Route;
    .end local v1    # "installed":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lio/ktor/server/application/DuplicatePluginException;

    .line 134
    nop

    .line 133
    const-string v1, "Installing RouteScopedPlugin to application and route is not supported. Consider moving application level install to routing root."

    invoke-direct {v0, v1}, Lio/ktor/server/application/DuplicatePluginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    new-instance v0, Lio/ktor/server/application/DuplicatePluginException;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please make sure that you use unique name for the plugin and don\'t install it twice. Plugin `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-interface {p1}, Lio/ktor/server/application/BaseRouteScopedPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/util/AttributeKey;->getName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    nop

    .line 128
    const-string v2, "` is already installed to the pipeline "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    nop

    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Lio/ktor/server/application/DuplicatePluginException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic installIntoRoute$default(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseRouteScopedPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 124
    sget-object p2, Lio/ktor/server/application/ApplicationPluginKt$installIntoRoute$1;->INSTANCE:Lio/ktor/server/application/ApplicationPluginKt$installIntoRoute$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 122
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/application/ApplicationPluginKt;->installIntoRoute(Lio/ktor/server/routing/Route;Lio/ktor/server/application/BaseRouteScopedPlugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final plugin(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$plugin"    # Lio/ktor/util/pipeline/Pipeline;
    .param p1, "plugin"    # Lio/ktor/server/application/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;F:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lio/ktor/server/application/Plugin<",
            "**TF;>;)TF;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    nop

    .line 73
    instance-of v0, p0, Lio/ktor/server/routing/Route;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/ktor/server/routing/Route;

    invoke-static {v0, p1}, Lio/ktor/server/application/RouteScopedPluginKt;->findPluginInRoute(Lio/ktor/server/routing/Route;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/server/application/ApplicationPluginKt;->pluginOrNull(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lio/ktor/server/application/MissingApplicationPluginException;

    invoke-interface {p1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/server/application/MissingApplicationPluginException;-><init>(Lio/ktor/util/AttributeKey;)V

    throw v0
.end method

.method public static final pluginOrNull(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$pluginOrNull"    # Lio/ktor/util/pipeline/Pipeline;
    .param p1, "plugin"    # Lio/ktor/server/application/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;F:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lio/ktor/server/application/Plugin<",
            "**TF;>;)TF;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v0

    invoke-interface {p1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final uninstall(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)V
    .locals 1
    .param p0, "$this$uninstall"    # Lio/ktor/util/pipeline/Pipeline;
    .param p1, "plugin"    # Lio/ktor/server/application/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;B:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lio/ktor/server/application/Plugin<",
            "-TA;+TB;TF;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method is misleading and will be removed. If you have use case that requires this functionaity, please add it in KTOR-2696"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-interface {p1}, Lio/ktor/server/application/Plugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v0

    invoke-static {p0, v0}, Lio/ktor/server/application/ApplicationPluginKt;->uninstallPlugin(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/AttributeKey;)V

    return-void
.end method

.method public static final uninstallAllPlugins(Lio/ktor/util/pipeline/Pipeline;)V
    .locals 7
    .param p0, "$this$uninstallAllPlugins"    # Lio/ktor/util/pipeline/Pipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;>(TA;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method is misleading and will be removed. If you have use case that requires this functionaity, please add it in KTOR-2696"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-static {p0}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/util/Attributes;->getAllKeys()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 267
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/util/AttributeKey;

    .local v4, "it":Lio/ktor/util/AttributeKey;
    const/4 v5, 0x0

    .line 201
    .local v5, "$i$a$-forEach-ApplicationPluginKt$uninstallAllPlugins$1":I
    const-string v6, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lio/ktor/server/application/ApplicationPluginKt;->uninstallPlugin(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/AttributeKey;)V

    .line 202
    nop

    .line 267
    .end local v4    # "it":Lio/ktor/util/AttributeKey;
    .end local v5    # "$i$a$-forEach-ApplicationPluginKt$uninstallAllPlugins$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 268
    :cond_0
    nop

    .line 203
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static final uninstallPlugin(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/AttributeKey;)V
    .locals 3
    .param p0, "$this$uninstallPlugin"    # Lio/ktor/util/pipeline/Pipeline;
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "*",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;F:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lio/ktor/util/AttributeKey<",
            "TF;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method is misleading and will be removed. If you have use case that requires this functionaity, please add it in KTOR-2696"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lio/ktor/util/pipeline/Pipeline;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/application/ApplicationPluginKt;->pluginRegistryKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/util/Attributes;

    if-nez v0, :cond_0

    return-void

    .line 226
    .local v0, "registry":Lio/ktor/util/Attributes;
    :cond_0
    invoke-interface {v0, p1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 227
    .local v1, "instance":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/io/Closeable;

    if-eqz v2, :cond_2

    .line 228
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 230
    :cond_2
    invoke-interface {v0, p1}, Lio/ktor/util/Attributes;->remove(Lio/ktor/util/AttributeKey;)V

    .line 231
    return-void
.end method
