.class final Lio/ktor/http/auth/HttpAuthHeader$Parameterized$render$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpAuthHeader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/auth/HttpAuthHeader$Parameterized;->render(Lio/ktor/http/auth/HeaderValueEncoding;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/http/HeaderValueParam;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/ktor/http/HeaderValueParam;",
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
.field final synthetic $encoding:Lio/ktor/http/auth/HeaderValueEncoding;

.field final synthetic this$0:Lio/ktor/http/auth/HttpAuthHeader$Parameterized;


# direct methods
.method constructor <init>(Lio/ktor/http/auth/HttpAuthHeader$Parameterized;Lio/ktor/http/auth/HeaderValueEncoding;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/http/auth/HttpAuthHeader$Parameterized$render$1;->this$0:Lio/ktor/http/auth/HttpAuthHeader$Parameterized;

    iput-object p2, p0, Lio/ktor/http/auth/HttpAuthHeader$Parameterized$render$1;->$encoding:Lio/ktor/http/auth/HeaderValueEncoding;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/http/HeaderValueParam;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "it"    # Lio/ktor/http/HeaderValueParam;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/ktor/http/HeaderValueParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/auth/HttpAuthHeader$Parameterized$render$1;->this$0:Lio/ktor/http/auth/HttpAuthHeader$Parameterized;

    invoke-virtual {p1}, Lio/ktor/http/HeaderValueParam;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/ktor/http/auth/HttpAuthHeader$Parameterized$render$1;->$encoding:Lio/ktor/http/auth/HeaderValueEncoding;

    invoke-static {v1, v2, v3}, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;->access$encode(Lio/ktor/http/auth/HttpAuthHeader$Parameterized;Ljava/lang/String;Lio/ktor/http/auth/HeaderValueEncoding;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 319
    move-object v0, p1

    check-cast v0, Lio/ktor/http/HeaderValueParam;

    invoke-virtual {p0, v0}, Lio/ktor/http/auth/HttpAuthHeader$Parameterized$render$1;->invoke(Lio/ktor/http/HeaderValueParam;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
