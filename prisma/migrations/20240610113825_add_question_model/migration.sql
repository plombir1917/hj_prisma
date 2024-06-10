-- CreateEnum
CREATE TYPE "categories" AS ENUM ('involvement', 'loyalty');

-- CreateTable
CREATE TABLE "question" (
    "id" TEXT NOT NULL,
    "category" "categories" NOT NULL,

    CONSTRAINT "question_pkey" PRIMARY KEY ("id")
);
