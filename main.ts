import { PrismaClient} from './generated/prisma'

const prisma = new PrismaClient()

async function main() {
    // const poder = await prisma.poder.create({
    //     data: {
    //         nome: 'Eletricidade instantânea',
    //         descricao: 'concentra raios elétricos',
    //     },
    // })
    const ser = await prisma.ser.create({
        data: {
            nome: 'Loki',
            sexo: 'Masculino',
            morto: false,
            tipo: 'DIVINDADE',
        },
    })
    const poder = await prisma.poder.create({
        data: {
            nome: 'Telepatia',
            descricao: 'Manipular pensamentos',
        },
    })
       
    const artefato = await prisma.artefato.create({
        data: {
            nome: 'Coroa Psíquica',
            objeto: 'Coroa',
            material: 'Cristal Mental',
            destruido: false,
            nomeSer: ser.nome,
        },
    })
    const relacao = await prisma.artefatoPoder.create({
        data: {
            artefatoNome: artefato.nome,
            poderId: poder.idPoder,
    },
    })
       
}

main()
