/*
  Warnings:

  - You are about to drop the `CarData` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "CarData";

-- CreateTable
CREATE TABLE "Car" (
    "id" SERIAL NOT NULL,
    "brake" INTEGER NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "drs" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "n_gear" INTEGER NOT NULL,
    "rpm" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,
    "speed" INTEGER NOT NULL,
    "throttle" INTEGER NOT NULL,

    CONSTRAINT "Car_pkey" PRIMARY KEY ("id")
);
