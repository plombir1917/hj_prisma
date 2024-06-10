-- CreateTable
CREATE TABLE "answer" (
    "value" INTEGER NOT NULL,
    "member_id" TEXT NOT NULL,
    "question_iq" TEXT NOT NULL,

    CONSTRAINT "answer_pkey" PRIMARY KEY ("member_id","question_iq")
);

-- AddForeignKey
ALTER TABLE "answer" ADD CONSTRAINT "answer_member_id_fkey" FOREIGN KEY ("member_id") REFERENCES "member"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "answer" ADD CONSTRAINT "answer_question_iq_fkey" FOREIGN KEY ("question_iq") REFERENCES "question"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
