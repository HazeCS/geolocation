# this module utilizes the geolocation api provided by - http://www.geoplugin.net/
# made by: Haze

import httpclient, json

proc geolocate*(ip: string = ""): JsonNode =
    #[`ip` parameter is optional as the api will get your ip if there is no ip given]#
    var
        client = newHttpClient()
        data = client.getContent("http://www.geoplugin.net/json.gp?ip=" & ip)
        jsonData = parseJson(data)
    return jsonData
