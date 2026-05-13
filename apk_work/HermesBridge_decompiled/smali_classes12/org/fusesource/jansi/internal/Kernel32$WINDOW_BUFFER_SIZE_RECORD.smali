.class public Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WINDOW_BUFFER_SIZE_RECORD"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public size:Lorg/fusesource/jansi/internal/Kernel32$COORD;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 406
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 407
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;->init()V

    .line 408
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WINDOW_BUFFER_SIZE_RECORD{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
