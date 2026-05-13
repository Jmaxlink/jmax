.class final Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6LazyHolder;
.super Ljava/lang/Object;
.source "NetUtilSubstitutions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetUtilLocalhost6LazyHolder"
.end annotation


# static fields
.field private static final LOCALHOST6:Ljava/net/Inet6Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lio/netty/util/NetUtilInitializations;->createLocalhost6()Ljava/net/Inet6Address;

    move-result-object v0

    sput-object v0, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6LazyHolder;->LOCALHOST6:Ljava/net/Inet6Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/net/Inet6Address;
    .locals 1

    .line 75
    sget-object v0, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6LazyHolder;->LOCALHOST6:Ljava/net/Inet6Address;

    return-object v0
.end method
