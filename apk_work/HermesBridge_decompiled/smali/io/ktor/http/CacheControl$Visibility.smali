.class public final enum Lio/ktor/http/CacheControl$Visibility;
.super Ljava/lang/Enum;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/http/CacheControl$Visibility;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ktor/http/CacheControl$Visibility;",
        "",
        "headerValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getHeaderValue$ktor_http",
        "()Ljava/lang/String;",
        "Public",
        "Private",
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
.field private static final synthetic $VALUES:[Lio/ktor/http/CacheControl$Visibility;

.field public static final enum Private:Lio/ktor/http/CacheControl$Visibility;

.field public static final enum Public:Lio/ktor/http/CacheControl$Visibility;


# instance fields
.field private final headerValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/ktor/http/CacheControl$Visibility;
    .locals 2

    sget-object v0, Lio/ktor/http/CacheControl$Visibility;->Public:Lio/ktor/http/CacheControl$Visibility;

    sget-object v1, Lio/ktor/http/CacheControl$Visibility;->Private:Lio/ktor/http/CacheControl$Visibility;

    filled-new-array {v0, v1}, [Lio/ktor/http/CacheControl$Visibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lio/ktor/http/CacheControl$Visibility;

    const/4 v1, 0x0

    const-string v2, "public"

    const-string v3, "Public"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/http/CacheControl$Visibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/CacheControl$Visibility;->Public:Lio/ktor/http/CacheControl$Visibility;

    .line 26
    new-instance v0, Lio/ktor/http/CacheControl$Visibility;

    const/4 v1, 0x1

    const-string v2, "private"

    const-string v3, "Private"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/http/CacheControl$Visibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/ktor/http/CacheControl$Visibility;->Private:Lio/ktor/http/CacheControl$Visibility;

    invoke-static {}, Lio/ktor/http/CacheControl$Visibility;->$values()[Lio/ktor/http/CacheControl$Visibility;

    move-result-object v0

    sput-object v0, Lio/ktor/http/CacheControl$Visibility;->$VALUES:[Lio/ktor/http/CacheControl$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/ktor/http/CacheControl$Visibility;->headerValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/http/CacheControl$Visibility;
    .locals 1

    const-class v0, Lio/ktor/http/CacheControl$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ktor/http/CacheControl$Visibility;

    return-object v0
.end method

.method public static values()[Lio/ktor/http/CacheControl$Visibility;
    .locals 1

    sget-object v0, Lio/ktor/http/CacheControl$Visibility;->$VALUES:[Lio/ktor/http/CacheControl$Visibility;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/http/CacheControl$Visibility;

    return-object v0
.end method


# virtual methods
.method public final getHeaderValue$ktor_http()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/http/CacheControl$Visibility;->headerValue:Ljava/lang/String;

    return-object v0
.end method
