/*
  Warnings:

  - Added the required column `location` to the `AudioFile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "AudioFile" ADD COLUMN     "location" TEXT NOT NULL;
