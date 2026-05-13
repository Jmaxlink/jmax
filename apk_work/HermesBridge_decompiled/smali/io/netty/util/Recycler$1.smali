.class final Lio/netty/util/Recycler$1;
.super Lio/netty/util/Recycler$EnhancedHandle;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler$EnhancedHandle<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/util/Recycler$EnhancedHandle;-><init>(Lio/netty/util/Recycler$1;)V

    return-void
.end method


# virtual methods
.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "NOOP_HANDLE"

    return-object v0
.end method

.method public unguardedRecycle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 53
    return-void
.end method
