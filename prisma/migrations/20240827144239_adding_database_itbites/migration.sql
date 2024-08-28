-- CreateTable
CREATE TABLE "Penjual" (
    "id" SERIAL NOT NULL,
    "namaToko" TEXT NOT NULL,
    "kontak" TEXT NOT NULL,

    CONSTRAINT "Penjual_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Toko" (
    "toko_id" SERIAL NOT NULL,
    "lokasi" TEXT NOT NULL,
    "jamOperasional" TEXT NOT NULL,
    "penjualId" INTEGER NOT NULL,

    CONSTRAINT "Toko_pkey" PRIMARY KEY ("toko_id")
);

-- CreateTable
CREATE TABLE "Menu" (
    "id" SERIAL NOT NULL,
    "namaProduk" TEXT NOT NULL,
    "kategoriProduk" TEXT NOT NULL,
    "harga" DOUBLE PRECISION NOT NULL,
    "deskripsiProduk" TEXT NOT NULL,
    "bestSeller" BOOLEAN NOT NULL,
    "tokoId" INTEGER NOT NULL,

    CONSTRAINT "Menu_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Toko_penjualId_key" ON "Toko"("penjualId");

-- AddForeignKey
ALTER TABLE "Toko" ADD CONSTRAINT "Toko_penjualId_fkey" FOREIGN KEY ("penjualId") REFERENCES "Penjual"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Menu" ADD CONSTRAINT "Menu_tokoId_fkey" FOREIGN KEY ("tokoId") REFERENCES "Toko"("toko_id") ON DELETE RESTRICT ON UPDATE CASCADE;
