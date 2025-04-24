/*
  Warnings:

  - Added the required column `nomeSer` to the `Artefato` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Artefato" ADD COLUMN     "nomeSer" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "Ser" (
    "nome" TEXT NOT NULL,
    "sexo" TEXT NOT NULL,
    "morto" BOOLEAN NOT NULL,

    CONSTRAINT "Ser_pkey" PRIMARY KEY ("nome")
);

-- AddForeignKey
ALTER TABLE "Artefato" ADD CONSTRAINT "Artefato_nomeSer_fkey" FOREIGN KEY ("nomeSer") REFERENCES "Ser"("nome") ON DELETE RESTRICT ON UPDATE CASCADE;
