/*
  Warnings:

  - A unique constraint covering the columns `[nome]` on the table `Poder` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
CREATE SEQUENCE poder_idpoder_seq;
ALTER TABLE "Poder" ALTER COLUMN "idPoder" SET DEFAULT nextval('poder_idpoder_seq');
ALTER SEQUENCE poder_idpoder_seq OWNED BY "Poder"."idPoder";

-- CreateIndex
CREATE UNIQUE INDEX "Poder_nome_key" ON "Poder"("nome");
