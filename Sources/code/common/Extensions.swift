import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    var asBase64: String {
        return Data(self.utf8).base64EncodedString()
    }

    var urlEncoded: String {
        return addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? self
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

    func classFromString() -> AnyClass! {

    /// get namespace
    let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String

    /// get 'anyClass' with classname and namespace 
    let cls: AnyClass = NSClassFromString("\(namespace).\(self)")!

    // return AnyClass!
    return cls
}
}

extension Array {
    func getIfExists(index: Int) -> Element? {
        if count > index {
            return self[index]
        }
        return nil
    }
    
    mutating func removeIfExists(index: Int) -> Element? {
        if count > index {
            return remove(at: index)
        }
        return nil
    }
}

extension Decodable {
    init?(dictionary: [String: Any]) {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            if let decodedData = Utility.decode(Self.self, from: data) {
                self = decodedData
            } else {
                return nil
            }
        } catch _ {
            return nil
        }
    }
}

public extension Data {
    var dictionary: [String: Any]? {
        do {
            return try JSONSerialization.jsonObject(with: self, options: []) as? [String: Any]
        } catch {
            return nil
        }
    }
}

public extension Dictionary {
    var data: Data? {
        return try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
    }

    var minifiedJson: String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
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
                        let jsonString = (String(data: jsonData, encoding: .utf8) ?? "{}")
                            .addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? ""
                        queries.append("\(key)=\(jsonString)")
                    } else {
                        queries.append("\(key)=\("{}".addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? "")")
                    }
                } else if let valueArray = value as? [Any] {
                    for value1 in valueArray {
                        if let strValue = value1 as? String {
                            queries.append("\(key)=\(strValue.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? "")")
                        } else {
                            queries.append("\(key)=\(value1)")
                        }
                    }
                } else if let value1 = value as? String {
                    queries.append("\(key)=\(value1.addingPercentEncoding(withAllowedCharacters: .afURLQueryAllowed) ?? "")")
                } else if let value = value {
                    queries.append("\(key)=\(value)")
                }
            }
            queries.sort()
            return queries.joined(separator: "&")
        }
    }

    var asSolrString: String {
        get {
            var queryStrings: [String] = []
            self.keys.forEach { (key) in
                guard let keyString = key as? String else { return }
                var valueString: String? = nil
                if let values = self[key] as? [Any] {
                    valueString = values.map{ "\($0)" }.joined(separator: "||")
                } else if let valueOfKey = self[key] {
                    valueString = "\(valueOfKey)"
                }
                if let valueString = valueString {
                    queryStrings.append("\(keyString):\(valueString)")
                }
            }
            return queryStrings.joined(separator: ":::")
        }
    }
}


extension Encodable {
    var dictionary: [String: Any]? {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}

public extension Encodable {
    ///Returns a new deep clone copy of parent object
    func duplicate() -> Self where Self: Decodable {
        let dict = self.dictionary!
        let copy = Self.self.init(dictionary: dict)!
        return copy
    }
}

extension KeyedDecodingContainer {
    func decode(_ type: [String: Any].Type, forKey key: K) throws -> [String: Any] {
        let container = try self.nestedContainer(keyedBy: JSONCodingKeys.self, forKey: key)
        return try container.decode(type)
    }

