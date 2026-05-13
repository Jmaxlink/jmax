.class public final Lio/ktor/http/ParametersBuilderImpl;
.super Lio/ktor/util/StringValuesBuilderImpl;
.source "Parameters.kt"

# interfaces
.implements Lio/ktor/http/ParametersBuilder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/ktor/http/ParametersBuilderImpl;",
        "Lio/ktor/util/StringValuesBuilderImpl;",
        "Lio/ktor/http/ParametersBuilder;",
        "size",
        "",
        "(I)V",
        "build",
        "Lio/ktor/http/Parameters;",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/ktor/http/ParametersBuilderImpl;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/ktor/util/StringValuesBuilderImpl;-><init>(ZI)V

    .line 37
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 38
    const/16 p1, 0x8

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/http/ParametersBuilderImpl;-><init>(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public build()Lio/ktor/http/Parameters;
    .locals 2

    .line 41
    new-instance v0, Lio/ktor/http/ParametersImpl;

    invoke-virtual {p0}, Lio/ktor/http/ParametersBuilderImpl;->getValues()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/ParametersImpl;-><init>(Ljava/util/Map;)V

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public bridge synthetic build()Lio/ktor/util/StringValues;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/ktor/http/ParametersBuilderImpl;->build()Lio/ktor/http/Parameters;

    move-result-object v0

    check-cast v0, Lio/ktor/util/StringValues;

    return-object v0
.end method
