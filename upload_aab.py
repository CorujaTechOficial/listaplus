#!/usr/bin/env python3
"""Upload AAB to Google Play Console using service account."""

import json
import sys
from google.oauth2 import service_account
from googleapiclient.discovery import build
from googleapiclient.http import MediaFileUpload

SERVICE_ACCOUNT_FILE = "/Users/absondutragalvao/play-console-sa.json"
AAB_PATH = "/Users/absondutragalvao/corujatech projetos/shopping_list/build/app/outputs/bundle/release/app-release.aab"
PACKAGE_NAME = "br.com.curujatech.listaplus"

SCOPES = ["https://www.googleapis.com/auth/androidpublisher"]

def main():
    credentials = service_account.Credentials.from_service_account_file(
        SERVICE_ACCOUNT_FILE, scopes=SCOPES
    )
    service = build("androidpublisher", "v3", credentials=credentials)

    # 1. Cria uma edit
    edit_request = service.edits().insert(body={}, packageName=PACKAGE_NAME)
    edit_response = edit_request.execute()
    edit_id = edit_response["id"]
    print(f"Edit criada: {edit_id}")

    # 2. Upload do AAB
    media = MediaFileUpload(AAB_PATH, mimetype="application/octet-stream", resumable=True)
    bundle_request = service.edits().bundles().upload(
        packageName=PACKAGE_NAME,
        editId=edit_id,
        media_body=media,
    )
    bundle_response = bundle_request.execute()
    version_code = bundle_response["versionCode"]
    print(f"AAB enviado. Version code: {version_code}")

    # 3. Atribui ao track internal
    track_request = service.edits().tracks().update(
        packageName=PACKAGE_NAME,
        editId=edit_id,
        track="internal",
        body={
            "releases": [{
                "versionCodes": [version_code],
                "status": "completed",
                "releaseNotes": [{
                    "language": "pt-BR",
                    "text": "Novo Assistente de IA integrado (Kilo Gateway) com modo gratuito e testes com 100% de cobertura."
                }],
            }],
        },
    )
    track_response = track_request.execute()
    print(f"Track internal atualizado: {track_response['track']}")

    # 4. Commit da edit
    commit_request = service.edits().commit(
        packageName=PACKAGE_NAME, editId=edit_id,
    )
    commit_response = commit_request.execute()
    print(f"Edit commitada! Status: {commit_response.get('status')}")

if __name__ == "__main__":
    main()
