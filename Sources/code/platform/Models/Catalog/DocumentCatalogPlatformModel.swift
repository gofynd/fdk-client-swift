

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Document
        Used By: Catalog
    */

    class Document: Codable {
        
        
        public var legalName: String?
        
        public var type: String
        
        public var url: String?
        
        public var value: String
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case legalName = "legal_name"
            
            case type = "type"
            
            case url = "url"
            
            case value = "value"
            
            case verified = "verified"
            
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            
            self.legalName = legalName
            
            self.type = type
            
            self.url = url
            
            self.value = value
            
            self.verified = verified
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    legalName = try container.decode(String.self, forKey: .legalName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Document
        Used By: Catalog
    */

    class Document: Codable {
        
        
        public var legalName: String?
        
        public var type: String
        
        public var url: String?
        
        public var value: String
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case legalName = "legal_name"
            
            case type = "type"
            
            case url = "url"
            
            case value = "value"
            
            case verified = "verified"
            
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            
            self.legalName = legalName
            
            self.type = type
            
            self.url = url
            
            self.value = value
            
            self.verified = verified
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    legalName = try container.decode(String.self, forKey: .legalName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
}


