#!/usr/bin/env python3
"""Create subscriptions in Google Play Console via API."""

from google.oauth2 import service_account
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError
import json

SERVICE_ACCOUNT_FILE = "/Users/absondutragalvao/play-console-sa.json"
PACKAGE_NAME = "br.com.curujatech.listaplus"
SCOPES = ["https://www.googleapis.com/auth/androidpublisher"]

REGIONS_VERSION = "2025/03"

SUBSCRIPTIONS = [
    {
        "productId": "listaplus_monthly",
        "title": "KipiList Mensal",
        "description": "Acesso premium mensal ao KipiList",
        "basePlanId": "monthly",
        "subscription": {
            "packageName": PACKAGE_NAME,
            "productId": "listaplus_monthly",
            "listings": [
                {
                    "languageCode": "pt-BR",
                    "title": "KipiList Mensal",
                    "description": "Acesso premium mensal ao KipiList",
                    "benefits": ["Listas ilimitadas", "Sem anuncios"],
                }
            ],
            "basePlans": [
                {
                    "basePlanId": "monthly",
                    "autoRenewingBasePlanType": {
                        "billingPeriodDuration": "P1M",
                    },
                    "regionalConfigs": [
                        {
                            "regionCode": "BR",
                            "newSubscriberAvailability": True,
                            "price": {
                                "units": "4",
                                "nanos": 990000000,
                                "currencyCode": "BRL",
                            },
                        },
                    ],
                }
            ],
        },
    },
    {
        "productId": "listaplus_yearly",
        "title": "KipiList Anual",
        "description": "Acesso premium anual ao KipiList",
        "basePlanId": "yearly",
        "subscription": {
            "packageName": PACKAGE_NAME,
            "productId": "listaplus_yearly",
            "listings": [
                {
                    "languageCode": "pt-BR",
                    "title": "KipiList Anual",
                    "description": "Acesso premium anual ao KipiList",
                    "benefits": ["Listas ilimitadas", "Sem anuncios"],
                }
            ],
            "basePlans": [
                {
                    "basePlanId": "yearly",
                    "autoRenewingBasePlanType": {
                        "billingPeriodDuration": "P1Y",
                    },
                    "regionalConfigs": [
                        {
                            "regionCode": "BR",
                            "newSubscriberAvailability": True,
                            "price": {
                                "units": "29",
                                "nanos": 990000000,
                                "currencyCode": "BRL",
                            },
                        },
                    ],
                }
            ],
        },
    },
]


def subscription_exists(service, product_id):
    try:
        service.monetization().subscriptions().get(
            packageName=PACKAGE_NAME, productId=product_id
        ).execute()
        return True
    except HttpError as e:
        if e.resp.status == 404:
            return False
        print(f"  Erro check: {e}")
        return False


def activate_base_plan(service, product_id, base_plan_id):
    body = {
        "basePlanId": base_plan_id,
        "packageName": PACKAGE_NAME,
        "productId": product_id,
        "latencyTolerance": "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT",
    }
    try:
        service.monetization().subscriptions().basePlans().activate(
            packageName=PACKAGE_NAME,
            productId=product_id,
            basePlanId=base_plan_id,
            body=body,
        ).execute()
        print(f"  Base plan '{base_plan_id}' ativado!")
    except HttpError as e:
        print(f"  Erro ao ativar base plan: {e}")


def main():
    credentials = service_account.Credentials.from_service_account_file(
        SERVICE_ACCOUNT_FILE, scopes=SCOPES
    )
    service = build("androidpublisher", "v3", credentials=credentials)

    for item in SUBSCRIPTIONS:
        product_id = item["productId"]
        print(f"\n=== {item['title']} ({product_id}) ===")

        if subscription_exists(service, product_id):
            print("  Ja existe, pulando.")
            continue

        body = item["subscription"]

        try:
            result = service.monetization().subscriptions().create(
                packageName=PACKAGE_NAME,
                productId=product_id,
                regionsVersion_version=REGIONS_VERSION,
                body=body,
            ).execute()
            print(f"  Subscription criada!")
        except HttpError as e:
            details = json.loads(e.content) if e.content else {}
            print(f"  ERRO: {e}")
            if "error" in details:
                print(f"  Detalhes: {json.dumps(details['error'], indent=2)}")
            continue

        activate_base_plan(service, product_id, item["basePlanId"])

    print("\nConcluido!")


if __name__ == "__main__":
    main()
