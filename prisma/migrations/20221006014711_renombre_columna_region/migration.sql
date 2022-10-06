/*
  Warnings:

  - You are about to drop the column `regionId` on the `votantes` table. All the data in the column will be lost.
  - Added the required column `region_id` to the `votantes` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `votantes` DROP FOREIGN KEY `votantes_regionId_fkey`;

-- AlterTable
ALTER TABLE `votantes` DROP COLUMN `regionId`,
    ADD COLUMN `region_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `votantes` ADD CONSTRAINT `votantes_region_id_fkey` FOREIGN KEY (`region_id`) REFERENCES `regiones`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
