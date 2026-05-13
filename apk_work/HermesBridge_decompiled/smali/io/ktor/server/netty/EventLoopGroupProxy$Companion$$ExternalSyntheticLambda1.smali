.class public final synthetic Lio/ktor/server/netty/EventLoopGroupProxy$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Lio/netty/util/concurrent/DefaultThreadFactory;


# direct methods
.method public synthetic constructor <init>(Lio/netty/util/concurrent/DefaultThreadFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/netty/EventLoopGroupProxy$Companion$$ExternalSyntheticLambda1;->f$0:Lio/netty/util/concurrent/DefaultThreadFactory;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy$Companion$$ExternalSyntheticLambda1;->f$0:Lio/netty/util/concurrent/DefaultThreadFactory;

    invoke-static {v0, p1}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->$r8$lambda$e27vD6dLRBYKv_z4UnoyFIFmi34(Lio/netty/util/concurrent/DefaultThreadFactory;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
