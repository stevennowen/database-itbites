/*
  Warnings:

  - Changed the type of `kategoriProduk` on the `Menu` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `lokasi` on the `Toko` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "KategoriProduk" AS ENUM ('makanan_berat', 'camilan', 'makanan_penutup', 'minuman');

-- CreateEnum
CREATE TYPE "lokasi" AS ENUM ('ganesha', 'jatinangor');

-- AlterTable
ALTER TABLE "Menu" DROP COLUMN "kategoriProduk",
ADD COLUMN     "kategoriProduk" "KategoriProduk" NOT NULL;

-- AlterTable
ALTER TABLE "Penjual" ALTER COLUMN "kontak" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Toko" DROP COLUMN "lokasi",
ADD COLUMN     "lokasi" "lokasi" NOT NULL;
