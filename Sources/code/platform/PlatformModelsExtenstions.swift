import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif













public extension PlatformClient.Catalog.ActionPage {
    
    static func convertURLToAction(urlString: String) -> PlatformClient.Catalog.ActionPage? {
        return PlatformClient.Catalog.ActionPage(urlString: urlString)
    }

    convenience init?(urlString: String) {
        let url = urlString
        var query: [String: [String]] = [:]
        var params: [String: [String]] = [:]
        var urlComp = URLComponents(string: urlString)
        if urlComp?.scheme == nil {
            urlComp = URLComponents(string: "https://\(urlString)")
        }
        guard let urlComponents = urlComp else { return nil }
        guard let type = PlatformClient.Catalog.PageType(path: urlComponents.percentEncodedPath) else { return nil }
        for item in urlComponents.queryItems ?? [] {
            if let queryValue = item.value {
                if var list = query[item.name] {
                    list.append(queryValue)
                    query[item.name] = list
                } else {
                    query[item.name] = [queryValue]
                }
            }
        }
        for param in type.queryParams {
            if param.required && query[param.name] == nil {
                return nil
            }
        }
        let components = urlComponents.percentEncodedPath.components(separatedBy: "/").map{ $0.removingPercentEncoding ?? $0}
        let symbolic = URLComponents(string: type.link)?.percentEncodedPath.components(separatedBy: "/") ?? []
        for paramSpec in type.pathParams {
            if let i = symbolic.firstIndex(of: ":\(paramSpec.name)") {
                let index = Int(i)
                if let value = components.getIfExists(index: index) {
                    let splitVal = value.components(separatedBy: ":::")
                    if splitVal.count > 1 {
                        params[paramSpec.name] = splitVal
                    } else {
                        params[paramSpec.name] = [value]
                    }
                } else if paramSpec.required {
                    return nil
                }
            } else if paramSpec.required {
                return nil
            }
        }
        self.init(params: params, query: query, type: type, url: url)
    }
    
    func getURL() -> String? {
        var urlParts = type.link.components(separatedBy: "/")
        for paramSpec in type.pathParams {
            if let index = urlParts.firstIndex(of: ":\(paramSpec.name)") {
              if let value = self.params?[paramSpec.name] {
                if value.isEmpty {
                    return nil
                } else if value.count == 1 {
                    urlParts[index] = value[0].addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? value[0]
                } else {
                    urlParts[index] = value
                        .map{$0.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? $0}
                        .joined(separator: ":::")
                }
              } else if paramSpec.required {
                return nil
              } else {
                urlParts.remove(at: index)
              }
            } else if paramSpec.required {
                return nil
            }
        }
        for q in type.queryParams {
            if q.required {
                if let value = self.query?[q.name],
                   value.isEmpty {
                    return nil
                } else if self.query?[q.name] == nil {
                    return nil
                }
            }
        }
        var queryString: String?
        for (key, value) in self.query ?? [:] {
            var text = ""
            for val in value {
                text += "\(key)=\((val.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? ""))&"
            }
            queryString = (queryString ?? "?") + text
        }
        let finalUrl = urlParts.joined(separator: "/") + (queryString?.dropLast() ?? "")
        return finalUrl
    }
}



public extension PlatformClient.ApplicationClient.Catalog.ActionPage {
    
    static func convertURLToAction(urlString: String) -> PlatformClient.ApplicationClient.Catalog.ActionPage? {
        return PlatformClient.ApplicationClient.Catalog.ActionPage(urlString: urlString)
    }

    convenience init?(urlString: String) {
        let url = urlString
        var query: [String: [String]] = [:]
        var params: [String: [String]] = [:]
        var urlComp = URLComponents(string: urlString)
        if urlComp?.scheme == nil {
            urlComp = URLComponents(string: "https://\(urlString)")
        }
        guard let urlComponents = urlComp else { return nil }
        guard let type = PlatformClient.ApplicationClient.Catalog.PageType(path: urlComponents.percentEncodedPath) else { return nil }
        for item in urlComponents.queryItems ?? [] {
            if let queryValue = item.value {
                if var list = query[item.name] {
                    list.append(queryValue)
                    query[item.name] = list
                } else {
                    query[item.name] = [queryValue]
                }
            }
        }
        for param in type.queryParams {
            if param.required && query[param.name] == nil {
                return nil
            }
        }
        let components = urlComponents.percentEncodedPath.components(separatedBy: "/").map{ $0.removingPercentEncoding ?? $0}
        let symbolic = URLComponents(string: type.link)?.percentEncodedPath.components(separatedBy: "/") ?? []
        for paramSpec in type.pathParams {
            if let i = symbolic.firstIndex(of: ":\(paramSpec.name)") {
                let index = Int(i)
                if let value = components.getIfExists(index: index) {
                    let splitVal = value.components(separatedBy: ":::")
                    if splitVal.count > 1 {
                        params[paramSpec.name] = splitVal
                    } else {
                        params[paramSpec.name] = [value]
                    }
                } else if paramSpec.required {
                    return nil
                }
            } else if paramSpec.required {
                return nil
            }
        }
        self.init(params: params, query: query, type: type, url: url)
    }
    
