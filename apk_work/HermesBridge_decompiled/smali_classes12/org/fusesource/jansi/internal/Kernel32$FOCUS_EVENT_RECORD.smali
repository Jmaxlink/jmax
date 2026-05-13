.class public Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FOCUS_EVENT_RECORD"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public setFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 426
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 427
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;->init()V

    .line 428
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init()V
.end method
