.class final Lio/netty/bootstrap/ChannelInitializerExtensions$EmptyExtensions;
.super Lio/netty/bootstrap/ChannelInitializerExtensions;
.source "ChannelInitializerExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/ChannelInitializerExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyExtensions"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/bootstrap/ChannelInitializerExtensions;-><init>(Lio/netty/bootstrap/ChannelInitializerExtensions$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/bootstrap/ChannelInitializerExtensions$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/bootstrap/ChannelInitializerExtensions$1;

    .line 73
    invoke-direct {p0}, Lio/netty/bootstrap/ChannelInitializerExtensions$EmptyExtensions;-><init>()V

    return-void
.end method


# virtual methods
.method extensions(Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection<",
            "Lio/netty/bootstrap/ChannelInitializerExtension;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
