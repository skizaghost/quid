-- DropForeignKey
ALTER TABLE "AudioScript" DROP CONSTRAINT "AudioScript_audioFileId_fkey";

-- AlterTable
ALTER TABLE "AudioScript" ALTER COLUMN "audioFileId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "AudioScript" ADD CONSTRAINT "AudioScript_audioFileId_fkey" FOREIGN KEY ("audioFileId") REFERENCES "AudioFile"("id") ON DELETE SET NULL ON UPDATE CASCADE;
