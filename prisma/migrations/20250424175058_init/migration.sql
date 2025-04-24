/*
  Warnings:

  - Added the required column `tipo` to the `Ser` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "TipoSer" AS ENUM ('SER', 'MORTAL', 'DIVINDADE');

-- AlterTable
ALTER TABLE "Ser" ADD COLUMN     "tipo" "TipoSer" NOT NULL;

-- CreateTable
CREATE TABLE "Divindade" (
    "nomeSer" TEXT NOT NULL,
    "fraqueza" TEXT NOT NULL,
    "designacao" TEXT NOT NULL,
    "restituirVita" BOOLEAN NOT NULL,

    CONSTRAINT "Divindade_pkey" PRIMARY KEY ("nomeSer")
);

-- CreateTable
CREATE TABLE "Mortal" (
    "nomeSer" TEXT NOT NULL,
    "nascimento" TIMESTAMP(3) NOT NULL,
    "raca" TEXT NOT NULL,
    "profissao" TEXT NOT NULL,

    CONSTRAINT "Mortal_pkey" PRIMARY KEY ("nomeSer")
);

-- AddForeignKey
ALTER TABLE "Divindade" ADD CONSTRAINT "Divindade_nomeSer_fkey" FOREIGN KEY ("nomeSer") REFERENCES "Ser"("nome") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mortal" ADD CONSTRAINT "Mortal_nomeSer_fkey" FOREIGN KEY ("nomeSer") REFERENCES "Ser"("nome") ON DELETE RESTRICT ON UPDATE CASCADE;
