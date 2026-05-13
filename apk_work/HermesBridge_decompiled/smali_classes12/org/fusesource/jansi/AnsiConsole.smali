.class public Lorg/fusesource/jansi/AnsiConsole;
.super Ljava/lang/Object;
.source "AnsiConsole.java"


# static fields
.field static final ENABLE_VIRTUAL_TERMINAL_PROCESSING:I = 0x4

.field static final IS_CONEMU:Z

.field static final IS_CYGWIN:Z

.field static final IS_MSYSTEM:Z

.field static final IS_WINDOWS:Z

.field public static final JANSI_COLORS:Ljava/lang/String; = "jansi.colors"

.field public static final JANSI_COLORS_16:Ljava/lang/String; = "16"

.field public static final JANSI_COLORS_256:Ljava/lang/String; = "256"

.field public static final JANSI_COLORS_TRUECOLOR:Ljava/lang/String; = "truecolor"

.field public static final JANSI_EAGER:Ljava/lang/String; = "jansi.eager"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JANSI_ERR_COLORS:Ljava/lang/String; = "jansi.err.colors"

.field public static final JANSI_ERR_MODE:Ljava/lang/String; = "jansi.err.mode"

.field public static final JANSI_FORCE:Ljava/lang/String; = "jansi.force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JANSI_GRACEFUL:Ljava/lang/String; = "jansi.graceful"

.field public static final JANSI_MODE:Ljava/lang/String; = "jansi.mode"

.field public static final JANSI_MODE_DEFAULT:Ljava/lang/String; = "default"

.field public static final JANSI_MODE_FORCE:Ljava/lang/String; = "force"

.field public static final JANSI_MODE_STRIP:Ljava/lang/String; = "strip"

.field public static final JANSI_NORESET:Ljava/lang/String; = "jansi.noreset"

.field public static final JANSI_OUT_COLORS:Ljava/lang/String; = "jansi.out.colors"

.field public static final JANSI_OUT_MODE:Ljava/lang/String; = "jansi.out.mode"

.field public static final JANSI_PASSTHROUGH:Ljava/lang/String; = "jansi.passthrough"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JANSI_STRIP:Ljava/lang/String; = "jansi.strip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static STDERR_FILENO:I

.field static STDOUT_FILENO:I

.field public static err:Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static initialized:Z

.field private static installed:I

.field public static out:Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static system_err:Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static system_out:Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static virtualProcessing:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lorg/fusesource/jansi/AnsiConsole;->system_out:Ljava/io/PrintStream;

    .line 185
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lorg/fusesource/jansi/AnsiConsole;->system_err:Ljava/io/PrintStream;

    .line 206
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_WINDOWS:Z

    .line 208
    sget-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_WINDOWS:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "PWD"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 210
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_CYGWIN:Z

    .line 212
    sget-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_WINDOWS:Z

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "MSYSTEM"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 214
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MINGW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MSYS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sput-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_MSYSTEM:Z

    .line 217
    sget-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_WINDOWS:Z

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "ConEmuPID"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    nop

    :goto_2
    sput-boolean v1, Lorg/fusesource/jansi/AnsiConsole;->IS_CONEMU:Z

    .line 222
    sput v2, Lorg/fusesource/jansi/AnsiConsole;->STDOUT_FILENO:I

    .line 224
    const/4 v0, 0x2

    sput v0, Lorg/fusesource/jansi/AnsiConsole;->STDERR_FILENO:I

    .line 228
    const-string v0, "jansi.eager"

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->initStreams()V

    .line 231
    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method static synthetic access$006()I
    .locals 1

    .line 61
    sget v0, Lorg/fusesource/jansi/AnsiConsole;->virtualProcessing:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/fusesource/jansi/AnsiConsole;->virtualProcessing:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 61
    sget v0, Lorg/fusesource/jansi/AnsiConsole;->virtualProcessing:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/fusesource/jansi/AnsiConsole;->virtualProcessing:I

    return v0
.end method

