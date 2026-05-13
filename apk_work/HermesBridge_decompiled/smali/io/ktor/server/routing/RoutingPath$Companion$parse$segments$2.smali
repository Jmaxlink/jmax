.class final Lio/ktor/server/routing/RoutingPath$Companion$parse$segments$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RoutingPath.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/routing/RoutingPath$Companion;->parse(Ljava/lang/String;)Lio/ktor/server/routing/RoutingPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lio/ktor/server/routing/RoutingPathSegment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/server/routing/RoutingPathSegment;",
        "segment",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/routing/RoutingPath$Companion$parse$segments$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/routing/RoutingPath$Companion$parse$segments$2;

    invoke-direct {v0}, Lio/ktor/server/routing/RoutingPath$Companion$parse$segments$2;-><init>()V

    sput-object v0, Lio/ktor/server/routing/RoutingPath$Companion$parse$segments$2;->INSTANCE:Lio/ktor/server/routing/RoutingPath$Companion$parse$segments$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/ktor/server/routing/RoutingPathSegment;
    .locals 7
    .param p1, "segment"    # Ljava/lang/String;

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 29
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x7b

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x7d

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/ktor/server/routing/RoutingPathSegment;

    .line 30
    nop

    .line 31
    sget-object v1, Lio/ktor/server/routing/RoutingPathSegmentKind;->Parameter:Lio/ktor/server/routing/RoutingPathSegmentKind;

    .line 29
    invoke-direct {v0, p1, v1}, Lio/ktor/server/routing/RoutingPathSegment;-><init>(Ljava/lang/String;Lio/ktor/server/routing/RoutingPathSegmentKind;)V

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lio/ktor/server/routing/RoutingPathSegment;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/ktor/server/routing/RoutingPathSegmentKind;->Constant:Lio/ktor/server/routing/RoutingPathSegmentKind;

    invoke-direct {v0, v1, v2}, Lio/ktor/server/routing/RoutingPathSegment;-><init>(Ljava/lang/String;Lio/ktor/server/routing/RoutingPathSegmentKind;)V

    .line 28
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 27
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/ktor/server/routing/RoutingPath$Companion$parse$segments$2;->invoke(Ljava/lang/String;)Lio/ktor/server/routing/RoutingPathSegment;

    move-result-object v0

    return-object v0
.end method
