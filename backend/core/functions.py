import requests
from .settings import BOT_AUTH_API, BOTSERVICE_URL
import uuid


def BotSerializer(payload):
    """  Bot API Serializer  """

    nonce = uuid.uuid4().hex
    data = {
        "key": BOT_AUTH_API["key"],
        "resource": BOT_AUTH_API["resource"],
        "mode": BOT_AUTH_API["mode"],
        "nonce": nonce,
        "payload": payload
    }
    
    return data


def BotPostRequest(path, payload):
    """  Bot Post Request """

    data = BotSerializer(payload)

    try:
        url = BOTSERVICE_URL + path
        r = requests.post(url, json=data)
        r.raise_for_status()
        return {"status": True, "request": r}
    except requests.exceptions.HTTPError as errh:
        print("Http Error:", errh)
        return {"status": False, "error": "Http Error:" + errh}
    except requests.exceptions.ConnectionError as errc:
        print("Error Connecting:", errc)
        return {"status": False, "error": "Error Connecting:" + str(errc)}
    except requests.exceptions.Timeout as errt:
        print("Timeout Error:", errt)
        return {"status": False, "error": "Timeout Error:" + errt}
    except requests.exceptions.RequestException as err:
        print("OOps: Something Else", err)
        return {"status": False, "error": "OOps: Something Else:" + err}
