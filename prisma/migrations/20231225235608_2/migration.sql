/*
  Warnings:

  - You are about to drop the `buletintable` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE `berita` MODIFY `isi` VARCHAR(20000) NOT NULL;

-- DropTable
DROP TABLE `buletintable`;
