.class public Lorg/fusesource/jansi/internal/CLibrary$WinSize;
.super Ljava/lang/Object;
.source "CLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/CLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WinSize"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public ws_col:S

.field public ws_row:S

.field public ws_xpixel:S

.field public ws_ypixel:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 131
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 132
    invoke-static {}, Lorg/fusesource/jansi/internal/CLibrary$WinSize;->init()V

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0
    .param p1, "ws_row"    # S
    .param p2, "ws_col"    # S

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-short p1, p0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;->ws_row:S

    .line 149
    iput-short p2, p0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;->ws_col:S

    .line 150
    return-void
.end method

.method private static native init()V
.end method
