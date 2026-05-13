.class final Lio/ktor/server/http/content/StaticContentConfig$contentType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StaticContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/StaticContentConfig;->contentType(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TResource;",
        "Lio/ktor/http/ContentType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/http/ContentType;",
        "Resource",
        "",
        "resource",
        "invoke",
        "(Ljava/lang/Object;)Lio/ktor/http/ContentType;"
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
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TResource;",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/ktor/server/http/content/StaticContentConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/http/content/StaticContentConfig<",
            "TResource;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lio/ktor/server/http/content/StaticContentConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TResource;",
            "Lio/ktor/http/ContentType;",
            ">;",
            "Lio/ktor/server/http/content/StaticContentConfig<",
            "TResource;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/http/content/StaticContentConfig$contentType$1;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lio/ktor/server/http/content/StaticContentConfig$contentType$1;->this$0:Lio/ktor/server/http/content/StaticContentConfig;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Lio/ktor/http/ContentType;
    .locals 1
    .param p1, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResource;)",
            "Lio/ktor/http/ContentType;"
        }
    .end annotation

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig$contentType$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/ContentType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/http/content/StaticContentConfig$contentType$1;->this$0:Lio/ktor/server/http/content/StaticContentConfig;

    invoke-static {v0}, Lio/ktor/server/http/content/StaticContentConfig;->access$getDefaultContentType$p(Lio/ktor/server/http/content/StaticContentConfig;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/ContentType;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 98
    invoke-virtual {p0, p1}, Lio/ktor/server/http/content/StaticContentConfig$contentType$1;->invoke(Ljava/lang/Object;)Lio/ktor/http/ContentType;

    move-result-object v0

    return-object v0
.end method
