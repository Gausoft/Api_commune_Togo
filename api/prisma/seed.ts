import { PrismaClient } from '@prisma/client';
import * as fs from 'fs';
import * as path from 'path';

const prisma = new PrismaClient();

const dataDirectory = path.join(__dirname, '..', '..', 'data', 'json');

// Fonction de lecture des fichiers JSON
function readJsonFile(filename) {
  const filePath = path.join(dataDirectory, filename);
  return JSON.parse(fs.readFileSync(filePath, 'utf-8'));
}

// Fonction principale de seed
async function seed() {
  try {
    // Lire et enregistrer les données des fichiers JSON
    const regions = readJsonFile('regions.json');
    const villes = readJsonFile('villes.json');
    const communes = readJsonFile('communes.json');
    const prefectures = readJsonFile('prefectures.json');
    const cantons = readJsonFile('cantons.json');

    console.log({ regions, villes, communes, prefectures, cantons });

    // Enregistrement des données dans la base de données
    await prisma.region.createMany({ data: regions });
    await prisma.city.createMany({ data: villes });
    await prisma.prefecture.createMany({ data: prefectures });
    await prisma.municipality.createMany({ data: communes });
    await prisma.canton.createMany({ data: cantons });

    console.log('Données enregistrées avec succès.');
  } catch (error) {
    console.error(
      "Une erreur s'est produite lors de l'enregistrement des données :",
      error,
    );
  } finally {
    await prisma.$disconnect();
  }
}

// execute the seed function
seed()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    // close Prisma Client at the end
    await prisma.$disconnect();
  });
