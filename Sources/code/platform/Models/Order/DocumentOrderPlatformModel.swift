

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Document
        Used By: Order
    */

    class Document: Codable {
        
        
        public var value: String
        
        public var type: String
        
        public var verified: Bool
        
        public var legalName: String
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
            case verified = "verified"
            
            case legalName = "legal_name"
            
            case url = "url"
            
        }

        public init(legalName: String, type: String, url: String? = nil, value: String, verified: Bool) {
            
            self.value = value
            
            self.type = type
            
            self.verified = verified
            
            self.legalName = legalName
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                verified = try container.decode(Bool.self, forKey: .verified)
                
            
            
            
                legalName = try container.decode(String.self, forKey: .legalName)
                
            
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Document
        Used By: Order
    */

    class Document: Codable {
        
        
        public var value: String
        
        public var type: String
        
        public var verified: Bool
        
        public var legalName: String
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
            case verified = "verified"
            
            case legalName = "legal_name"
            
            case url = "url"
            
        }

        public init(legalName: String, type: String, url: String? = nil, value: String, verified: Bool) {
            
            self.value = value
            
            self.type = type
            
            self.verified = verified
            
            self.legalName = legalName
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                verified = try container.decode(Bool.self, forKey: .verified)
                
            
            
            
                legalName = try container.decode(String.self, forKey: .legalName)
                
            
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}


