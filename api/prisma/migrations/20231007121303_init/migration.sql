-- CreateTable
CREATE TABLE "regions" (
    "id" SERIAL NOT NULL,
    "code" TEXT NOT NULL,
    "nom" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION,
    "longitude" DOUBLE PRECISION,
    "superficie" DOUBLE PRECISION,
    "population" INTEGER,

    CONSTRAINT "regions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cities" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "superficie" DOUBLE PRECISION,
    "population" DOUBLE PRECISION,
    "region_id" INTEGER NOT NULL,

    CONSTRAINT "cities_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "prefectures" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "chef_lieu" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION,
    "longitude" DOUBLE PRECISION,
    "region_id" INTEGER NOT NULL,

    CONSTRAINT "prefectures_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "minicipalities" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION,
    "longitude" DOUBLE PRECISION,
    "population" DOUBLE PRECISION,
    "superficie" DOUBLE PRECISION,
    "prefecture_id" INTEGER NOT NULL,

    CONSTRAINT "minicipalities_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cantons" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "prefecture_id" INTEGER NOT NULL,

    CONSTRAINT "cantons_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "regions_code_key" ON "regions"("code");

-- CreateIndex
CREATE UNIQUE INDEX "regions_nom_key" ON "regions"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "cities_nom_key" ON "cities"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "prefectures_nom_key" ON "prefectures"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "minicipalities_nom_key" ON "minicipalities"("nom");

-- AddForeignKey
ALTER TABLE "cities" ADD CONSTRAINT "cities_region_id_fkey" FOREIGN KEY ("region_id") REFERENCES "regions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prefectures" ADD CONSTRAINT "prefectures_region_id_fkey" FOREIGN KEY ("region_id") REFERENCES "regions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "minicipalities" ADD CONSTRAINT "minicipalities_prefecture_id_fkey" FOREIGN KEY ("prefecture_id") REFERENCES "prefectures"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cantons" ADD CONSTRAINT "cantons_prefecture_id_fkey" FOREIGN KEY ("prefecture_id") REFERENCES "prefectures"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
