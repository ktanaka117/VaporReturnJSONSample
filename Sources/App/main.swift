import Vapor
import JSON

let drop = Droplet()

drop.get("json") { request in
    let json = try JSON(node: [
        "name": "Tanaka Kenji",
        "nickName": "ダンボー田中",
        "age": 23
        ]
    )
    
    return json
}

drop.run()
