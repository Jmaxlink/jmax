.class public Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMALL_RECT"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public bottom:S

.field public left:S

.field public right:S

.field public top:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 71
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 72
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public copy()Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    .locals 2

    .line 93
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;-><init>()V

    .line 94
    .local v0, "rc":Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->left:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->left:S

    .line 95
    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    .line 96
    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->right:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->right:S

    .line 97
    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->bottom:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->bottom:S

    .line 98
    return-object v0
.end method

.method public height()S
    .locals 2

    .line 89
    iget-short v0, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->bottom:S

    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public width()S
    .locals 2

    .line 85
    iget-short v0, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->right:S

    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->left:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method
