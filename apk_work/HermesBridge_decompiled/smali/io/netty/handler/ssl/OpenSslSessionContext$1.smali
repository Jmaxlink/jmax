.class Lio/netty/handler/ssl/OpenSslSessionContext$1;
.super Ljava/lang/Object;
.source "OpenSslSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/OpenSslSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final ids:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/handler/ssl/OpenSslSessionId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/handler/ssl/OpenSslSessionContext;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslSessionContext;)V
    .locals 1
    .param p1, "this$0"    # Lio/netty/handler/ssl/OpenSslSessionContext;

    .line 102
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext$1;->this$0:Lio/netty/handler/ssl/OpenSslSessionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext$1;->this$0:Lio/netty/handler/ssl/OpenSslSessionContext;

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSslSessionContext;->access$000(Lio/netty/handler/ssl/OpenSslSessionContext;)Lio/netty/handler/ssl/OpenSslSessionCache;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext$1;->ids:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext$1;->ids:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionContext$1;->nextElement()[B

    move-result-object v0

    return-object v0
.end method

.method public nextElement()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext$1;->ids:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionId;->cloneBytes()[B

    move-result-object v0

    return-object v0
.end method
