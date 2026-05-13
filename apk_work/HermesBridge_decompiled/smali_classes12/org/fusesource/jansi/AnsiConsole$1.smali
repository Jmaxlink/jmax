.class Lorg/fusesource/jansi/AnsiConsole$1;
.super Ljava/lang/Object;
.source "AnsiConsole.java"

# interfaces
.implements Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fusesource/jansi/AnsiConsole;->ansiStream(Z)Lorg/fusesource/jansi/AnsiPrintStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$console:J

.field final synthetic val$mode:[I


# direct methods
.method constructor <init>(J[I)V
    .locals 0

    .line 290
    iput-wide p1, p0, Lorg/fusesource/jansi/AnsiConsole$1;->val$console:J

    iput-object p3, p0, Lorg/fusesource/jansi/AnsiConsole$1;->val$mode:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->access$008()I

    .line 294
    iget-wide v0, p0, Lorg/fusesource/jansi/AnsiConsole$1;->val$console:J

    iget-object v2, p0, Lorg/fusesource/jansi/AnsiConsole$1;->val$mode:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    or-int/lit8 v2, v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleMode(JI)I

    .line 295
    return-void
.end method
