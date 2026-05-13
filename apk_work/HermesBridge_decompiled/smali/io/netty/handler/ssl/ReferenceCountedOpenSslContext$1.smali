.class Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;
.super Lio/netty/util/AbstractReferenceCounted;
.source "ReferenceCountedOpenSslContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 133
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    return-void
.end method


# virtual methods
.method protected deallocate()V
    .locals 2

    .line 145
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$100(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    .line 146
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-interface {v0, v1}, Lio/netty/util/ResourceLeakTracker;->close(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .local v0, "closed":Z
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 150
    .end local v0    # "closed":Z
    :cond_1
    :goto_0
    return-void
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/util/ResourceLeakTracker;->record(Ljava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    return-object v0
.end method