    func decode(_ type: [[String: Any]].Type, forKey key: K) throws -> [[String: Any]] {
        var container = try self.nestedUnkeyedContainer(forKey: key)
        if let decodedData = try container.decode([Any].self) as? [[String: Any]] {
            return decodedData
        } else {
            return []
        }
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

extension KeyedEncodingContainer {
    
    mutating func encode(_ value: [String: Any]?, forKey key: KeyedEncodingContainer<K>.Key) throws {
        var container = self.nestedContainer(keyedBy: JSONCodingKeys.self, forKey: key)
        if let value = value {
            for item in value {
                if let val = item.value as? Int {
                    try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
                } else if let val = item.value as? String {
                    try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
                } else if let val = item.value as? Double {
                    try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
                } else if let val = item.value as? Float {
                    try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
                } else if let val = item.value as? Bool {
                    try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
                } else if let val = item.value as? [Any] {
                    try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
                } else if let val = item.value as? [String: Any] {
                    try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
                } else {
                    try self.encodeNil(forKey: key)
                }
            }
        } else {
            try self.encodeNil(forKey: key)
        }
    }
    
    mutating func encodeIfPresent(_ value: [String: Any]?, forKey key: KeyedEncodingContainer<K>.Key) throws {
        guard let safeValue = value, !safeValue.isEmpty else {
            return
        }
        var container = self.nestedContainer(keyedBy: JSONCodingKeys.self, forKey: key)
        for item in safeValue {
            if let val = item.value as? Int {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? String {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? Double {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? Float {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? Bool {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? [Any] {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? [String: Any] {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            }
        }
    }
    
    mutating func encodeIfPresent(_ value: [Any]?, forKey key: KeyedEncodingContainer<K>.Key) throws {
        guard let safeValue = value else {
            return
        }
        if let val = safeValue as? [Int] {
            try self.encodeIfPresent(val, forKey: key)
        } else if let val = safeValue as? [String] {
            try self.encodeIfPresent(val, forKey: key)
        } else if let val = safeValue as? [Double] {
            try self.encodeIfPresent(val, forKey: key)
        } else if let val = safeValue as? [Float] {
            try self.encodeIfPresent(val, forKey: key)
        } else if let val = safeValue as? [Bool] {
            try self.encodeIfPresent(val, forKey: key)
        } else if let val = value as? [[String: Any]] {
            var container = self.nestedUnkeyedContainer(forKey: key)
            try container.encode(contentsOf: val)
        }
    }
    
    mutating func encode(_ value: [Any]?, forKey key: KeyedEncodingContainer<K>.Key) throws {
        if let val = value as? [Int] {
            try self.encode(val, forKey: key)
        } else if let val = value as? [String] {
            try self.encode(val, forKey: key)
        } else if let val = value as? [Double] {
            try self.encode(val, forKey: key)
        } else if let val = value as? [Float] {
            try self.encode(val, forKey: key)
        } else if let val = value as? [Bool] {
            try self.encode(val, forKey: key)
        } else if let val = value as? [[String: Any]] {
            var container = self.nestedUnkeyedContainer(forKey: key)
            try container.encode(contentsOf: val)
        } else {
            try self.encodeNil(forKey: key)
        }
    }
}

extension UnkeyedEncodingContainer {
    mutating func encode(contentsOf sequence: [[String: Any]]) throws {
        for dict in sequence {
            try self.encode(dict)
        }
    }
    
    mutating func encode(_ value: [String: Any]) throws {
        var container = self.nestedContainer(keyedBy: JSONCodingKeys.self)
        for item in value {
            if let val = item.value as? Int {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? String {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? Double {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? Float {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? Bool {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? [Any] {
                try container.encodeIfPresent(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            } else if let val = item.value as? [String: Any] {
                try container.encode(val, forKey: JSONCodingKeys(stringValue: item.key)!)
            }
        }
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
        
        if let cookies = HTTPCookieStorage.shared.cookies(for: url) {
            var cookiesString = [String]()
            for (index, cookie) in cookies.enumerated() {
                if index == 0 {
                    cookiesString.append("-H 'Cookie: ")
                }
                if index == cookies.count - 1 {
                    cookiesString.append("\(cookie.name )=\(cookie.value)'")
                } else {
                    cookiesString.append("\(cookie.name )=\(cookie.value); ")
                }
            }
            let strCookie = cookiesString.joined()
            command.append(strCookie)
        }
        
        if let data = httpBody, let body = String(data: data, encoding: .utf8) {
            command.append("-d '\(body)'")
        }
        
        return command.joined(separator: " \\\n\t")
    }
}
