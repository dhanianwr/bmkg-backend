/*
  Warnings:

  - You are about to alter the column `name` on the `analisiscurahhujan` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.
  - You are about to alter the column `name` on the `analisissifathujan` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.
  - You are about to alter the column `name` on the `cuacabesok` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.
  - You are about to alter the column `name` on the `cuacahariini` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.
  - You are about to alter the column `name` on the `haritanpahujan` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.
  - You are about to alter the column `name` on the `normalmusim` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.
  - You are about to alter the column `name` on the `prakiraancurahhujan` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.
  - You are about to drop the `destinasiwisata` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `wisatabesok` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE `analisiscurahhujan` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `name` DATE NOT NULL;

-- AlterTable
ALTER TABLE `analisissifathujan` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `name` DATE NOT NULL;

-- AlterTable
ALTER TABLE `berita` MODIFY `isi` VARCHAR(20000) NOT NULL;

-- AlterTable
ALTER TABLE `cuacabesok` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `name` DATE NOT NULL;

-- AlterTable
ALTER TABLE `cuacahariini` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `name` DATE NOT NULL;

-- AlterTable
ALTER TABLE `haritanpahujan` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `name` DATE NOT NULL;

-- AlterTable
ALTER TABLE `kritiksaran` ADD COLUMN `createAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `normalmusim` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `name` DATE NOT NULL;

-- AlterTable
ALTER TABLE `pegawai` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `prakiraancurahhujan` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `name` DATE NOT NULL;

-- DropTable
DROP TABLE `destinasiwisata`;

-- DropTable
DROP TABLE `wisatabesok`;

-- CreateTable
CREATE TABLE `tourism` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` DATE NOT NULL,
    `foto` VARCHAR(191) NOT NULL,
    `url` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
