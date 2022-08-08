/*
  Warnings:

  - You are about to drop the column `stripeSubsciptionId` on the `User` table. All the data in the column will be lost.
  - Added the required column `expires` to the `Session` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Session" ADD COLUMN     "expires" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "stripeSubsciptionId",
ADD COLUMN     "stripeSubscriptionId" TEXT;
