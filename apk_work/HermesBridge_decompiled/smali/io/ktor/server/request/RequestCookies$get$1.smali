.class final Lio/ktor/server/request/RequestCookies$get$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RequestCookies.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/request/RequestCookies;->get(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
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
.field final synthetic $encoding:Lio/ktor/http/CookieEncoding;

.field final synthetic $rawValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/request/RequestCookies$get$1;->$rawValue:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/server/request/RequestCookies$get$1;->$encoding:Lio/ktor/http/CookieEncoding;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/ktor/server/request/RequestCookies$get$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lio/ktor/server/request/RequestCookies$get$1;->$rawValue:Ljava/lang/String;

    iget-object v1, p0, Lio/ktor/server/request/RequestCookies$get$1;->$encoding:Lio/ktor/http/CookieEncoding;

    invoke-static {v0, v1}, Lio/ktor/http/CookieKt;->decodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
