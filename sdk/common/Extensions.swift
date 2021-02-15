extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    var asBase64: String {
        return Data(self.utf8).base64EncodedString()
    }

    var urlEncoded: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }

    func appendAsPath(_ path: String) -> String {
        var pathToJoin = path
        if (self.last == "/" && path.first == "/") {
            pathToJoin.removeFirst()
        } else if (self.last != "/" && path.first != "/") {
            pathToJoin = "/" + pathToJoin
        }
        return self + pathToJoin
    }
}

extension Dictionary {
    public var pretty: String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted])
            guard let jsonString = String(data: jsonData, encoding: String.Encoding.utf8) else {
                print("Can't create string with data.")
                return "{}"
            }
            return jsonString
        } catch let parseError {
            print("json serialization error: \(parseError)")
            return "{}"
        }
    }

    var asQueryString: String {
        get {
            let paramKeys = Array(self.keys)
            var queries: [String] = []
            for keyIndex in paramKeys.indices {
                let key = paramKeys[keyIndex]
                let value = self[key]
                if let valueDict = value as? [String: Any] {
                    //TODO: check dict implementation for signing
                    if let jsonData = try? JSONSerialization.data(withJSONObject: valueDict,
                                                                options: JSONSerialization.WritingOptions(rawValue: 0)) {
                        let jsonString = (String(data: jsonData, encoding: .utf8) ?? "{}").urlEncoded
                        queries.append("\(key)=\(jsonString)")
                    } else {
                        queries.append("\(key)=\("{}".urlEncoded)")
                    }
                } else if let valueArray = value as? [Any] {
                    for value1 in valueArray {
                        if let strValue = value1 as? String {
                            queries.append("\(key)=\(handleEncoding(url: strValue) ?? "")")
                        } else {
                            queries.append("\(key)=\(value1)")
                        }
                    }
                } else if let value1 = value as? String {
                    queries.append("\(key)=\(handleEncoding(url: value1) ?? "")")
                } else if let value1 = value {
                    queries.append("\(key)=\(value1)")
                }
            }
            queries.sort()
            return queries.joined(separator: "&")
        }
    }

    func handleEncoding(url: String) -> String? {
        let encodedStr = CFURLCreateStringByAddingPercentEscapes(nil, url  as CFString?, nil, "!*'();:@&=+$,/?%#[]" as CFString, CFStringBuiltInEncodings.UTF8.rawValue) as String
        return encodedStr
    }
}


extension KeyedDecodingContainer {

    func decode(_ type: [String: Any].Type, forKey key: K) throws -> [String: Any] {
        let container = try self.nestedContainer(keyedBy: JSONCodingKeys.self, forKey: key)
        return try container.decode(type)
    }

    func decodeIfPresent(_ type: [String: Any].Type, forKey key: K) throws -> [String: Any]? {
        guard contains(key) else {
            return nil
        }
        guard try decodeNil(forKey: key) == false else {
            return nil
        }
        return try decode(type, forKey: key)
    }

    func decode(_ type: [Any].Type, forKey key: K) throws -> [Any] {
        var container = try self.nestedUnkeyedContainer(forKey: key)
        return try container.decode(type)
    }

    func decodeIfPresent(_ type: [Any].Type, forKey key: K) throws -> [Any]? {
        guard contains(key) else {
            return nil
        }
        guard try decodeNil(forKey: key) == false else {
            return nil
        }
        return try decode(type, forKey: key)
    }

    func decode(_ type: [String: Any].Type) throws -> [String: Any] {
        var dictionary = [String: Any]()

        for key in allKeys {
            if let boolValue = try? decode(Bool.self, forKey: key) {
                dictionary[key.stringValue] = boolValue
            } else if let stringValue = try? decode(String.self, forKey: key) {
                dictionary[key.stringValue] = stringValue
            } else if let intValue = try? decode(Int.self, forKey: key) {
                dictionary[key.stringValue] = intValue
            } else if let doubleValue = try? decode(Double.self, forKey: key) {
                dictionary[key.stringValue] = doubleValue
            } else if let nestedDictionary = try? decode(Dictionary<String, Any>.self, forKey: key) {
                dictionary[key.stringValue] = nestedDictionary
            } else if let nestedArray = try? decode(Array<Any>.self, forKey: key) {
                dictionary[key.stringValue] = nestedArray
            }
        }
        return dictionary
    }
}

extension UnkeyedDecodingContainer {

    mutating func decode(_ type: [Any].Type) throws -> [Any] {
        var array: [Any] = []
        while isAtEnd == false {
            // See if the current value in the JSON array is `null` first and prevent infite recursion with nested arrays.
            if try decodeNil() {
                continue
            } else if let value = try? decode(Bool.self) {
                array.append(value)
            } else if let value = try? decode(Double.self) {
                array.append(value)
            } else if let value = try? decode(String.self) {
                array.append(value)
            } else if let nestedDictionary = try? decode(Dictionary<String, Any>.self) {
                array.append(nestedDictionary)
            } else if let nestedArray = try? decode(Array<Any>.self) {
                array.append(nestedArray)
            }
        }
        return array
    }

    mutating func decode(_ type: [String: Any].Type) throws -> [String: Any] {
        let nestedContainer = try self.nestedContainer(keyedBy: JSONCodingKeys.self)
        return try nestedContainer.decode(type)
    }
}


class Utility {
    static func decode<T>(_ decodable: T.Type, from data: Data) -> T? where T: Decodable {
        var decodedData: T?
        do {
            decodedData = try JSONDecoder().decode(T.self, from: data)
        } catch DecodingError.dataCorrupted(let context) {
            print(context)
        } catch DecodingError.keyNotFound(let key, let context) {
            print("Key '\(key)' not found:", context.debugDescription)
            print("codingPath:", context.codingPath)
        } catch DecodingError.valueNotFound(let value, let context) {
            print("Value '\(value)' not found:", context.debugDescription)
            print("codingPath:", context.codingPath)
        } catch DecodingError.typeMismatch(let type, let context) {
            print("Type '\(type)' mismatch:", context.debugDescription)
            print("codingPath:", context.codingPath)
        } catch {
            print("error: ", error)
        }
        return decodedData
    }
}

struct JSONCodingKeys: CodingKey {
    var stringValue: String

    init?(stringValue: String) {
        self.stringValue = stringValue
    }

    var intValue: Int?

    init?(intValue: Int) {
        self.init(stringValue: "\(intValue)")
        self.intValue = intValue
    }
}

extension URLRequest {
    /**
     Returns a cURL command representation of this URL request.
     */
    public var curlString: String {
        guard let url = url else { return "" }
        var baseCommand = "curl '\(url.absoluteString)'"
        
        if httpMethod == "HEAD" {
            baseCommand += " --head"
        }
        
        var command = [baseCommand]
        
        if let method = httpMethod, method != "GET" && method != "HEAD" {
            command.append("-X \(method)")
        }
        
        if let headers = allHTTPHeaderFields {
            for (key, value) in headers {
                command.append("-H '\(key): \(value)'")
            }
        }
        
        HTTPCookieStorage.shared.cookies(for: url)?.forEach { cookie in
            command.append("-H 'Cookie: \(cookie.name )=\(cookie.value)'")
        }
        
        if let data = httpBody, let body = String(data: data, encoding: .utf8) {
            command.append("-d '\(body)'")
        }
        
        return command.joined(separator: " \\\n\t")
    }
}