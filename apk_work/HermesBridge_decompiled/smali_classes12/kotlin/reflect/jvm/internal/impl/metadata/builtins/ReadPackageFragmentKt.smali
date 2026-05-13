.class public final Lkotlin/reflect/jvm/internal/impl/metadata/builtins/ReadPackageFragmentKt;
.super Ljava/lang/Object;
.source "readPackageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nreadPackageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 readPackageFragment.kt\norg/jetbrains/kotlin/metadata/builtins/ReadPackageFragmentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,23:1\n1#2:24\n*E\n"
.end annotation


# direct methods
.method public static final readBuiltinsPackageFragment(Ljava/io/InputStream;)Lkotlin/Pair;
    .locals 8
    .param p0, "$this$readBuiltinsPackageFragment"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .local v1, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 14
    .local v2, "$i$a$-use-ReadPackageFragmentKt$readBuiltinsPackageFragment$1":I
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->Companion:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion$Companion;->readFrom(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    move-result-object v3

    .line 16
    .local v3, "version":Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;->isCompatibleWithCurrentCompilerVersion()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 17
    nop

    .line 18
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->newInstance()Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    move-result-object v4

    .line 24
    move-object v6, v4

    .local v6, "p0":Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;
    const/4 v7, 0x0

    .line 18
    .local v7, "$i$a$-apply-ReadPackageFragmentKt$readBuiltinsPackageFragment$1$proto$1":I
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsProtoBuf;->registerAllExtensions(Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V

    .line 16
    .end local v6    # "p0":Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;
    .end local v7    # "$i$a$-apply-ReadPackageFragmentKt$readBuiltinsPackageFragment$1$proto$1":I
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->parseFrom(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;

    move-result-object v4

    goto :goto_0

    .line 20
    :cond_0
    move-object v4, v5

    .line 15
    :goto_0
    nop

    .line 21
    .local v4, "proto":Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "$i$a$-use-ReadPackageFragmentKt$readBuiltinsPackageFragment$1":I
    .end local v3    # "version":Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;
    .end local v4    # "proto":Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 22
    return-object v6

    .line 13
    :catchall_0
    move-exception v1

    .end local p0    # "$this$readBuiltinsPackageFragment":Ljava/io/InputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "$this$readBuiltinsPackageFragment":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
