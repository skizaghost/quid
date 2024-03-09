-- CreateTable
CREATE TABLE "AudioScript" (
    "id" SERIAL NOT NULL,
    "script" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "audioFileId" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "AudioScript_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "AudioScript" ADD CONSTRAINT "AudioScript_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AudioScript" ADD CONSTRAINT "AudioScript_audioFileId_fkey" FOREIGN KEY ("audioFileId") REFERENCES "AudioFile"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
