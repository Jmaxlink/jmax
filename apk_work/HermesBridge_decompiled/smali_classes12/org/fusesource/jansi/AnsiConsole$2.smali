.class Lorg/fusesource/jansi/AnsiConsole$2;
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

    .line 297
    iput-wide p1, p0, Lorg/fusesource/jansi/AnsiConsole$2;->val$console:J

    iput-object p3, p0, Lorg/fusesource/jansi/AnsiConsole$2;->val$mode:[I

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

    .line 300
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->access$006()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-wide v0, p0, Lorg/fusesource/jansi/AnsiConsole$2;->val$console:J

    iget-object v2, p0, Lorg/fusesource/jansi/AnsiConsole$2;->val$mode:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleMode(JI)I

    .line 303
    :cond_0
    return-void
.end method