.method private static ansiStream(Z)Lorg/fusesource/jansi/AnsiPrintStream;
    .locals 30
    .param p0, "stdout"    # Z

    .line 241
    const-string v1, "TERM"

    if-eqz p0, :cond_0

    sget-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    :goto_0
    move-object v2, v0

    .line 242
    .local v2, "descriptor":Ljava/io/FileDescriptor;
    new-instance v0, Lorg/fusesource/jansi/io/FastBufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v3}, Lorg/fusesource/jansi/io/FastBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 244
    .local v3, "out":Ljava/io/OutputStream;
    if-eqz p0, :cond_1

    const-string v0, "sun.stdout.encoding"

    goto :goto_1

    :cond_1
    const-string v0, "sun.stderr.encoding"

    :goto_1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 251
    .local v15, "enc":Ljava/lang/String;
    if-eqz p0, :cond_2

    sget v0, Lorg/fusesource/jansi/AnsiConsole;->STDOUT_FILENO:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/fusesource/jansi/AnsiConsole;->STDERR_FILENO:I

    :goto_2
    move v13, v0

    .line 255
    .local v13, "fd":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v13}, Lorg/fusesource/jansi/internal/CLibrary;->isatty(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v5

    .line 256
    .local v0, "isAtty":Z
    :goto_3
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "term":Ljava/lang/String;
    const-string v7, "INSIDE_EMACS"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "emacs":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v8, "dumb"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    const-string v8, "comint"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_4

    .line 259
    const/4 v0, 0x0

    .line 261
    :cond_4
    const/4 v6, 0x0

    .line 267
    .end local v7    # "emacs":Ljava/lang/String;
    .local v6, "withException":Z
    move/from16 v16, v0

    move/from16 v17, v6

    goto :goto_4

    .line 262
    .end local v0    # "isAtty":Z
    .end local v6    # "withException":Z
    :catchall_0
    move-exception v0

    .line 265
    .local v0, "ignore":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 266
    .local v6, "isAtty":Z
    const/4 v7, 0x1

    move/from16 v16, v6

    move/from16 v17, v7

    .line 268
    .end local v0    # "ignore":Ljava/lang/Throwable;
    .end local v6    # "isAtty":Z
    .local v16, "isAtty":Z
    .local v17, "withException":Z
    :goto_4
    move/from16 v18, v16

    .line 275
    .local v18, "isatty":Z
    const/4 v6, 0x0

    if-nez v18, :cond_6

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    if-eqz v17, :cond_5

    sget-object v7, Lorg/fusesource/jansi/AnsiType;->Unsupported:Lorg/fusesource/jansi/AnsiType;

    goto :goto_5

    :cond_5
    sget-object v7, Lorg/fusesource/jansi/AnsiType;->Redirected:Lorg/fusesource/jansi/AnsiType;

    .line 278
    .local v7, "type":Lorg/fusesource/jansi/AnsiType;
    :goto_5
    move-object v8, v6

    .line 279
    .local v6, "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .local v8, "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    new-instance v9, Lorg/fusesource/jansi/io/AnsiOutputStream$ZeroWidthSupplier;

    invoke-direct {v9}, Lorg/fusesource/jansi/io/AnsiOutputStream$ZeroWidthSupplier;-><init>()V

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-object v12, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .local v9, "width":Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;
    goto/16 :goto_a

    .line 281
    .end local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    .end local v6    # "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .end local v7    # "type":Lorg/fusesource/jansi/AnsiType;
    .end local v8    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .end local v9    # "width":Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;
    :cond_6
    sget-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_WINDOWS:Z

    if-eqz v0, :cond_c

    .line 282
    if-eqz p0, :cond_7

    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    goto :goto_6

    :cond_7
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_ERROR_HANDLE:I

    :goto_6
    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v7

    .line 283
    .local v7, "console":J
    new-array v9, v4, [I

    .line 284
    .local v9, "mode":[I
    invoke-static {v7, v8, v9}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleMode(J[I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_7

    :cond_8
    move v0, v5

    :goto_7
    move v10, v0

    .line 285
    .local v10, "isConsole":Z
    if-eqz v10, :cond_9

    aget v0, v9, v5

    or-int/lit8 v0, v0, 0x4

    .line 286
    invoke-static {v7, v8, v0}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleMode(JI)I

    move-result v0

    if-eqz v0, :cond_9

    .line 287
    aget v0, v9, v5

    invoke-static {v7, v8, v0}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleMode(JI)I

    .line 288
    const/4 v0, 0x0

    .line 289
    .restart local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    sget-object v6, Lorg/fusesource/jansi/AnsiType;->VirtualTerminal:Lorg/fusesource/jansi/AnsiType;

    .line 290
    .local v6, "type":Lorg/fusesource/jansi/AnsiType;
    new-instance v11, Lorg/fusesource/jansi/AnsiConsole$1;

    invoke-direct {v11, v7, v8, v9}, Lorg/fusesource/jansi/AnsiConsole$1;-><init>(J[I)V

    .line 297
    .local v11, "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    new-instance v12, Lorg/fusesource/jansi/AnsiConsole$2;

    invoke-direct {v12, v7, v8, v9}, Lorg/fusesource/jansi/AnsiConsole$2;-><init>(J[I)V

    move-object/from16 v29, v11

    move-object v11, v6

    move-object/from16 v6, v29

    .local v12, "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    goto :goto_9

    .line 306
    .end local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    .end local v6    # "type":Lorg/fusesource/jansi/AnsiType;
    .end local v11    # "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .end local v12    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    :cond_9
    sget-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_CONEMU:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_CYGWIN:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lorg/fusesource/jansi/AnsiConsole;->IS_MSYSTEM:Z

    if-eqz v0, :cond_b

    :cond_a
    if-nez v10, :cond_b

    .line 308
    const/4 v0, 0x0

    .line 309
    .restart local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    sget-object v11, Lorg/fusesource/jansi/AnsiType;->Native:Lorg/fusesource/jansi/AnsiType;

    .line 310
    .local v11, "type":Lorg/fusesource/jansi/AnsiType;
    move-object v12, v6

    .local v6, "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .restart local v12    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    goto :goto_9

    .line 318
    .end local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    .end local v6    # "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .end local v11    # "type":Lorg/fusesource/jansi/AnsiType;
    .end local v12    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    :cond_b
    :try_start_1
    new-instance v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;

    invoke-direct {v0, v3, v7, v8}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;-><init>(Ljava/io/OutputStream;J)V

    .line 319
    .local v0, "proc":Lorg/fusesource/jansi/io/AnsiProcessor;
    sget-object v11, Lorg/fusesource/jansi/AnsiType;->Emulation:Lorg/fusesource/jansi/AnsiType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    .local v11, "ttype":Lorg/fusesource/jansi/AnsiType;
    goto :goto_8

    .line 320
    .end local v0    # "proc":Lorg/fusesource/jansi/io/AnsiProcessor;
    .end local v11    # "ttype":Lorg/fusesource/jansi/AnsiType;
    :catchall_1
    move-exception v0

    .line 323
    .local v0, "ignore":Ljava/lang/Throwable;
    new-instance v11, Lorg/fusesource/jansi/io/AnsiProcessor;

    invoke-direct {v11, v3}, Lorg/fusesource/jansi/io/AnsiProcessor;-><init>(Ljava/io/OutputStream;)V

    .line 324
    .local v11, "proc":Lorg/fusesource/jansi/io/AnsiProcessor;
    sget-object v12, Lorg/fusesource/jansi/AnsiType;->Unsupported:Lorg/fusesource/jansi/AnsiType;

    move-object v0, v11

    move-object v11, v12

    .line 326
    .local v0, "proc":Lorg/fusesource/jansi/io/AnsiProcessor;
    .local v11, "ttype":Lorg/fusesource/jansi/AnsiType;
    :goto_8
    move-object v12, v0

    .line 327
    .local v12, "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    move-object v14, v11

    .line 328
    .local v14, "type":Lorg/fusesource/jansi/AnsiType;
    move-object/from16 v19, v6

    .local v19, "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    move-object/from16 v12, v19

    .line 330
    .end local v14    # "type":Lorg/fusesource/jansi/AnsiType;
    .end local v19    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .local v0, "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    .restart local v6    # "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .local v11, "type":Lorg/fusesource/jansi/AnsiType;
    .local v12, "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    :goto_9
    new-instance v14, Lorg/fusesource/jansi/AnsiConsole$3;

    invoke-direct {v14, v7, v8}, Lorg/fusesource/jansi/AnsiConsole$3;-><init>(J)V

    move-object v9, v14

    .line 338
    .end local v7    # "console":J
    .end local v10    # "isConsole":Z
    .local v9, "width":Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;
    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-object/from16 v22, v9

    move-object/from16 v21, v12

    move-object v12, v11

    goto :goto_a

    .line 343
    .end local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    .end local v6    # "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .end local v9    # "width":Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;
    .end local v11    # "type":Lorg/fusesource/jansi/AnsiType;
    .end local v12    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    :cond_c
    const/4 v0, 0x0

    .line 344
    .restart local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    sget-object v7, Lorg/fusesource/jansi/AnsiType;->Native:Lorg/fusesource/jansi/AnsiType;

    .line 345
    .local v7, "type":Lorg/fusesource/jansi/AnsiType;
    move-object v8, v6

    .line 346
    .restart local v6    # "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .restart local v8    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    new-instance v9, Lorg/fusesource/jansi/AnsiConsole$4;

    invoke-direct {v9, v13}, Lorg/fusesource/jansi/AnsiConsole$4;-><init>(I)V

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-object v12, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 359
    .end local v0    # "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    .end local v6    # "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .end local v7    # "type":Lorg/fusesource/jansi/AnsiType;
    .end local v8    # "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .local v12, "type":Lorg/fusesource/jansi/AnsiType;
    .local v19, "processor":Lorg/fusesource/jansi/io/AnsiProcessor;
    .local v20, "installer":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .local v21, "uninstaller":Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .local v22, "width":Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;
    :goto_a
    if-eqz p0, :cond_d

    const-string v0, "jansi.out.mode"

    goto :goto_b

    :cond_d
    const-string v0, "jansi.err.mode"

    :goto_b
    const-string v6, "jansi.mode"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, "jansiMode":Ljava/lang/String;
    const-string v0, "force"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 361
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Force:Lorg/fusesource/jansi/AnsiMode;

    move-object/from16 v23, v0

    .local v0, "mode":Lorg/fusesource/jansi/AnsiMode;
    goto :goto_e

    .line 362
    .end local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    :cond_e
    const-string v0, "strip"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 363
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Strip:Lorg/fusesource/jansi/AnsiMode;

    move-object/from16 v23, v0

    .restart local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    goto :goto_e

    .line 364
    .end local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    :cond_f
    if-eqz v11, :cond_11

    .line 365
    if-eqz v18, :cond_10

    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Default:Lorg/fusesource/jansi/AnsiMode;

    goto :goto_c

    :cond_10
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Strip:Lorg/fusesource/jansi/AnsiMode;

    :goto_c
    move-object/from16 v23, v0

    .restart local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    goto :goto_e

    .line 370
    .end local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    :cond_11
    const-string v0, "jansi.passthrough"

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 371
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Force:Lorg/fusesource/jansi/AnsiMode;

    move-object/from16 v23, v0

    .restart local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    goto :goto_e

    .line 376
    .end local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    :cond_12
    const-string v0, "jansi.strip"

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 377
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Strip:Lorg/fusesource/jansi/AnsiMode;

    move-object/from16 v23, v0

    .restart local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    goto :goto_e

    .line 382
    .end local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    :cond_13
    const-string v0, "jansi.force"

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 383
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Force:Lorg/fusesource/jansi/AnsiMode;

    move-object/from16 v23, v0

    .restart local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    goto :goto_e

    .line 387
    .end local v0    # "mode":Lorg/fusesource/jansi/AnsiMode;
    :cond_14
    if-eqz v18, :cond_15

    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Default:Lorg/fusesource/jansi/AnsiMode;

    goto :goto_d

    :cond_15
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Strip:Lorg/fusesource/jansi/AnsiMode;

    :goto_d
    move-object/from16 v23, v0

    .line 394
    .local v23, "mode":Lorg/fusesource/jansi/AnsiMode;
    :goto_e
    if-eqz p0, :cond_16

    const-string v0, "jansi.out.colors"

    goto :goto_f

    :cond_16
    const-string v0, "jansi.err.colors"

    :goto_f
    const-string v6, "jansi.colors"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "jansiColors":Ljava/lang/String;
    const-string v0, "truecolor"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 396
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->TrueColor:Lorg/fusesource/jansi/AnsiColors;

    move-object v1, v0

    .local v0, "colors":Lorg/fusesource/jansi/AnsiColors;
    goto :goto_10

    .line 397
    .end local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    :cond_17
    const-string v6, "256"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 398
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->Colors256:Lorg/fusesource/jansi/AnsiColors;

    move-object v1, v0

    .restart local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    goto :goto_10

    .line 399
    .end local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    :cond_18
    if-eqz v10, :cond_19

    .line 400
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->Colors16:Lorg/fusesource/jansi/AnsiColors;

    move-object v1, v0

    .restart local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    goto :goto_10

    .line 405
    .end local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    :cond_19
    const-string v6, "COLORTERM"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "colorterm":Ljava/lang/String;
    if-eqz v6, :cond_1b

    .line 406
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "24bit"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 407
    :cond_1a
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->TrueColor:Lorg/fusesource/jansi/AnsiColors;

    move-object v1, v0

    .restart local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    goto :goto_10

    .line 411
    .end local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    :cond_1b
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "term":Ljava/lang/String;
    if-eqz v0, :cond_1c

    const-string v0, "-direct"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 412
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->TrueColor:Lorg/fusesource/jansi/AnsiColors;

    move-object v1, v0

    .restart local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    goto :goto_10

    .line 416
    .end local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    :cond_1c
    if-eqz v1, :cond_1d

    const-string v0, "-256color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 417
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->Colors256:Lorg/fusesource/jansi/AnsiColors;

    move-object v1, v0

    .restart local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    goto :goto_10

    .line 422
    .end local v0    # "colors":Lorg/fusesource/jansi/AnsiColors;
    :cond_1d
    sget-object v0, Lorg/fusesource/jansi/AnsiColors;->Colors16:Lorg/fusesource/jansi/AnsiColors;

    move-object v1, v0

    .line 427
    .end local v7    # "colorterm":Ljava/lang/String;
    .local v1, "colors":Lorg/fusesource/jansi/AnsiColors;
    :goto_10
    sget-object v0, Lorg/fusesource/jansi/AnsiType;->Unsupported:Lorg/fusesource/jansi/AnsiType;

    if-eq v12, v0, :cond_1e

    const-string v0, "jansi.noreset"

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    move v14, v4

    goto :goto_11

    :cond_1e
    move v14, v5

    .line 429
    .local v14, "resetAtUninstall":Z
    :goto_11
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    .line 430
    .local v4, "cs":Ljava/nio/charset/Charset;
    if-eqz v15, :cond_1f

    .line 432
    :try_start_2
    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v0

    .line 434
    goto :goto_12

    .line 433
    :catch_0
    move-exception v0

    .line 436
    :cond_1f
    move-object v0, v4

    .end local v4    # "cs":Ljava/nio/charset/Charset;
    .local v0, "cs":Ljava/nio/charset/Charset;
    :goto_12
    new-instance v9, Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-object v4, v9

    move-object v5, v3

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v19

    move-object/from16 v24, v2

    move-object v2, v9

    .end local v2    # "descriptor":Ljava/io/FileDescriptor;
    .local v24, "descriptor":Ljava/io/FileDescriptor;
    move-object v9, v12

    move-object/from16 v25, v10

    .end local v10    # "jansiColors":Ljava/lang/String;
    .local v25, "jansiColors":Ljava/lang/String;
    move-object v10, v1

    move-object/from16 v26, v11

    .end local v11    # "jansiMode":Ljava/lang/String;
    .local v26, "jansiMode":Ljava/lang/String;
    move-object v11, v0

    move-object/from16 v27, v12

    .end local v12    # "type":Lorg/fusesource/jansi/AnsiType;
    .local v27, "type":Lorg/fusesource/jansi/AnsiType;
    move-object/from16 v12, v20

    move/from16 v28, v13

    .end local v13    # "fd":I
    .local v28, "fd":I
    move-object/from16 v13, v21

    invoke-direct/range {v4 .. v14}, Lorg/fusesource/jansi/io/AnsiOutputStream;-><init>(Ljava/io/OutputStream;Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;Lorg/fusesource/jansi/AnsiMode;Lorg/fusesource/jansi/io/AnsiProcessor;Lorg/fusesource/jansi/AnsiType;Lorg/fusesource/jansi/AnsiColors;Ljava/nio/charset/Charset;Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;Z)V

    .line 437
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v2, v4}, Lorg/fusesource/jansi/AnsiConsole;->newPrintStream(Lorg/fusesource/jansi/io/AnsiOutputStream;Ljava/lang/String;)Lorg/fusesource/jansi/AnsiPrintStream;

    move-result-object v2

    return-object v2
.end method

.method public static err()Lorg/fusesource/jansi/AnsiPrintStream;
    .locals 1

    .line 492
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->initStreams()V

    .line 493
    sget-object v0, Lorg/fusesource/jansi/AnsiConsole;->err:Ljava/io/PrintStream;

    check-cast v0, Lorg/fusesource/jansi/AnsiPrintStream;

    return-object v0
.end method

.method static getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, "result":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 457
    .end local v1    # "val":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 456
    :catch_0
    move-exception v1

    goto :goto_3

    .line 455
    :catch_1
    move-exception v1

    goto :goto_2

    .line 458
    :goto_3
    return v0
.end method

.method public static getTerminalWidth()I
    .locals 2

    .line 199
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->out()Lorg/fusesource/jansi/AnsiPrintStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/AnsiPrintStream;->getTerminalWidth()I

    move-result v0

    .line 200
    .local v0, "w":I
    if-gtz v0, :cond_0

    .line 201
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->err()Lorg/fusesource/jansi/AnsiPrintStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fusesource/jansi/AnsiPrintStream;->getTerminalWidth()I

    move-result v0

    .line 203
    :cond_0
    return v0
.end method

.method static declared-synchronized initStreams()V
    .locals 3

    const-class v0, Lorg/fusesource/jansi/AnsiConsole;

    monitor-enter v0

    .line 557
    :try_start_0
    sget-boolean v1, Lorg/fusesource/jansi/AnsiConsole;->initialized:Z

    if-nez v1, :cond_0

    .line 559
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/fusesource/jansi/AnsiConsole;->ansiStream(Z)Lorg/fusesource/jansi/AnsiPrintStream;

    move-result-object v2

    sput-object v2, Lorg/fusesource/jansi/AnsiConsole;->out:Ljava/io/PrintStream;

    .line 560
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/fusesource/jansi/AnsiConsole;->ansiStream(Z)Lorg/fusesource/jansi/AnsiPrintStream;

    move-result-object v2

    sput-object v2, Lorg/fusesource/jansi/AnsiConsole;->err:Ljava/io/PrintStream;

    .line 561
    sput-boolean v1, Lorg/fusesource/jansi/AnsiConsole;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_0
    monitor-exit v0

    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isInstalled()Z
    .locals 2

    const-class v0, Lorg/fusesource/jansi/AnsiConsole;

    monitor-enter v0

    .line 529
    :try_start_0
    sget v1, Lorg/fusesource/jansi/AnsiConsole;->installed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 529
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static newPrintStream(Lorg/fusesource/jansi/io/AnsiOutputStream;Ljava/lang/String;)Lorg/fusesource/jansi/AnsiPrintStream;
    .locals 2
    .param p0, "out"    # Lorg/fusesource/jansi/io/AnsiOutputStream;
    .param p1, "enc"    # Ljava/lang/String;

    .line 441
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 443
    :try_start_0
    new-instance v1, Lorg/fusesource/jansi/AnsiPrintStream;

    invoke-direct {v1, p0, v0, p1}, Lorg/fusesource/jansi/AnsiPrintStream;-><init>(Lorg/fusesource/jansi/io/AnsiOutputStream;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 444
    :catch_0
    move-exception v1

    .line 447
    :cond_0
    new-instance v1, Lorg/fusesource/jansi/AnsiPrintStream;

    invoke-direct {v1, p0, v0}, Lorg/fusesource/jansi/AnsiPrintStream;-><init>(Lorg/fusesource/jansi/io/AnsiOutputStream;Z)V

    return-object v1
.end method

.method public static out()Lorg/fusesource/jansi/AnsiPrintStream;
    .locals 1

    .line 470
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->initStreams()V

    .line 471
    sget-object v0, Lorg/fusesource/jansi/AnsiConsole;->out:Ljava/io/PrintStream;

    check-cast v0, Lorg/fusesource/jansi/AnsiPrintStream;

    return-object v0
.end method

.method public static sysErr()Ljava/io/PrintStream;
    .locals 1

    .line 502
    sget-object v0, Lorg/fusesource/jansi/AnsiConsole;->system_err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static sysOut()Ljava/io/PrintStream;
    .locals 1

    .line 480
    sget-object v0, Lorg/fusesource/jansi/AnsiConsole;->system_out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static declared-synchronized systemInstall()V
    .locals 3

    const-class v0, Lorg/fusesource/jansi/AnsiConsole;

    monitor-enter v0

    .line 511
    :try_start_0
    sget v1, Lorg/fusesource/jansi/AnsiConsole;->installed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lorg/fusesource/jansi/AnsiConsole;->installed:I

    .line 512
    sget v1, Lorg/fusesource/jansi/AnsiConsole;->installed:I

    if-ne v1, v2, :cond_0

    .line 513
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->initStreams()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :try_start_1
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->out:Ljava/io/PrintStream;

    check-cast v1, Lorg/fusesource/jansi/AnsiPrintStream;

    invoke-virtual {v1}, Lorg/fusesource/jansi/AnsiPrintStream;->install()V

    .line 516
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->err:Ljava/io/PrintStream;

    check-cast v1, Lorg/fusesource/jansi/AnsiPrintStream;

    invoke-virtual {v1}, Lorg/fusesource/jansi/AnsiPrintStream;->install()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    nop

    .line 520
    :try_start_2
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 521
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized systemUninstall()V
    .locals 3

    const-class v0, Lorg/fusesource/jansi/AnsiConsole;

    monitor-enter v0

    .line 538
    :try_start_0
    sget v1, Lorg/fusesource/jansi/AnsiConsole;->installed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/fusesource/jansi/AnsiConsole;->installed:I

    .line 539
    sget v1, Lorg/fusesource/jansi/AnsiConsole;->installed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 541
    :try_start_1
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->out:Ljava/io/PrintStream;

    check-cast v1, Lorg/fusesource/jansi/AnsiPrintStream;

    invoke-virtual {v1}, Lorg/fusesource/jansi/AnsiPrintStream;->uninstall()V

    .line 542
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->err:Ljava/io/PrintStream;

    check-cast v1, Lorg/fusesource/jansi/AnsiPrintStream;

    invoke-virtual {v1}, Lorg/fusesource/jansi/AnsiPrintStream;->uninstall()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    nop

    .line 546
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lorg/fusesource/jansi/AnsiConsole;->initialized:Z

    .line 547
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->system_out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 548
    sget-object v1, Lorg/fusesource/jansi/AnsiConsole;->system_err:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
