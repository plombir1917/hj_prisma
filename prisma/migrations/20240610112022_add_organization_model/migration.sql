-- CreateTable
CREATE TABLE "organization" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "is_active" BOOLEAN NOT NULL,

    CONSTRAINT "organization_pkey" PRIMARY KEY ("id")
);
