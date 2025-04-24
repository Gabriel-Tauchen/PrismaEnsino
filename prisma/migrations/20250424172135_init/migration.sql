-- CreateTable
CREATE TABLE "Poder" (
    "idPoder" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,

    CONSTRAINT "Poder_pkey" PRIMARY KEY ("idPoder")
);

-- CreateTable
CREATE TABLE "Artefato" (
    "nome" TEXT NOT NULL,
    "objeto" TEXT NOT NULL,
    "material" TEXT NOT NULL,
    "destruido" BOOLEAN NOT NULL,

    CONSTRAINT "Artefato_pkey" PRIMARY KEY ("nome")
);
