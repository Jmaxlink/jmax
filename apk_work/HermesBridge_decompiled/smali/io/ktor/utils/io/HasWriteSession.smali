.class public interface abstract Lio/ktor/utils/io/HasWriteSession;
.super Ljava/lang/Object;
.source "WriterSession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008`\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/ktor/utils/io/HasWriteSession;",
        "",
        "beginWriteSession",
        "Lio/ktor/utils/io/WriterSuspendSession;",
        "endWriteSession",
        "",
        "written",
        "",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract beginWriteSession()Lio/ktor/utils/io/WriterSuspendSession;
.end method

.method public abstract endWriteSession(I)V
.end method
