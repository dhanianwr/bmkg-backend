/*
  Warnings:

  - You are about to alter the column `tanggal` on the `peringatandini` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Date`.

*/
-- AlterTable
ALTER TABLE `berita` MODIFY `isi` VARCHAR(20000) NOT NULL;

-- AlterTable
ALTER TABLE `peringatandini` MODIFY `tanggal` DATE NOT NULL;
