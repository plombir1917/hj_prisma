/*
  Warnings:

  - Added the required column `organization_id` to the `member` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "member" ADD COLUMN     "organization_id" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "member" ADD CONSTRAINT "member_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "organization"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
