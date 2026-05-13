.class public Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHAR_INFO"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public attributes:S

.field public unicodeChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 287
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 288
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->init()V

    .line 289
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init()V
.end method
