.class final Lio/ktor/serialization/gson/GsonConverterKt$gson$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GsonConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/serialization/gson/GsonConverterKt;->gson$default(Lio/ktor/serialization/Configuration;Lio/ktor/http/ContentType;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/gson/GsonBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/google/gson/GsonBuilder;",
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
.field public static final INSTANCE:Lio/ktor/serialization/gson/GsonConverterKt$gson$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/serialization/gson/GsonConverterKt$gson$1;

    invoke-direct {v0}, Lio/ktor/serialization/gson/GsonConverterKt$gson$1;-><init>()V

    sput-object v0, Lio/ktor/serialization/gson/GsonConverterKt$gson$1;->INSTANCE:Lio/ktor/serialization/gson/GsonConverterKt$gson$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/google/gson/GsonBuilder;

    invoke-virtual {p0, v0}, Lio/ktor/serialization/gson/GsonConverterKt$gson$1;->invoke(Lcom/google/gson/GsonBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/google/gson/GsonBuilder;)V
    .locals 1
    .param p1, "$this$null"    # Lcom/google/gson/GsonBuilder;

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void
.end method
