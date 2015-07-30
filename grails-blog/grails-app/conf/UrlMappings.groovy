class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/postpage/view/$id?/$title?"(controller:'postpage', action:'view')
        "/"(view:"/index")
        "500"(view:'/error')
	}
}
