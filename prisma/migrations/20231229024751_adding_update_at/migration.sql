/*
  Warnings:

  - Added the required column `updatedAt` to the `analisiscurahhujan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `analisissifathujan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `berita` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `BuletinTable` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `cuacabesok` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `cuacahariini` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `haritanpahujan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `kritiksaran` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `normalmusim` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `pegawai` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `peringatandini` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `prakiraancurahhujan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `tourism` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `analisiscurahhujan` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `analisissifathujan` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `berita` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL,
    MODIFY `isi` VARCHAR(20000) NOT NULL;

-- AlterTable
ALTER TABLE `buletintable` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `cuacabesok` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `cuacahariini` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `haritanpahujan` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `image` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `kritiksaran` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `normalmusim` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `pegawai` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `peringatandini` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `prakiraancurahhujan` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `tourism` ADD COLUMN `updatedAt` DATETIME(3) NOT NULL;
