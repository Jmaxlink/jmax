.class final Lio/netty/util/ResourceLeakDetector$TraceRecord$1;
.super Lio/netty/util/ResourceLeakDetector$TraceRecord;
.source "ResourceLeakDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector$TraceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66a425649ae293abL


# direct methods
.method constructor <init>()V
    .locals 1

    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector$TraceRecord;-><init>(Lio/netty/util/ResourceLeakDetector$1;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 654
    return-object p0
.end method
