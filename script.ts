import { PrismaClient} from '@prisma/client'

const prisma = new PrismaClient() 

// async function main() {
//     const penjual = await prisma.penjual.create({
//         data: {
//           namaToko: 'koica',
//           kontak: '08123456789',
//           toko: {
//             create: {
//               lokasi: "ganesha", // Enum value
//               jamOperasional: '08:00 - 18.00',
//               menus: {
//                 create: [
//                   {
//                     namaProduk: 'Chitato',
//                     kategoriProduk: "camilan", // Enum value
//                     harga: 5000,
//                     deskripsiProduk: 'camilan chitato.',
//                     bestSeller: false,
//                   },
//                   {
//                     namaProduk: 'Ice cream',
//                     kategoriProduk: "makanan_penutup", // Enum value
//                     harga: 3000,
//                     deskripsiProduk: 'aneka ice cream.',
//                     bestSeller: false,
//                   },
//                 ],
//               },
//             },
//           },
//         },
//       });
    
//       console.log('Penjual and associated data created:', penjual);
//     }


// main()
//   .catch((e) => {
//     console.error(e.message);
//   })
//   .finally(async () => {
//     await prisma.$disconnect();
//   }); 