    func getURL() -> String? {
        var urlParts = type.link.components(separatedBy: "/")
        for paramSpec in type.pathParams {
            if let index = urlParts.firstIndex(of: ":\(paramSpec.name)") {
              if let value = self.params?[paramSpec.name] {
                if value.isEmpty {
                    return nil
                } else if value.count == 1 {
                    urlParts[index] = value[0].addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? value[0]
                } else {
                    urlParts[index] = value
                        .map{$0.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? $0}
                        .joined(separator: ":::")
                }
              } else if paramSpec.required {
                return nil
              } else {
                urlParts.remove(at: index)
              }
            } else if paramSpec.required {
                return nil
            }
        }
        for q in type.queryParams {
            if q.required {
                if let value = self.query?[q.name],
                   value.isEmpty {
                    return nil
                } else if self.query?[q.name] == nil {
                    return nil
                }
            }
        }
        var queryString: String?
        for (key, value) in self.query ?? [:] {
            var text = ""
            for val in value {
                text += "\(key)=\((val.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? ""))&"
            }
            queryString = (queryString ?? "?") + text
        }
        let finalUrl = urlParts.joined(separator: "/") + (queryString?.dropLast() ?? "")
        return finalUrl
    }
}















public extension PlatformClient.Content.ActionPage {
    
    static func convertURLToAction(urlString: String) -> PlatformClient.Content.ActionPage? {
        return PlatformClient.Content.ActionPage(urlString: urlString)
    }

    convenience init?(urlString: String) {
        let url = urlString
        var query: [String: [String]] = [:]
        var params: [String: [String]] = [:]
        var urlComp = URLComponents(string: urlString)
        if urlComp?.scheme == nil {
            urlComp = URLComponents(string: "https://\(urlString)")
        }
        guard let urlComponents = urlComp else { return nil }
        guard let type = PlatformClient.Content.PageType(path: urlComponents.percentEncodedPath) else { return nil }
        for item in urlComponents.queryItems ?? [] {
            if let queryValue = item.value {
                if var list = query[item.name] {
                    list.append(queryValue)
                    query[item.name] = list
                } else {
                    query[item.name] = [queryValue]
                }
            }
        }
        for param in type.queryParams {
            if param.required && query[param.name] == nil {
                return nil
            }
        }
        let components = urlComponents.percentEncodedPath.components(separatedBy: "/").map{ $0.removingPercentEncoding ?? $0}
        let symbolic = URLComponents(string: type.link)?.percentEncodedPath.components(separatedBy: "/") ?? []
        for paramSpec in type.pathParams {
            if let i = symbolic.firstIndex(of: ":\(paramSpec.name)") {
                let index = Int(i)
                if let value = components.getIfExists(index: index) {
                    let splitVal = value.components(separatedBy: ":::")
                    if splitVal.count > 1 {
                        params[paramSpec.name] = splitVal
                    } else {
                        params[paramSpec.name] = [value]
                    }
                } else if paramSpec.required {
                    return nil
                }
            } else if paramSpec.required {
                return nil
            }
        }
        self.init(params: params, query: query, type: type, url: url)
    }
    
    func getURL() -> String? {
        var urlParts = type.link.components(separatedBy: "/")
        for paramSpec in type.pathParams {
            if let index = urlParts.firstIndex(of: ":\(paramSpec.name)") {
              if let value = self.params?[paramSpec.name] {
                if value.isEmpty {
                    return nil
                } else if value.count == 1 {
                    urlParts[index] = value[0].addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? value[0]
                } else {
                    urlParts[index] = value
                        .map{$0.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? $0}
                        .joined(separator: ":::")
                }
              } else if paramSpec.required {
                return nil
              } else {
                urlParts.remove(at: index)
              }
            } else if paramSpec.required {
                return nil
            }
        }
        for q in type.queryParams {
            if q.required {
                if let value = self.query?[q.name],
                   value.isEmpty {
                    return nil
                } else if self.query?[q.name] == nil {
                    return nil
                }
            }
        }
        var queryString: String?
        for (key, value) in self.query ?? [:] {
            var text = ""
            for val in value {
                text += "\(key)=\((val.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? ""))&"
            }
            queryString = (queryString ?? "?") + text
        }
        let finalUrl = urlParts.joined(separator: "/") + (queryString?.dropLast() ?? "")
        return finalUrl
    }
}



