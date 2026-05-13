.class public final enum Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
.super Ljava/lang/Enum;
.source "InterfaceHttpData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

.field public static final enum Attribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

.field public static final enum FileUpload:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

.field public static final enum InternalAttribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    const-string v1, "Attribute"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    new-instance v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    const-string v1, "FileUpload"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->FileUpload:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    new-instance v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    const-string v1, "InternalAttribute"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->InternalAttribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    .line 24
    sget-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    sget-object v1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->FileUpload:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    sget-object v2, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->InternalAttribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    filled-new-array {v0, v1, v2}, [Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->$VALUES:[Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 24
    sget-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->$VALUES:[Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method
