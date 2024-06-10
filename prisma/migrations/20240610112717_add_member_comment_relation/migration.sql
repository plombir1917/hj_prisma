/*
  Warnings:

  - Added the required column `member_id` to the `comment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "comment" ADD COLUMN     "member_id" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "comment" ADD CONSTRAINT "comment_member_id_fkey" FOREIGN KEY ("member_id") REFERENCES "member"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