public extension PlatformClient.ApplicationClient.Content.ActionPage {
    
    static func convertURLToAction(urlString: String) -> PlatformClient.ApplicationClient.Content.ActionPage? {
        return PlatformClient.ApplicationClient.Content.ActionPage(urlString: urlString)
    }

    convenience init?(urlString: String) {
        let url = urlString
        var query: [String: [String]] = [:]
        var params: [String: [String]] = [:]
        var urlComp = URLComponents(string: urlString)
        if urlComp?.scheme == nil {
            urlComp = URLComponents(string: "https://\(urlString)")
        }
        guard let urlComponents = urlComp else { return nil }
        guard let type = PlatformClient.ApplicationClient.Content.PageType(path: urlComponents.percentEncodedPath) else { return nil }
        for item in urlComponents.queryItems ?? [] {
            if let queryValue = item.value {
                if var list = query[item.name] {
                    list.append(queryValue)
                    query[item.name] = list
                } else {
                    query[item.name] = [queryValue]
                }
            }
        }
        for param in type.queryParams {
            if param.required && query[param.name] == nil {
                return nil
            }
        }
        let components = urlComponents.percentEncodedPath.components(separatedBy: "/").map{ $0.removingPercentEncoding ?? $0}
        let symbolic = URLComponents(string: type.link)?.percentEncodedPath.components(separatedBy: "/") ?? []
        for paramSpec in type.pathParams {
            if let i = symbolic.firstIndex(of: ":\(paramSpec.name)") {
                let index = Int(i)
                if let value = components.getIfExists(index: index) {
                    let splitVal = value.components(separatedBy: ":::")
                    if splitVal.count > 1 {
                        params[paramSpec.name] = splitVal
                    } else {
                        params[paramSpec.name] = [value]
                    }
                } else if paramSpec.required {
                    return nil
                }
            } else if paramSpec.required {
                return nil
            }
        }
        self.init(params: params, query: query, type: type, url: url)
    }
    
    func getURL() -> String? {
        var urlParts = type.link.components(separatedBy: "/")
        for paramSpec in type.pathParams {
            if let index = urlParts.firstIndex(of: ":\(paramSpec.name)") {
              if let value = self.params?[paramSpec.name] {
                if value.isEmpty {
                    return nil
                } else if value.count == 1 {
                    urlParts[index] = value[0].addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? value[0]
                } else {
                    urlParts[index] = value
                        .map{$0.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? $0}
                        .joined(separator: ":::")
                }
              } else if paramSpec.required {
                return nil
              } else {
                urlParts.remove(at: index)
              }
            } else if paramSpec.required {
                return nil
            }
        }
        for q in type.queryParams {
            if q.required {
                if let value = self.query?[q.name],
                   value.isEmpty {
                    return nil
                } else if self.query?[q.name] == nil {
                    return nil
                }
            }
        }
        var queryString: String?
        for (key, value) in self.query ?? [:] {
            var text = ""
            for val in value {
                text += "\(key)=\((val.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? ""))&"
            }
            queryString = (queryString ?? "?") + text
        }
        let finalUrl = urlParts.joined(separator: "/") + (queryString?.dropLast() ?? "")
        return finalUrl
    }
}





























public extension PlatformClient.Theme.ActionPage {
    
    static func convertURLToAction(urlString: String) -> PlatformClient.Theme.ActionPage? {
        return PlatformClient.Theme.ActionPage(urlString: urlString)
    }

    convenience init?(urlString: String) {
        let url = urlString
        var query: [String: [String]] = [:]
        var params: [String: [String]] = [:]
        var urlComp = URLComponents(string: urlString)
        if urlComp?.scheme == nil {
            urlComp = URLComponents(string: "https://\(urlString)")
        }
        guard let urlComponents = urlComp else { return nil }
        guard let type = PlatformClient.Theme.PageType(path: urlComponents.percentEncodedPath) else { return nil }
        for item in urlComponents.queryItems ?? [] {
            if let queryValue = item.value {
                if var list = query[item.name] {
                    list.append(queryValue)
                    query[item.name] = list
                } else {
                    query[item.name] = [queryValue]
                }
            }
        }
        for param in type.queryParams {
            if param.required && query[param.name] == nil {
                return nil
            }
        }
        let components = urlComponents.percentEncodedPath.components(separatedBy: "/").map{ $0.removingPercentEncoding ?? $0}
        let symbolic = URLComponents(string: type.link)?.percentEncodedPath.components(separatedBy: "/") ?? []
        for paramSpec in type.pathParams {
            if let i = symbolic.firstIndex(of: ":\(paramSpec.name)") {
                let index = Int(i)
                if let value = components.getIfExists(index: index) {
                    let splitVal = value.components(separatedBy: ":::")
                    if splitVal.count > 1 {
                        params[paramSpec.name] = splitVal
                    } else {
                        params[paramSpec.name] = [value]
                    }
                } else if paramSpec.required {
                    return nil
                }
            } else if paramSpec.required {
                return nil
            }
        }
        self.init(params: params, query: query, type: type, url: url)
    }
    
