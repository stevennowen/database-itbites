import { PrismaClient} from '@prisma/client'

const prisma = new PrismaClient()

async function deletePenjualAndRelated(penjualIds: number[]) {
    for (const penjualId of penjualIds) {
      // Find the associated Toko and Menu
      const toko = await prisma.toko.findUnique({
        where: { penjualId },
        include: { menus: true },
      });
  
      if (toko) {
        // Delete related Menu records
        await prisma.menu.deleteMany({
          where: { tokoId: toko.toko_id },
        });
  
        // Delete the Toko record
        await prisma.toko.delete({
          where: { toko_id: toko.toko_id },
        });
      }
  
      // Delete the Penjual record
      await prisma.penjual.delete({
        where: { id: penjualId },
      });
  
      console.log(`Penjual with ID ${penjualId} and related records have been deleted`);
    }
  }
  
  deletePenjualAndRelated([])