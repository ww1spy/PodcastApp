.class final Lcom/google/android/gms/internal/zzdxj;
.super Lcom/google/android/gms/internal/zzdxk;


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzdxk;-><init>([BI)V

    return-void
.end method


# virtual methods
.method final zzbsp()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method final zzd([BI)[I
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [I

    sget-object v1, Lcom/google/android/gms/internal/zzdym;->zzmly:[I

    sget-object v2, Lcom/google/android/gms/internal/zzdxk;->zzmly:[I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0xc

    const/16 v6, 0xd

    const/4 v7, 0x3

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdxj;->zzmlz:Lcom/google/android/gms/internal/zzdyh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdyh;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdxk;->zza(Ljava/nio/ByteBuffer;)[I

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, v0, v5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdxj;->zza(Ljava/nio/ByteBuffer;)[I

    move-result-object p1

    invoke-static {p1, v3, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
