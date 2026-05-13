.class public final Lio/ktor/server/http/content/StaticContentKt;
.super Ljava/lang/Object;
.source "StaticContent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStaticContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticContent.kt\nio/ktor/server/http/content/StaticContentKt\n+ 2 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,542:1\n26#2,2:543\n29#2,2:548\n17#3,3:545\n*S KotlinDebug\n*F\n+ 1 StaticContent.kt\nio/ktor/server/http/content/StaticContentKt\n*L\n458#1:543,2\n458#1:548,2\n458#1:545,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0016\u0010\u0017\u001a\u00020\u0008*\u0004\u0018\u00010\u00082\u0006\u0010\u0018\u001a\u00020\u0008H\u0002\u001a\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u0004*\u0004\u0018\u00010\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0002\u001a\u0014\u0010\u001b\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0008H\u0007\u001a\u0014\u0010\u001b\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0004H\u0007\u001a \u0010\u001d\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007\u001a\u001c\u0010\u0018\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0008H\u0007\u001a\u001e\u0010\u0018\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004H\u0007\u001a\u0014\u0010 \u001a\u00020\u0002*\u00020\u000b2\u0006\u0010!\u001a\u00020\u0008H\u0007\u001a\u0014\u0010 \u001a\u00020\u0002*\u00020\u000b2\u0006\u0010!\u001a\u00020\u0004H\u0007\u001a\n\u0010\"\u001a\u00020#*\u00020$\u001a>\u0010%\u001a\u00020\u0002*\u00020\u000b2\u0014\u0008\u0002\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020(0\'\"\u00020(2\u0017\u0010)\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020*\u00a2\u0006\u0002\u0008+\u00a2\u0006\u0002\u0010,\u001a*\u0010\u001e\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007\u001a\u0018\u0010-\u001a\u00020\u0002*\u00020\u000b2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007\u001a\u00bb\u0001\u0010.\u001a\u00020\u0002*\u00020$2\u0008\u0010/\u001a\u0004\u0018\u00010\u00042\u0006\u00100\u001a\u00020\u00082\u000e\u00101\u001a\n\u0012\u0004\u0012\u00020(\u0018\u0001022\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u0002040*2\u0018\u00105\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u000206020*2(\u00107\u001a$\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000209\u0012\u0006\u0012\u0004\u0018\u00010:082\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020#0*2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u0004022\u0008\u0010=\u001a\u0004\u0018\u00010\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010>\u001a\u00bd\u0001\u0010?\u001a\u00020\u0002*\u00020$2\u0008\u0010/\u001a\u0004\u0018\u00010\u00042\u0008\u0010@\u001a\u0004\u0018\u00010\u00042\u000e\u00101\u001a\n\u0012\u0004\u0012\u00020(\u0018\u0001022\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u0002040*2\u0018\u00105\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u000206020*2(\u0010B\u001a$\u0008\u0001\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000209\u0012\u0006\u0012\u0004\u0018\u00010:082\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020#0*2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u0004022\u0008\u0010=\u001a\u0004\u0018\u00010\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010C\u001a%\u0010D\u001a\u00020\u000b*\u00020\u000b2\u0017\u0010)\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020*\u00a2\u0006\u0002\u0008+H\u0007\u001a-\u0010D\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00042\u0017\u0010)\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020*\u00a2\u0006\u0002\u0008+H\u0007\u001aM\u0010E\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010F\u001a\u00020#2\'\u0010G\u001a#\u0008\u0001\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000209\u0012\u0006\u0012\u0004\u0018\u00010:0H\u00a2\u0006\u0002\u0008+H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010I\u001aG\u0010J\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00082\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u00042\u001f\u0008\u0002\u0010K\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080L\u0012\u0004\u0012\u00020\u00020*\u00a2\u0006\u0002\u0008+\u001aI\u0010M\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0010@\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u00042\u001f\u0008\u0002\u0010K\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0L\u0012\u0004\u0012\u00020\u00020*\u00a2\u0006\u0002\u0008+\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"2\u0010\n\u001a\u0004\u0018\u00010\u0004*\u00020\u000b2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00048F@FX\u0087\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\",\u0010\u0012\u001a\u0004\u0018\u00010\u0008*\u00020\u000b2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006N"
    }
    d2 = {
        "StaticContentAutoHead",
        "Lio/ktor/server/application/RouteScopedPlugin;",
        "",
        "pathParameterName",
        "",
        "staticBasePackageName",
        "Lio/ktor/util/AttributeKey;",
        "staticRootFolderKey",
        "Ljava/io/File;",
        "value",
        "staticBasePackage",
        "Lio/ktor/server/routing/Route;",
        "getStaticBasePackage$annotations",
        "(Lio/ktor/server/routing/Route;)V",
        "getStaticBasePackage",
        "(Lio/ktor/server/routing/Route;)Ljava/lang/String;",
        "setStaticBasePackage",
        "(Lio/ktor/server/routing/Route;Ljava/lang/String;)V",
        "staticRootFolder",
        "getStaticRootFolder",
        "(Lio/ktor/server/routing/Route;)Ljava/io/File;",
        "setStaticRootFolder",
        "(Lio/ktor/server/routing/Route;Ljava/io/File;)V",
        "combine",
        "file",
        "combinePackage",
        "resourcePackage",
        "default",
        "localPath",
        "defaultResource",
        "resource",
        "remotePath",
        "files",
        "folder",
        "isStaticContent",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "preCompressed",
        "types",
        "",
        "Lio/ktor/server/http/content/CompressedFileType;",
        "configure",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/routing/Route;[Lio/ktor/server/http/content/CompressedFileType;Lkotlin/jvm/functions/Function1;)V",
        "resources",
        "respondStaticFile",
        "index",
        "dir",
        "compressedTypes",
        "",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "cacheControl",
        "Lio/ktor/http/CacheControl;",
        "modify",
        "Lkotlin/Function3;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "exclude",
        "extensions",
        "defaultPath",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondStaticResource",
        "basePackage",
        "Ljava/net/URL;",
        "modifier",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "static",
        "staticContentRoute",
        "autoHead",
        "handler",
        "Lkotlin/Function2;",
        "(Lio/ktor/server/routing/Route;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lio/ktor/server/routing/Route;",
        "staticFiles",
        "block",
        "Lio/ktor/server/http/content/StaticContentConfig;",
        "staticResources",
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
.field private static final StaticContentAutoHead:Lio/ktor/server/application/RouteScopedPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/RouteScopedPlugin<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final pathParameterName:Ljava/lang/String; = "static-content-path-parameter"

.field private static final staticBasePackageName:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticRootFolderKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "BaseFolder"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/http/content/StaticContentKt;->staticRootFolderKey:Lio/ktor/util/AttributeKey;

    .line 23
    sget-object v0, Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentKt$StaticContentAutoHead$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "StaticContentAutoHead"

    invoke-static {v1, v0}, Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;

    move-result-object v0

    sput-object v0, Lio/ktor/server/http/content/StaticContentKt;->StaticContentAutoHead:Lio/ktor/server/application/RouteScopedPlugin;

    .line 342
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "BasePackage"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/http/content/StaticContentKt;->staticBasePackageName:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public static final synthetic access$getStaticContentAutoHead$p()Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/server/http/content/StaticContentKt;->StaticContentAutoHead:Lio/ktor/server/application/RouteScopedPlugin;

    return-object v0
.end method

.method public static final synthetic access$respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "compressedTypes"    # Ljava/util/List;
    .param p4, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p5, "cacheControl"    # Lkotlin/jvm/functions/Function1;
    .param p6, "modify"    # Lkotlin/jvm/functions/Function3;
    .param p7, "exclude"    # Lkotlin/jvm/functions/Function1;
    .param p8, "extensions"    # Ljava/util/List;
    .param p9, "defaultPath"    # Ljava/lang/String;
    .param p10, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p10}, Lio/ktor/server/http/content/StaticContentKt;->respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$respondStaticFile$checkExclude(Lkotlin/jvm/functions/Function1;Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$exclude"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$this_respondStaticFile"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/http/content/StaticContentKt;->respondStaticFile$checkExclude(Lkotlin/jvm/functions/Function1;Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$respondStaticResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "basePackage"    # Ljava/lang/String;
    .param p3, "compressedTypes"    # Ljava/util/List;
    .param p4, "contentType"    # Lkotlin/jvm/functions/Function1;
    .param p5, "cacheControl"    # Lkotlin/jvm/functions/Function1;
    .param p6, "modifier"    # Lkotlin/jvm/functions/Function3;
    .param p7, "exclude"    # Lkotlin/jvm/functions/Function1;
    .param p8, "extensions"    # Ljava/util/List;
    .param p9, "defaultPath"    # Ljava/lang/String;
    .param p10, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p10}, Lio/ktor/server/http/content/StaticContentKt;->respondStaticResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final combine(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "$this$combine"    # Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .line 266
    nop

    .line 267
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {p0, p1}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0
.end method

.method private static final combinePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$combinePackage"    # Ljava/lang/String;
    .param p1, "resourcePackage"    # Ljava/lang/String;

    .line 359
    nop

    .line 360
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 361
    :cond_0
    if-nez p1, :cond_1

    move-object v0, p0

    goto :goto_0

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0
.end method

.method public static final default(Lio/ktor/server/routing/Route;Ljava/io/File;)V
    .locals 4
    .param p0, "$this$default"    # Lio/ktor/server/routing/Route;
    .param p1, "localPath"    # Ljava/io/File;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticRootFolder(Lio/ktor/server/routing/Route;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lio/ktor/server/http/content/StaticContentKt;->combine(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 296
    .local v0, "file":Ljava/io/File;
    invoke-static {p0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "compressedTypes":Ljava/util/List;
    new-instance v2, Lio/ktor/server/http/content/StaticContentKt$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lio/ktor/server/http/content/StaticContentKt$default$1;-><init>(Ljava/io/File;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v2}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 300
    return-void
.end method

.method public static final default(Lio/ktor/server/routing/Route;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$default"    # Lio/ktor/server/routing/Route;
    .param p1, "localPath"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/ktor/server/http/content/StaticContentKt;->default(Lio/ktor/server/routing/Route;Ljava/io/File;)V

    return-void
.end method

.method public static final defaultResource(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "$this$defaultResource"    # Lio/ktor/server/routing/Route;
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "resourcePackage"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticResources` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-static {p0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticBasePackage(Lio/ktor/server/routing/Route;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/ktor/server/http/content/StaticContentKt;->combinePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v1

    .line 408
    .local v1, "compressedTypes":Ljava/util/List;
    new-instance v2, Lio/ktor/server/http/content/StaticContentKt$defaultResource$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v1, v3}, Lio/ktor/server/http/content/StaticContentKt$defaultResource$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v2}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 415
    return-void
.end method

.method public static synthetic defaultResource$default(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 405
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/http/content/StaticContentKt;->defaultResource(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final file(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p0, "$this$file"    # Lio/ktor/server/routing/Route;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/io/File;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-static {p0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticRootFolder(Lio/ktor/server/routing/Route;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p2}, Lio/ktor/server/http/content/StaticContentKt;->combine(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 315
    .local v0, "file":Ljava/io/File;
    invoke-static {p0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v1

    .line 316
    .local v1, "compressedTypes":Ljava/util/List;
    new-instance v2, Lio/ktor/server/http/content/StaticContentKt$file$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lio/ktor/server/http/content/StaticContentKt$file$1;-><init>(Ljava/io/File;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v2}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 319
    return-void
.end method

.method public static final file(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$file"    # Lio/ktor/server/routing/Route;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lio/ktor/server/http/content/StaticContentKt;->file(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic file$default(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 307
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/http/content/StaticContentKt;->file(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final files(Lio/ktor/server/routing/Route;Ljava/io/File;)V
    .locals 4
    .param p0, "$this$files"    # Lio/ktor/server/routing/Route;
    .param p1, "folder"    # Ljava/io/File;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-static {p0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticRootFolder(Lio/ktor/server/routing/Route;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lio/ktor/server/http/content/StaticContentKt;->combine(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 334
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v1

    .line 335
    .local v1, "compressedTypes":Ljava/util/List;
    new-instance v2, Lio/ktor/server/http/content/StaticContentKt$files$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lio/ktor/server/http/content/StaticContentKt$files$1;-><init>(Ljava/io/File;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const-string v3, "{static-content-path-parameter...}"

    invoke-static {p0, v3, v2}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 340
    return-void
.end method

.method public static final files(Lio/ktor/server/routing/Route;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$files"    # Lio/ktor/server/routing/Route;
    .param p1, "folder"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/ktor/server/http/content/StaticContentKt;->files(Lio/ktor/server/routing/Route;Ljava/io/File;)V

    return-void
.end method

.method public static final getStaticBasePackage(Lio/ktor/server/routing/Route;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$staticBasePackage"    # Lio/ktor/server/routing/Route;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/http/content/StaticContentKt;->staticBasePackageName:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getParent()Lio/ktor/server/routing/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticBasePackage(Lio/ktor/server/routing/Route;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic getStaticBasePackage$annotations(Lio/ktor/server/routing/Route;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticResources` instead"
    .end annotation

    return-void
.end method

.method public static final getStaticRootFolder(Lio/ktor/server/routing/Route;)Ljava/io/File;
    .locals 2
    .param p0, "$this$staticRootFolder"    # Lio/ktor/server/routing/Route;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/http/content/StaticContentKt;->staticRootFolderKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getParent()Lio/ktor/server/routing/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticRootFolder(Lio/ktor/server/routing/Route;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final isStaticContent(Lio/ktor/server/application/ApplicationCall;)Z
    .locals 2
    .param p0, "$this$isStaticContent"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v0

    const-string v1, "static-content-path-parameter"

    invoke-interface {v0, v1}, Lio/ktor/http/Parameters;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final preCompressed(Lio/ktor/server/routing/Route;[Lio/ktor/server/http/content/CompressedFileType;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$preCompressed"    # Lio/ktor/server/routing/Route;
    .param p1, "types"    # [Lio/ktor/server/http/content/CompressedFileType;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "[",
            "Lio/ktor/server/http/content/CompressedFileType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-static {p0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "existing":Ljava/util/List;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 248
    .local v1, "mixedTypes":Ljava/util/List;
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v2

    invoke-static {}, Lio/ktor/server/http/content/PreCompressedKt;->getCompressedKey()Lio/ktor/util/AttributeKey;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 249
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v2

    invoke-static {}, Lio/ktor/server/http/content/PreCompressedKt;->getCompressedKey()Lio/ktor/util/AttributeKey;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/ktor/util/Attributes;->remove(Lio/ktor/util/AttributeKey;)V

    .line 251
    return-void
.end method

.method public static synthetic preCompressed$default(Lio/ktor/server/routing/Route;[Lio/ktor/server/http/content/CompressedFileType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 242
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 243
    invoke-static {}, Lio/ktor/server/http/content/CompressedFileType;->values()[Lio/ktor/server/http/content/CompressedFileType;

    move-result-object p1

    .line 242
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/server/http/content/StaticContentKt;->preCompressed(Lio/ktor/server/routing/Route;[Lio/ktor/server/http/content/CompressedFileType;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final resource(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "$this$resource"    # Lio/ktor/server/routing/Route;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "resourcePackage"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticResources` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-static {p0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "compressedTypes":Ljava/util/List;
    invoke-static {p0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticBasePackage(Lio/ktor/server/routing/Route;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lio/ktor/server/http/content/StaticContentKt;->combinePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Lio/ktor/server/http/content/StaticContentKt$resource$1;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v1, v0, v3}, Lio/ktor/server/http/content/StaticContentKt$resource$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, v2}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 380
    return-void
.end method

.method public static synthetic resource$default(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 370
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    move-object p2, p1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/http/content/StaticContentKt;->resource(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final resources(Lio/ktor/server/routing/Route;Ljava/lang/String;)V
    .locals 4
    .param p0, "$this$resources"    # Lio/ktor/server/routing/Route;
    .param p1, "resourcePackage"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticResources` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-static {p0}, Lio/ktor/server/http/content/StaticContentKt;->getStaticBasePackage(Lio/ktor/server/routing/Route;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/ktor/server/http/content/StaticContentKt;->combinePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lio/ktor/server/http/content/PreCompressedKt;->getStaticContentEncodedTypes(Lio/ktor/server/routing/Route;)Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, "compressedTypes":Ljava/util/List;
    new-instance v2, Lio/ktor/server/http/content/StaticContentKt$resources$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lio/ktor/server/http/content/StaticContentKt$resources$1;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const-string v3, "{static-content-path-parameter...}"

    invoke-static {p0, v3, v2}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 398
    return-void
.end method

.method public static synthetic resources$default(Lio/ktor/server/routing/Route;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 387
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/server/http/content/StaticContentKt;->resources(Lio/ktor/server/routing/Route;Ljava/lang/String;)V

    return-void
.end method

.method private static final respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lio/ktor/http/ContentType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/io/File;",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p10

    instance-of v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;

    iget v2, v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;

    invoke-direct {v1, v0}, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 442
    iget v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    .local v5, "requestedFile":Ljava/io/File;
    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "defaultPath":Ljava/lang/String;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "exclude":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .local v8, "modify":Lkotlin/jvm/functions/Function3;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .local v9, "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .local v11, "compressedTypes":Ljava/util/List;
    iget-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    .local v12, "dir":Ljava/io/File;
    iget-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/server/application/ApplicationCall;

    .local v13, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v12

    goto/16 :goto_5

    .end local v5    # "requestedFile":Ljava/io/File;
    .end local v6    # "defaultPath":Ljava/lang/String;
    .end local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v8    # "modify":Lkotlin/jvm/functions/Function3;
    .end local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v12    # "dir":Ljava/io/File;
    .end local v13    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :pswitch_2
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$10:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .local v3, "fileWithExtension":Ljava/io/File;
    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    .local v6, "requestedFile":Ljava/io/File;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .local v7, "defaultPath":Ljava/lang/String;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .local v8, "exclude":Lkotlin/jvm/functions/Function1;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function3;

    .local v9, "modify":Lkotlin/jvm/functions/Function3;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .local v11, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .local v12, "compressedTypes":Ljava/util/List;
    iget-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    .local v13, "dir":Ljava/io/File;
    iget-object v14, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/server/application/ApplicationCall;

    .local v14, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    .end local v3    # "fileWithExtension":Ljava/io/File;
    .end local v6    # "requestedFile":Ljava/io/File;
    .end local v7    # "defaultPath":Ljava/lang/String;
    .end local v8    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v9    # "modify":Lkotlin/jvm/functions/Function3;
    .end local v10    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v11    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v12    # "compressedTypes":Ljava/util/List;
    .end local v13    # "dir":Ljava/io/File;
    .end local v14    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :pswitch_3
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .local v3, "requestedFile":Ljava/io/File;
    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "defaultPath":Ljava/lang/String;
    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "extensions":Ljava/util/List;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "exclude":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .local v8, "modify":Lkotlin/jvm/functions/Function3;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .local v9, "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .local v11, "compressedTypes":Ljava/util/List;
    iget-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    .local v12, "dir":Ljava/io/File;
    iget-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/server/application/ApplicationCall;

    .local v13, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v3    # "requestedFile":Ljava/io/File;
    .end local v5    # "defaultPath":Ljava/lang/String;
    .end local v6    # "extensions":Ljava/util/List;
    .end local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v8    # "modify":Lkotlin/jvm/functions/Function3;
    .end local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v12    # "dir":Ljava/io/File;
    .end local v13    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :pswitch_4
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .restart local v3    # "requestedFile":Ljava/io/File;
    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "defaultPath":Ljava/lang/String;
    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .restart local v6    # "extensions":Ljava/util/List;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .restart local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .restart local v8    # "modify":Lkotlin/jvm/functions/Function3;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .restart local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .restart local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .restart local v11    # "compressedTypes":Ljava/util/List;
    iget-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    .restart local v12    # "dir":Ljava/io/File;
    iget-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/server/application/ApplicationCall;

    .restart local v13    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v8

    move-object v8, v1

    goto/16 :goto_2

    .end local v3    # "requestedFile":Ljava/io/File;
    .end local v5    # "defaultPath":Ljava/lang/String;
    .end local v6    # "extensions":Ljava/util/List;
    .end local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v8    # "modify":Lkotlin/jvm/functions/Function3;
    .end local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v12    # "dir":Ljava/io/File;
    .end local v13    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :pswitch_5
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "defaultPath":Ljava/lang/String;
    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function3;

    .local v5, "modify":Lkotlin/jvm/functions/Function3;
    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .local v6, "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "compressedTypes":Ljava/util/List;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/io/File;

    .local v9, "dir":Ljava/io/File;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/server/application/ApplicationCall;

    .local v10, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v3    # "defaultPath":Ljava/lang/String;
    .end local v5    # "modify":Lkotlin/jvm/functions/Function3;
    .end local v6    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v7    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v8    # "compressedTypes":Ljava/util/List;
    .end local v9    # "dir":Ljava/io/File;
    .end local v10    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :pswitch_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p0

    .restart local v10    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    move-object/from16 v9, p2

    .restart local v9    # "dir":Ljava/io/File;
    move-object/from16 v5, p6

    .restart local v5    # "modify":Lkotlin/jvm/functions/Function3;
    move-object/from16 v7, p4

    .restart local v7    # "contentType":Lkotlin/jvm/functions/Function1;
    move-object/from16 v3, p8

    .local v3, "extensions":Ljava/util/List;
    move-object/from16 v6, p9

    .local v6, "defaultPath":Ljava/lang/String;
    move-object/from16 v8, p1

    .local v8, "index":Ljava/lang/String;
    move-object/from16 v11, p3

    .restart local v11    # "compressedTypes":Ljava/util/List;
    move-object/from16 v12, p7

    .local v12, "exclude":Lkotlin/jvm/functions/Function1;
    move-object/from16 v13, p5

    .line 453
    .local v13, "cacheControl":Lkotlin/jvm/functions/Function1;
    invoke-interface {v10}, Lio/ktor/server/application/ApplicationCall;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v14

    const-string v15, "static-content-path-parameter"

    invoke-interface {v14, v15}, Lio/ktor/http/Parameters;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_11

    check-cast v14, Ljava/lang/Iterable;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "separator"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v15

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 p0, v14

    move-object/from16 p1, v4

    move-object/from16 p2, v17

    move-object/from16 p3, v18

    move/from16 p4, v19

    move-object/from16 p5, v20

    move-object/from16 p6, v21

    move/from16 p7, v15

    move-object/from16 p8, v16

    invoke-static/range {p0 .. p8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 454
    .local v4, "relativePath":Ljava/lang/String;
    :cond_1
    invoke-static {v9, v4}, Lio/ktor/util/PathKt;->combineSafe(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 462
    .local v4, "requestedFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v14

    .line 463
    .local v14, "isDirectory":Z
    if-eqz v8, :cond_3

    if-eqz v14, :cond_3

    .line 464
    .end local v3    # "extensions":Ljava/util/List;
    .end local v12    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v14    # "isDirectory":Z
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    move-object/from16 p0, v10

    move-object/from16 p1, v3

    move-object/from16 p2, v11

    move-object/from16 p3, v7

    move-object/from16 p4, v13

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    invoke-static/range {p0 .. p6}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v4    # "requestedFile":Ljava/io/File;
    .end local v8    # "index":Ljava/lang/String;
    if-ne v3, v2, :cond_2

    .line 442
    return-object v2

    .line 464
    :cond_2
    move-object v3, v6

    move-object v8, v11

    move-object v6, v13

    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v13    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v3, "defaultPath":Ljava/lang/String;
    .local v6, "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v8, "compressedTypes":Ljava/util/List;
    :goto_1
    move-object v13, v6

    move-object v11, v8

    move-object v6, v3

    goto/16 :goto_6

    .line 465
    .end local v8    # "compressedTypes":Ljava/util/List;
    .local v3, "extensions":Ljava/util/List;
    .restart local v4    # "requestedFile":Ljava/io/File;
    .local v6, "defaultPath":Ljava/lang/String;
    .restart local v11    # "compressedTypes":Ljava/util/List;
    .restart local v12    # "exclude":Lkotlin/jvm/functions/Function1;
    .restart local v13    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .restart local v14    # "isDirectory":Z
    :cond_3
    if-nez v14, :cond_d

    .line 466
    .end local v14    # "isDirectory":Z
    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    invoke-static {v12, v10, v4, v0}, Lio/ktor/server/http/content/StaticContentKt;->respondStaticFile$checkExclude(Lkotlin/jvm/functions/Function1;Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_4

    .line 442
    return-object v2

    .line 466
    :cond_4
    move-object/from16 v22, v6

    move-object v6, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v22

    move-object/from16 v23, v10

    move-object v10, v7

    move-object v7, v12

    move-object v12, v9

    move-object v9, v13

    move-object/from16 v13, v23

    .local v3, "requestedFile":Ljava/io/File;
    .local v4, "modify":Lkotlin/jvm/functions/Function3;
    .local v5, "defaultPath":Ljava/lang/String;
    .local v6, "extensions":Ljava/util/List;
    .local v7, "exclude":Lkotlin/jvm/functions/Function1;
    .local v9, "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v10, "contentType":Lkotlin/jvm/functions/Function1;
    .local v12, "dir":Ljava/io/File;
    .local v13, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :goto_2
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 468
    :cond_5
    iput-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    move-object/from16 p0, v13

    move-object/from16 p1, v3

    move-object/from16 p2, v11

    move-object/from16 p3, v10

    move-object/from16 p4, v9

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    invoke-static/range {p0 .. p6}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_6

    .line 442
    return-object v2

    .line 468
    :cond_6
    move-object v8, v4

    .line 469
    .end local v4    # "modify":Lkotlin/jvm/functions/Function3;
    .local v8, "modify":Lkotlin/jvm/functions/Function3;
    :goto_3
    invoke-static {v13}, Lio/ktor/server/application/ApplicationCallKt;->isHandled(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 470
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v12

    .end local v12    # "dir":Ljava/io/File;
    .local v5, "modify":Lkotlin/jvm/functions/Function3;
    .local v6, "defaultPath":Ljava/lang/String;
    .local v8, "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v9, "dir":Ljava/io/File;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 471
    .local v12, "extension":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local p0, "$result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v15, 0x2e

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v14

    .line 472
    .end local v12    # "extension":Ljava/lang/String;
    .local v1, "fileWithExtension":Ljava/io/File;
    iput-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    iput-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$10:Ljava/lang/Object;

    const/4 v12, 0x4

    iput v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    invoke-static {v7, v13, v1, v0}, Lio/ktor/server/http/content/StaticContentKt;->respondStaticFile$checkExclude(Lkotlin/jvm/functions/Function1;Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_9

    .line 442
    return-object v2

    .line 472
    :cond_9
    move-object v14, v13

    move-object v13, v9

    move-object v9, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v3

    move-object v3, v2

    move-object/from16 v2, p0

    .end local v1    # "fileWithExtension":Ljava/io/File;
    .end local v3    # "requestedFile":Ljava/io/File;
    .end local v5    # "modify":Lkotlin/jvm/functions/Function3;
    .end local p0    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    .local v4, "fileWithExtension":Ljava/io/File;
    .local v6, "requestedFile":Ljava/io/File;
    .local v7, "defaultPath":Ljava/lang/String;
    .local v8, "exclude":Lkotlin/jvm/functions/Function1;
    .local v9, "modify":Lkotlin/jvm/functions/Function3;
    .local v10, "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v11, "contentType":Lkotlin/jvm/functions/Function1;
    .local v12, "compressedTypes":Ljava/util/List;
    .local v13, "dir":Ljava/io/File;
    .local v14, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 473
    :cond_a
    iput-object v14, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$10:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    move-object/from16 p1, v14

    move-object/from16 p2, v4

    move-object/from16 p3, v12

    move-object/from16 p4, v11

    move-object/from16 p5, v10

    move-object/from16 p6, v9

    move-object/from16 p7, v0

    invoke-static/range {p1 .. p7}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "fileWithExtension":Ljava/io/File;
    if-ne v1, v3, :cond_b

    .line 442
    return-object v3

    .line 473
    :cond_b
    move-object v1, v2

    move-object v2, v3

    move-object v4, v5

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    move-object v5, v9

    move-object v8, v10

    move-object v10, v11

    move-object v11, v12

    move-object v9, v13

    move-object v13, v14

    .line 474
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v12    # "compressedTypes":Ljava/util/List;
    .end local v14    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v3    # "requestedFile":Ljava/io/File;
    .restart local v5    # "modify":Lkotlin/jvm/functions/Function3;
    .local v6, "defaultPath":Ljava/lang/String;
    .local v7, "exclude":Lkotlin/jvm/functions/Function1;
    .local v8, "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v9, "dir":Ljava/io/File;
    .local v10, "contentType":Lkotlin/jvm/functions/Function1;
    .local v11, "compressedTypes":Ljava/util/List;
    .local v13, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    :goto_5
    invoke-static {v13}, Lio/ktor/server/application/ApplicationCallKt;->isHandled(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 470
    :cond_c
    move-object/from16 p0, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p0    # "$result":Ljava/lang/Object;
    move-object v7, v10

    move-object v10, v13

    move-object v13, v8

    .line 478
    .end local v3    # "requestedFile":Ljava/io/File;
    .end local v8    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local p0    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v7, "contentType":Lkotlin/jvm/functions/Function1;
    .local v10, "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .local v13, "cacheControl":Lkotlin/jvm/functions/Function1;
    :cond_d
    :goto_6
    invoke-static {v10}, Lio/ktor/server/application/ApplicationCallKt;->isHandled(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 479
    :cond_e
    if-eqz v6, :cond_10

    .line 480
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$5:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$6:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$7:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$8:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->L$9:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$1;->label:I

    move-object/from16 p0, v10

    move-object/from16 p1, v3

    move-object/from16 p2, v11

    move-object/from16 p3, v7

    move-object/from16 p4, v13

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    invoke-static/range {p0 .. p6}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticFile(Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v5    # "modify":Lkotlin/jvm/functions/Function3;
    .end local v6    # "defaultPath":Ljava/lang/String;
    .end local v7    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v9    # "dir":Ljava/io/File;
    .end local v10    # "$this$respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v13    # "cacheControl":Lkotlin/jvm/functions/Function1;
    if-ne v3, v2, :cond_f

    .line 442
    return-object v2

    .line 482
    :cond_f
    :goto_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 479
    :cond_10
    goto :goto_7

    .line 453
    :cond_11
    :goto_8
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final respondStaticFile$checkExclude(Lkotlin/jvm/functions/Function1;Lio/ktor/server/application/ApplicationCall;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;

    iget v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;

    invoke-direct {v0, p3}, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 456
    iget v2, p3, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$respondWithType":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "$i$f$respondWithType":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 457
    .local p0, "$exclude":Lkotlin/jvm/functions/Function1;
    .local p1, "$this_respondStaticFile":Lio/ktor/server/application/ApplicationCall;
    .local p2, "file":Ljava/io/File;
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 458
    .end local p0    # "$exclude":Lkotlin/jvm/functions/Function1;
    .end local p2    # "file":Ljava/io/File;
    :cond_1
    sget-object p0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpStatusCode$Companion;->getForbidden()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    .local p0, "message$iv":Ljava/lang/Object;
    .local p1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 p2, 0x0

    .line 543
    .local p2, "$i$f$respondWithType":I
    instance-of v2, p0, Lio/ktor/http/content/OutgoingContent;

    if-nez v2, :cond_2

    instance-of v2, p0, [B

    if-nez v2, :cond_2

    .line 544
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v2

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/HttpStatusCode;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 545
    nop

    .line 546
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 547
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/HttpStatusCode;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 544
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v2, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 548
    :cond_2
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Ljava/lang/Object;

    iput v3, p3, Lio/ktor/server/http/content/StaticContentKt$respondStaticFile$checkExclude$1;->label:I

    invoke-virtual {v2, p1, v4, p3}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "message$iv":Ljava/lang/Object;
    .end local p1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    if-ne p0, v1, :cond_3

    .line 456
    return-object v1

    .line 548
    :cond_3
    move p0, p2

    .line 549
    .end local p2    # "$i$f$respondWithType":I
    .local p0, "$i$f$respondWithType":I
    :goto_1
    nop

    .line 459
    .end local p0    # "$i$f$respondWithType":I
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final respondStaticResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/http/content/CompressedFileType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Lio/ktor/http/ContentType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/CacheControl;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/net/URL;",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/URL;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p10

    instance-of v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;

    iget v2, v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;

    invoke-direct {v1, v0}, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 484
    iget v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$6:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "defaultPath":Ljava/lang/String;
    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function3;

    .local v5, "modifier":Lkotlin/jvm/functions/Function3;
    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .local v6, "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .local v8, "compressedTypes":Ljava/util/List;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "basePackage":Ljava/lang/String;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/server/application/ApplicationCall;

    .local v10, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v3    # "defaultPath":Ljava/lang/String;
    .end local v5    # "modifier":Lkotlin/jvm/functions/Function3;
    .end local v6    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v7    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v8    # "compressedTypes":Ljava/util/List;
    .end local v9    # "basePackage":Ljava/lang/String;
    .end local v10    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :pswitch_2
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$10:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$9:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "relativePath":Ljava/lang/String;
    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$8:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "defaultPath":Ljava/lang/String;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "exclude":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .local v8, "modifier":Lkotlin/jvm/functions/Function3;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .local v9, "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .local v11, "compressedTypes":Ljava/util/List;
    iget-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .local v12, "basePackage":Ljava/lang/String;
    iget-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .local v13, "index":Ljava/lang/String;
    iget-object v14, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/server/application/ApplicationCall;

    .local v14, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    move-object v9, v12

    goto/16 :goto_2

    .end local v5    # "relativePath":Ljava/lang/String;
    .end local v6    # "defaultPath":Ljava/lang/String;
    .end local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v8    # "modifier":Lkotlin/jvm/functions/Function3;
    .end local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v12    # "basePackage":Ljava/lang/String;
    .end local v13    # "index":Ljava/lang/String;
    .end local v14    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :pswitch_3
    iget-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$10:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "relativePath":Ljava/lang/String;
    iget-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$9:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "defaultPath":Ljava/lang/String;
    iget-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$8:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "extensions":Ljava/util/List;
    iget-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .restart local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .restart local v8    # "modifier":Lkotlin/jvm/functions/Function3;
    iget-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .restart local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    iget-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .restart local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .restart local v11    # "compressedTypes":Ljava/util/List;
    iget-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "basePackage":Ljava/lang/String;
    iget-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .restart local v13    # "index":Ljava/lang/String;
    iget-object v14, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/server/application/ApplicationCall;

    .restart local v14    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v3    # "relativePath":Ljava/lang/String;
    .end local v5    # "defaultPath":Ljava/lang/String;
    .end local v6    # "extensions":Ljava/util/List;
    .end local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    .end local v8    # "modifier":Lkotlin/jvm/functions/Function3;
    .end local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v12    # "basePackage":Ljava/lang/String;
    .end local v13    # "index":Ljava/lang/String;
    .end local v14    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :pswitch_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v14, p0

    .restart local v14    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    move-object/from16 v12, p2

    .restart local v12    # "basePackage":Ljava/lang/String;
    move-object/from16 v8, p6

    .restart local v8    # "modifier":Lkotlin/jvm/functions/Function3;
    move-object/from16 v10, p4

    .restart local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    move-object/from16 v6, p8

    .restart local v6    # "extensions":Ljava/util/List;
    move-object/from16 v5, p9

    .restart local v5    # "defaultPath":Ljava/lang/String;
    move-object/from16 v13, p1

    .restart local v13    # "index":Ljava/lang/String;
    move-object/from16 v11, p3

    .restart local v11    # "compressedTypes":Ljava/util/List;
    move-object/from16 v7, p7

    .restart local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    move-object/from16 v9, p5

    .line 495
    .restart local v9    # "cacheControl":Lkotlin/jvm/functions/Function1;
    invoke-interface {v14}, Lio/ktor/server/application/ApplicationCall;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v3

    const-string v15, "static-content-path-parameter"

    invoke-interface {v3, v15}, Lio/ktor/http/Parameters;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    check-cast v3, Ljava/lang/Iterable;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "separator"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v15

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 p0, v3

    move-object/from16 p1, v4

    move-object/from16 p2, v17

    move-object/from16 p3, v18

    move/from16 p4, v19

    move-object/from16 p5, v20

    move-object/from16 p6, v21

    move/from16 p7, v15

    move-object/from16 p8, v16

    invoke-static/range {p0 .. p8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 497
    .restart local v3    # "relativePath":Ljava/lang/String;
    :cond_1
    nop

    .line 498
    nop

    .line 499
    nop

    .line 500
    nop

    .line 501
    nop

    .line 502
    nop

    .line 503
    nop

    .line 504
    nop

    .line 497
    iput-object v14, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$5:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$6:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$7:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$8:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$9:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$10:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    move-object/from16 p0, v14

    move-object/from16 p1, v3

    move-object/from16 p2, v12

    move-object/from16 p3, v11

    move-object/from16 p4, v10

    move-object/from16 p5, v9

    move-object/from16 p6, v8

    move-object/from16 p7, v7

    move-object/from16 p8, v0

    invoke-static/range {p0 .. p8}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_2

    .line 484
    return-object v2

    .line 507
    :cond_2
    :goto_1
    invoke-static {v14}, Lio/ktor/server/application/ApplicationCallKt;->isHandled(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 508
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v9

    move-object v9, v12

    move-object/from16 v26, v4

    move-object v4, v3

    move-object/from16 v3, v26

    .end local v3    # "relativePath":Ljava/lang/String;
    .end local v12    # "basePackage":Ljava/lang/String;
    .local v4, "relativePath":Ljava/lang/String;
    .local v6, "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v9, "basePackage":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 509
    .local v12, "extension":Ljava/lang/String;
    nop

    .line 510
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 p9, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local p9, "$result":Ljava/lang/Object;
    const/16 v1, 0x2e

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .end local v12    # "extension":Ljava/lang/String;
    nop

    .line 512
    nop

    .line 513
    nop

    .line 514
    nop

    .line 515
    nop

    .line 516
    nop

    .line 509
    iput-object v14, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$4:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$5:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$6:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$7:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$8:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$9:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$10:Ljava/lang/Object;

    const/4 v12, 0x2

    iput v12, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    move-object/from16 p0, v14

    move-object/from16 p1, v1

    move-object/from16 p2, v9

    move-object/from16 p3, v11

    move-object/from16 p4, v10

    move-object/from16 p5, v6

    move-object/from16 p6, v8

    move-object/from16 p7, v7

    move-object/from16 p8, v0

    invoke-static/range {p0 .. p8}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticResource(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    .line 484
    return-object v2

    .line 509
    :cond_5
    move-object/from16 v1, p9

    .line 518
    .end local p9    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_2
    invoke-static {v14}, Lio/ktor/server/application/ApplicationCallKt;->isHandled(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 508
    :cond_6
    move-object/from16 p9, v1

    .line 521
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v7    # "exclude":Lkotlin/jvm/functions/Function1;
    .restart local p9    # "$result":Ljava/lang/Object;
    if-eqz v13, :cond_8

    .line 522
    nop

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 524
    .end local v4    # "relativePath":Ljava/lang/String;
    .end local v13    # "index":Ljava/lang/String;
    nop

    .line 525
    nop

    .line 526
    nop

    .line 527
    nop

    .line 528
    nop

    .line 522
    iput-object v14, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$4:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$5:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$6:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$7:Ljava/lang/Object;

    iput-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$8:Ljava/lang/Object;

    iput-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$9:Ljava/lang/Object;

    iput-object v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$10:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    const/16 v22, 0x0

    const/16 v24, 0x40

    const/16 v25, 0x0

    move-object v15, v14

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v23, v0

    invoke-static/range {v15 .. v25}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticResource$default(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_7

    .line 484
    return-object v2

    .line 522
    :cond_7
    move-object/from16 v1, p9

    move-object v3, v5

    move-object v5, v8

    move-object v7, v10

    move-object v8, v11

    move-object v10, v14

    .line 531
    .end local v11    # "compressedTypes":Ljava/util/List;
    .end local v14    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    .end local p9    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v3, "defaultPath":Ljava/lang/String;
    .local v5, "modifier":Lkotlin/jvm/functions/Function3;
    .local v7, "contentType":Lkotlin/jvm/functions/Function1;
    .local v8, "compressedTypes":Ljava/util/List;
    .local v10, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    :goto_3
    move-object v12, v3

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move-object v15, v7

    move-object v14, v8

    move-object v13, v9

    move-object v11, v10

    goto :goto_4

    .line 521
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "defaultPath":Ljava/lang/String;
    .end local v7    # "contentType":Lkotlin/jvm/functions/Function1;
    .restart local v4    # "relativePath":Ljava/lang/String;
    .local v5, "defaultPath":Ljava/lang/String;
    .local v8, "modifier":Lkotlin/jvm/functions/Function3;
    .local v10, "contentType":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "compressedTypes":Ljava/util/List;
    .restart local v13    # "index":Ljava/lang/String;
    .restart local v14    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    .restart local p9    # "$result":Ljava/lang/Object;
    :cond_8
    move-object/from16 v1, p9

    move-object v12, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move-object v13, v9

    move-object v15, v10

    move-object/from16 v26, v14

    move-object v14, v11

    move-object/from16 v11, v26

    .line 531
    .end local v4    # "relativePath":Ljava/lang/String;
    .end local v5    # "defaultPath":Ljava/lang/String;
    .end local v6    # "cacheControl":Lkotlin/jvm/functions/Function1;
    .end local v8    # "modifier":Lkotlin/jvm/functions/Function3;
    .end local v9    # "basePackage":Ljava/lang/String;
    .end local v10    # "contentType":Lkotlin/jvm/functions/Function1;
    .end local p9    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v11, "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    .local v12, "defaultPath":Ljava/lang/String;
    .local v13, "basePackage":Ljava/lang/String;
    .local v14, "compressedTypes":Ljava/util/List;
    .local v15, "contentType":Lkotlin/jvm/functions/Function1;
    .local v16, "cacheControl":Lkotlin/jvm/functions/Function1;
    .local v17, "modifier":Lkotlin/jvm/functions/Function3;
    :goto_4
    invoke-static {v11}, Lio/ktor/server/application/ApplicationCallKt;->isHandled(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v12, :cond_9

    goto :goto_6

    .line 533
    :cond_9
    nop

    .line 534
    .end local v11    # "$this$respondStaticResource":Lio/ktor/server/application/ApplicationCall;
    nop

    .line 535
    .end local v12    # "defaultPath":Ljava/lang/String;
    nop

    .line 536
    .end local v13    # "basePackage":Ljava/lang/String;
    nop

    .line 537
    .end local v14    # "compressedTypes":Ljava/util/List;
    nop

    .line 538
    .end local v15    # "contentType":Lkotlin/jvm/functions/Function1;
    nop

    .line 539
    .end local v16    # "cacheControl":Lkotlin/jvm/functions/Function1;
    nop

    .line 533
    .end local v17    # "modifier":Lkotlin/jvm/functions/Function3;
    const/4 v3, 0x0

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$4:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$5:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$6:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$7:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$8:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$9:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->L$10:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Lio/ktor/server/http/content/StaticContentKt$respondStaticResource$1;->label:I

    const/16 v18, 0x0

    const/16 v20, 0x40

    const/16 v21, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v11 .. v21}, Lio/ktor/server/http/content/PreCompressedKt;->respondStaticResource$default(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    .line 484
    return-object v2

    .line 541
    :cond_a
    :goto_5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 531
    :cond_b
    :goto_6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 495
    :cond_c
    :goto_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final setStaticBasePackage(Lio/ktor/server/routing/Route;Ljava/lang/String;)V
    .locals 2
    .param p0, "$this$staticBasePackage"    # Lio/ktor/server/routing/Route;
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/http/content/StaticContentKt;->staticBasePackageName:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1, p1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/http/content/StaticContentKt;->staticBasePackageName:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->remove(Lio/ktor/util/AttributeKey;)V

    .line 357
    :goto_0
    return-void
.end method

.method public static final setStaticRootFolder(Lio/ktor/server/routing/Route;Ljava/io/File;)V
    .locals 2
    .param p0, "$this$staticRootFolder"    # Lio/ktor/server/routing/Route;
    .param p1, "value"    # Ljava/io/File;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/http/content/StaticContentKt;->staticRootFolderKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1, p1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/http/content/StaticContentKt;->staticRootFolderKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->remove(Lio/ktor/util/AttributeKey;)V

    .line 264
    :goto_0
    return-void
.end method

.method public static final static(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 1
    .param p0, "$this$static"    # Lio/ktor/server/routing/Route;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
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

    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` or `staticResources` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-static {p0, p1, p2}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final static(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 1
    .param p0, "$this$static"    # Lio/ktor/server/routing/Route;
    .param p1, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Please use `staticFiles` or `staticResources` instead"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private static final staticContentRoute(Lio/ktor/server/routing/Route;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lio/ktor/server/routing/Route;
    .locals 1
    .param p0, "$this$staticContentRoute"    # Lio/ktor/server/routing/Route;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "autoHead"    # Z
    .param p3, "handler"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
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

    .line 426
    new-instance v0, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;

    invoke-direct {v0, p2, p3}, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;-><init>(ZLkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    .line 440
    return-object v0
.end method

.method public static final staticFiles(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 25
    .param p0, "$this$staticFiles"    # Lio/ktor/server/routing/Route;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "index"    # Ljava/lang/String;
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/http/content/StaticContentConfig<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "remotePath"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dir"

    move-object/from16 v15, p2

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v3, Lio/ktor/server/http/content/StaticContentConfig;

    invoke-direct {v3}, Lio/ktor/server/http/content/StaticContentConfig;-><init>()V

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .local v3, "staticRoute":Lio/ktor/server/http/content/StaticContentConfig;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getAutoHeadResponse$ktor_server_core()Z

    move-result v14

    .line 166
    .local v14, "autoHead":Z
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getPreCompressedFileTypes$ktor_server_core()Ljava/util/List;

    move-result-object v16

    .line 167
    .local v16, "compressedTypes":Ljava/util/List;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getContentType$ktor_server_core()Lkotlin/jvm/functions/Function1;

    move-result-object v17

    .line 168
    .local v17, "contentType":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getCacheControl$ktor_server_core()Lkotlin/jvm/functions/Function1;

    move-result-object v18

    .line 169
    .local v18, "cacheControl":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getExtensions$ktor_server_core()Ljava/util/List;

    move-result-object v19

    .line 170
    .local v19, "extensions":Ljava/util/List;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getModifier$ktor_server_core()Lkotlin/jvm/functions/Function3;

    move-result-object v20

    .line 171
    .local v20, "modify":Lkotlin/jvm/functions/Function3;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getExclude$ktor_server_core()Lkotlin/jvm/functions/Function1;

    move-result-object v21

    .line 172
    .local v21, "exclude":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getDefaultPath$ktor_server_core()Ljava/lang/String;

    move-result-object v22

    .line 173
    .local v22, "defaultPath":Ljava/lang/String;
    new-instance v23, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;

    const/16 v24, 0x0

    move-object/from16 v4, v23

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v19

    move-object/from16 v13, v22

    move v2, v14

    .end local v14    # "autoHead":Z
    .local v2, "autoHead":Z
    move-object/from16 v14, v24

    invoke-direct/range {v4 .. v14}, Lio/ktor/server/http/content/StaticContentKt$staticFiles$2;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, v23

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v4}, Lio/ktor/server/http/content/StaticContentKt;->staticContentRoute(Lio/ktor/server/routing/Route;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lio/ktor/server/routing/Route;

    move-result-object v4

    return-object v4
.end method

.method public static synthetic staticFiles$default(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/routing/Route;
    .locals 0

    .line 158
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 161
    const-string p3, "index.html"

    .line 158
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 162
    sget-object p4, Lio/ktor/server/http/content/StaticContentKt$staticFiles$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentKt$staticFiles$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 158
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/http/content/StaticContentKt;->staticFiles(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object p0

    return-object p0
.end method

.method public static final staticResources(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 24
    .param p0, "$this$staticResources"    # Lio/ktor/server/routing/Route;
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "basePackage"    # Ljava/lang/String;
    .param p3, "index"    # Ljava/lang/String;
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/http/content/StaticContentConfig<",
            "Ljava/net/URL;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "remotePath"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v3, Lio/ktor/server/http/content/StaticContentConfig;

    invoke-direct {v3}, Lio/ktor/server/http/content/StaticContentConfig;-><init>()V

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .local v3, "staticRoute":Lio/ktor/server/http/content/StaticContentConfig;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getAutoHeadResponse$ktor_server_core()Z

    move-result v4

    .line 206
    .local v4, "autoHead":Z
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getPreCompressedFileTypes$ktor_server_core()Ljava/util/List;

    move-result-object v16

    .line 207
    .local v16, "compressedTypes":Ljava/util/List;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getContentType$ktor_server_core()Lkotlin/jvm/functions/Function1;

    move-result-object v17

    .line 208
    .local v17, "contentType":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getCacheControl$ktor_server_core()Lkotlin/jvm/functions/Function1;

    move-result-object v18

    .line 209
    .local v18, "cacheControl":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getExtensions$ktor_server_core()Ljava/util/List;

    move-result-object v19

    .line 210
    .local v19, "extensions":Ljava/util/List;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getModifier$ktor_server_core()Lkotlin/jvm/functions/Function3;

    move-result-object v20

    .line 211
    .local v20, "modifier":Lkotlin/jvm/functions/Function3;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getExclude$ktor_server_core()Lkotlin/jvm/functions/Function1;

    move-result-object v21

    .line 212
    .local v21, "exclude":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v3}, Lio/ktor/server/http/content/StaticContentConfig;->getDefaultPath$ktor_server_core()Ljava/lang/String;

    move-result-object v22

    .line 213
    .local v22, "defaultPath":Ljava/lang/String;
    new-instance v23, Lio/ktor/server/http/content/StaticContentKt$staticResources$2;

    const/4 v15, 0x0

    move-object/from16 v5, v23

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v19

    move-object/from16 v14, v22

    invoke-direct/range {v5 .. v15}, Lio/ktor/server/http/content/StaticContentKt$staticResources$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v5, v23

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v4, v5}, Lio/ktor/server/http/content/StaticContentKt;->staticContentRoute(Lio/ktor/server/routing/Route;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lio/ktor/server/routing/Route;

    move-result-object v5

    return-object v5
.end method

.method public static synthetic staticResources$default(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/routing/Route;
    .locals 0

    .line 198
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 201
    const-string p3, "index.html"

    .line 198
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 202
    sget-object p4, Lio/ktor/server/http/content/StaticContentKt$staticResources$1;->INSTANCE:Lio/ktor/server/http/content/StaticContentKt$staticResources$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 198
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/http/content/StaticContentKt;->staticResources(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object p0

    return-object p0
.end method
