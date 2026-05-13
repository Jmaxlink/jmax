.class public Lorg/fusesource/jansi/internal/CLibrary$Termios;
.super Ljava/lang/Object;
.source "CLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/CLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Termios"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public c_cc:[B

.field public c_cflag:J

.field public c_iflag:J

.field public c_ispeed:J

.field public c_lflag:J

.field public c_oflag:J

.field public c_ospeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 162
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 163
    invoke-static {}, Lorg/fusesource/jansi/internal/CLibrary$Termios;->init()V

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    return-void
.end method

.method private static native init()V
.end method
