.class public Lorg/fusesource/jansi/internal/Kernel32$COORD;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COORD"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public x:S

.field public y:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 112
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 113
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->init()V

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;
    .locals 2

    .line 124
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    .line 125
    .local v0, "rc":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 126
    iget-short v1, p0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 127
    return-object v0
.end method
