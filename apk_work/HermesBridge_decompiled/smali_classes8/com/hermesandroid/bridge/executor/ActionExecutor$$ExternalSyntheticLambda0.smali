.class public final synthetic Lcom/hermesandroid/bridge/executor/ActionExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermesandroid/bridge/executor/ActionExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->$r8$lambda$ChKR0pwCCE7GXCdhWSwhXpbjwMI(Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
