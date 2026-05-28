#!/usr/bin/env python3
"""Update subscription prices in Google Play Console via API."""

from google.oauth2 import service_account
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError
import json

SERVICE_ACCOUNT_FILE = "/Users/absondutragalvao/play-console-sa.json"
PACKAGE_NAME = "br.com.curujatech.listaplus"
SCOPES = ["https://www.googleapis.com/auth/androidpublisher"]

NEW_PRICES = {
    "listaplus_monthly": {
        "basePlanId": "monthly",
        "units": "4",
        "nanos": 990000000,
    },
    "listaplus_yearly": {
        "basePlanId": "yearly",
        "units": "29",
        "nanos": 990000000,
    },
}


def get_subscription(service, product_id):
    try:
        return service.monetization().subscriptions().get(
            packageName=PACKAGE_NAME, productId=product_id
        ).execute()
    except HttpError as e:
        print(f"  Erro ao buscar {product_id}: {e}")
        return None


def update_price_via_patch(service, product_id, base_plan_id, new_price):
    sub = get_subscription(service, product_id)
    if not sub:
        return False

    price_brl = {
        "units": new_price["units"],
        "nanos": new_price["nanos"],
        "currencyCode": "BRL",
    }

    base_plans = sub.get("basePlans", [])
    for bp in base_plans:
        if bp.get("basePlanId") == base_plan_id:
            regional_configs = bp.get("regionalConfigs", [])
            for rc in regional_configs:
                if rc.get("regionCode") == "BR":
                    rc["price"] = price_brl
                    rc["newSubscriberAvailability"] = True
                    break
            break

    update_mask = "basePlans"

    try:
        service.monetization().subscriptions().patch(
            packageName=PACKAGE_NAME,
            productId=product_id,
            updateMask=update_mask,
            regionsVersion_version="2025/03",
            latencyTolerance="PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT",
            body=sub,
        ).execute()
        return True
    except HttpError as e:
        print(f"  ERRO patch: {e}")
        if e.content:
            try:
                details = json.loads(e.content)
                print(f"  Detalhes: {json.dumps(details, indent=2)}")
            except json.JSONDecodeError:
                pass
        return False


def main():
    credentials = service_account.Credentials.from_service_account_file(
        SERVICE_ACCOUNT_FILE, scopes=SCOPES
    )
    service = build("androidpublisher", "v3", credentials=credentials)

    for product_id, info in NEW_PRICES.items():
        price_br = f"R$ {info['units']},{info['nanos'] // 10000000:02d}"
        print(f"\n=== {product_id} → {price_br} ===")

        sub = get_subscription(service, product_id)
        if not sub:
            print("  Subscription nao encontrada, pulando.")
            continue

        base_plan_id = info["basePlanId"]
        print(f"  Atualizando preco do basePlan '{base_plan_id}'...")

        ok = update_price_via_patch(service, product_id, base_plan_id, info)
        if ok:
            print(f"  OK: {product_id} atualizado para {price_br}")
        else:
            print(f"  FALHA ao atualizar {product_id}")

    print("\nConcluido!")


if __name__ == "__main__":
    main()
