.class public final Lio/ktor/utils/io/jvm/javaio/BlockingKt;
.super Ljava/lang/Object;
.source "Blocking.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\n\u001a\u00020\u000b*\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u001a\u0016\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\"#\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "ADAPTER_LOGGER",
        "Lorg/slf4j/Logger;",
        "kotlin.jvm.PlatformType",
        "getADAPTER_LOGGER",
        "()Lorg/slf4j/Logger;",
        "ADAPTER_LOGGER$delegate",
        "Lkotlin/Lazy;",
        "CloseToken",
        "",
        "FlushToken",
        "toInputStream",
        "Ljava/io/InputStream;",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "toOutputStream",
        "Ljava/io/OutputStream;",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "ktor-io"
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
.field private static final ADAPTER_LOGGER$delegate:Lkotlin/Lazy;

.field private static final CloseToken:Ljava/lang/Object;

.field private static final FlushToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/BlockingKt$ADAPTER_LOGGER$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->ADAPTER_LOGGER$delegate:Lkotlin/Lazy;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->CloseToken:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->FlushToken:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getADAPTER_LOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 1
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->getADAPTER_LOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCloseToken$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->CloseToken:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getFlushToken$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->FlushToken:Ljava/lang/Object;

    return-object v0
.end method

.method private static final getADAPTER_LOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 16
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->ADAPTER_LOGGER$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final toInputStream(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;)Ljava/io/InputStream;
    .locals 1
    .param p0, "$this$toInputStream"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    invoke-direct {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteReadChannel;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public static synthetic toInputStream$default(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/InputStream;
    .locals 0

    .line 22
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toInputStream(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/Job;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final toOutputStream(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/coroutines/Job;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "$this$toOutputStream"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-direct {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteWriteChannel;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public static synthetic toOutputStream$default(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Ljava/io/OutputStream;
    .locals 0

    .line 28
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->toOutputStream(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/coroutines/Job;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
