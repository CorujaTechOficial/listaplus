import {initializeApp} from "firebase-admin/app";
import {FieldValue} from "firebase-admin/firestore";
import {defineSecret} from "firebase-functions/params";
import {onDocumentCreated} from "firebase-functions/v2/firestore";

initializeApp();

const revenueCatSecret = defineSecret("REVENUECAT_SECRET_API_KEY");
const entitlementId = "kipilist_pro";

type ReferralReward = {
  referrerUid: string;
  refereeUid: string;
  days: number;
  status: string;
};

async function grantWeeklyEntitlement(
  appUserId: string,
  apiKey: string,
): Promise<void> {
  const encodedUserId = encodeURIComponent(appUserId);
  const encodedEntitlement = encodeURIComponent(entitlementId);
  const response = await fetch(
    `https://api.revenuecat.com/v1/subscribers/${encodedUserId}` +
      `/entitlements/${encodedEntitlement}/promotional`,
    {
      method: "POST",
      headers: {
        Authorization: `Bearer ${apiKey}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({duration: "weekly"}),
    },
  );

  if (!response.ok) {
    throw new Error(
      `RevenueCat grant failed (${response.status}): ${await response.text()}`,
    );
  }
}

export const awardReferral = onDocumentCreated(
  {
    document: "referralRewards/{requestId}",
    secrets: [revenueCatSecret],
  },
  async (event) => {
    const snapshot = event.data;
    if (snapshot == null) {
      return;
    }

    const reward = snapshot.data() as ReferralReward;
    if (reward.status !== "pending" || reward.days !== 7) {
      await snapshot.ref.update({
        status: "rejected",
        error: "Invalid reward request",
        processedAt: FieldValue.serverTimestamp(),
      });
      return;
    }

    try {
      const apiKey = revenueCatSecret.value();
      await grantWeeklyEntitlement(reward.refereeUid, apiKey);
      await grantWeeklyEntitlement(reward.referrerUid, apiKey);
      await snapshot.ref.update({
        status: "completed",
        processedAt: FieldValue.serverTimestamp(),
      });
    } catch (error) {
      await snapshot.ref.update({
        status: "failed",
        error: error instanceof Error ? error.message : String(error),
        processedAt: FieldValue.serverTimestamp(),
      });
      throw error;
    }
  },
);
