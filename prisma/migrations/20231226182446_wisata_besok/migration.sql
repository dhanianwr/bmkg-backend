/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `wisatabesok` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `berita` MODIFY `isi` VARCHAR(20000) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `wisatabesok_name_key` ON `wisatabesok`(`name`);
