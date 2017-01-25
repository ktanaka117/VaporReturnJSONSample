import Vapor
import JSON

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())

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
