-- CreateTable
CREATE TABLE "ArtefatoPoder" (
    "artefatoNome" TEXT NOT NULL,
    "poderId" INTEGER NOT NULL,

    CONSTRAINT "ArtefatoPoder_pkey" PRIMARY KEY ("artefatoNome","poderId")
);

-- AddForeignKey
ALTER TABLE "ArtefatoPoder" ADD CONSTRAINT "ArtefatoPoder_artefatoNome_fkey" FOREIGN KEY ("artefatoNome") REFERENCES "Artefato"("nome") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ArtefatoPoder" ADD CONSTRAINT "ArtefatoPoder_poderId_fkey" FOREIGN KEY ("poderId") REFERENCES "Poder"("idPoder") ON DELETE RESTRICT ON UPDATE CASCADE;
