.class public Lio/netty/handler/ssl/SslContextOption;
.super Lio/netty/util/AbstractConstant;
.source "SslContextOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/AbstractConstant<",
        "Lio/netty/handler/ssl/SslContextOption<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final pool:Lio/netty/util/ConstantPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ConstantPool<",
            "Lio/netty/handler/ssl/SslContextOption<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lio/netty/handler/ssl/SslContextOption$1;

    invoke-direct {v0}, Lio/netty/handler/ssl/SslContextOption$1;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 67
    .local p0, "this":Lio/netty/handler/ssl/SslContextOption;, "Lio/netty/handler/ssl/SslContextOption<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/AbstractConstant;-><init>(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lio/netty/handler/ssl/SslContextOption$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/netty/handler/ssl/SslContextOption$1;

    .line 31
    .local p0, "this":Lio/netty/handler/ssl/SslContextOption;, "Lio/netty/handler/ssl/SslContextOption<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslContextOption;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    .local p0, "this":Lio/netty/handler/ssl/SslContextOption;, "Lio/netty/handler/ssl/SslContextOption<TT;>;"
    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0}, Lio/netty/util/ConstantPool;->nextId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/SslContextOption;-><init>(ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextOption;
    .locals 1
    .param p1, "secondNameComponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/handler/ssl/SslContextOption<",
            "TT;>;"
        }
    .end annotation

    .line 53
    .local p0, "firstNameComponent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslContextOption;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/SslContextOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/handler/ssl/SslContextOption<",
            "TT;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lio/netty/handler/ssl/SslContextOption;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslContextOption;

    return-object v0
.end method


# virtual methods
.method public validate(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/netty/handler/ssl/SslContextOption;, "Lio/netty/handler/ssl/SslContextOption<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    return-void
.end method
