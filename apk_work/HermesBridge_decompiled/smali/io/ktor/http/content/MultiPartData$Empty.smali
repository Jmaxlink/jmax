.class public final Lio/ktor/http/content/MultiPartData$Empty;
.super Ljava/lang/Object;
.source "Multipart.kt"

# interfaces
.implements Lio/ktor/http/content/MultiPartData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/content/MultiPartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/ktor/http/content/MultiPartData$Empty;",
        "Lio/ktor/http/content/MultiPartData;",
        "()V",
        "readPart",
        "Lio/ktor/http/content/PartData;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# static fields
.field public static final INSTANCE:Lio/ktor/http/content/MultiPartData$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/http/content/MultiPartData$Empty;

    invoke-direct {v0}, Lio/ktor/http/content/MultiPartData$Empty;-><init>()V

    sput-object v0, Lio/ktor/http/content/MultiPartData$Empty;->INSTANCE:Lio/ktor/http/content/MultiPartData$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readPart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/PartData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method