    func getURL() -> String? {
        var urlParts = type.link.components(separatedBy: "/")
        for paramSpec in type.pathParams {
            if let index = urlParts.firstIndex(of: ":\(paramSpec.name)") {
              if let value = self.params?[paramSpec.name] {
                if value.isEmpty {
                    return nil
                } else if value.count == 1 {
                    urlParts[index] = value[0].addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? value[0]
                } else {
                    urlParts[index] = value
                        .map{$0.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? $0}
                        .joined(separator: ":::")
                }
              } else if paramSpec.required {
                return nil
              } else {
                urlParts.remove(at: index)
              }
            } else if paramSpec.required {
                return nil
            }
        }
        for q in type.queryParams {
            if q.required {
                if let value = self.query?[q.name],
                   value.isEmpty {
                    return nil
                } else if self.query?[q.name] == nil {
                    return nil
                }
            }
        }
        var queryString: String?
        for (key, value) in self.query ?? [:] {
            var text = ""
            for val in value {
                text += "\(key)=\((val.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? ""))&"
            }
            queryString = (queryString ?? "?") + text
        }
        let finalUrl = urlParts.joined(separator: "/") + (queryString?.dropLast() ?? "")
        return finalUrl
    }
}



public extension PlatformClient.ApplicationClient.Theme.ActionPage {
    
    static func convertURLToAction(urlString: String) -> PlatformClient.ApplicationClient.Theme.ActionPage? {
        return PlatformClient.ApplicationClient.Theme.ActionPage(urlString: urlString)
    }

    convenience init?(urlString: String) {
        let url = urlString
        var query: [String: [String]] = [:]
        var params: [String: [String]] = [:]
        var urlComp = URLComponents(string: urlString)
        if urlComp?.scheme == nil {
            urlComp = URLComponents(string: "https://\(urlString)")
        }
        guard let urlComponents = urlComp else { return nil }
        guard let type = PlatformClient.ApplicationClient.Theme.PageType(path: urlComponents.percentEncodedPath) else { return nil }
        for item in urlComponents.queryItems ?? [] {
            if let queryValue = item.value {
                if var list = query[item.name] {
                    list.append(queryValue)
                    query[item.name] = list
                } else {
                    query[item.name] = [queryValue]
                }
            }
        }
        for param in type.queryParams {
            if param.required && query[param.name] == nil {
                return nil
            }
        }
        let components = urlComponents.percentEncodedPath.components(separatedBy: "/").map{ $0.removingPercentEncoding ?? $0}
        let symbolic = URLComponents(string: type.link)?.percentEncodedPath.components(separatedBy: "/") ?? []
        for paramSpec in type.pathParams {
            if let i = symbolic.firstIndex(of: ":\(paramSpec.name)") {
                let index = Int(i)
                if let value = components.getIfExists(index: index) {
                    let splitVal = value.components(separatedBy: ":::")
                    if splitVal.count > 1 {
                        params[paramSpec.name] = splitVal
                    } else {
                        params[paramSpec.name] = [value]
                    }
                } else if paramSpec.required {
                    return nil
                }
            } else if paramSpec.required {
                return nil
            }
        }
        self.init(params: params, query: query, type: type, url: url)
    }
    
    func getURL() -> String? {
        var urlParts = type.link.components(separatedBy: "/")
        for paramSpec in type.pathParams {
            if let index = urlParts.firstIndex(of: ":\(paramSpec.name)") {
              if let value = self.params?[paramSpec.name] {
                if value.isEmpty {
                    return nil
                } else if value.count == 1 {
                    urlParts[index] = value[0].addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? value[0]
                } else {
                    urlParts[index] = value
                        .map{$0.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? $0}
                        .joined(separator: ":::")
                }
              } else if paramSpec.required {
                return nil
              } else {
                urlParts.remove(at: index)
              }
            } else if paramSpec.required {
                return nil
            }
        }
        for q in type.queryParams {
            if q.required {
                if let value = self.query?[q.name],
                   value.isEmpty {
                    return nil
                } else if self.query?[q.name] == nil {
                    return nil
                }
            }
        }
        var queryString: String?
        for (key, value) in self.query ?? [:] {
            var text = ""
            for val in value {
                text += "\(key)=\((val.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? ""))&"
            }
            queryString = (queryString ?? "?") + text
        }
        let finalUrl = urlParts.joined(separator: "/") + (queryString?.dropLast() ?? "")
        return finalUrl
    }
}







