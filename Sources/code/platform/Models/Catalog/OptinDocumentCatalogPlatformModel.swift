

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: OptinDocument
        Used By: Catalog
    */

    class OptinDocument: Codable {
        
        
        public var type: String?
        
        public var value: String?
        
        public var legalName: String?
        
        public var verified: Bool?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case legalName = "legal_name"
            
            case verified = "verified"
            
            case url = "url"
            
        }

        public init(legalName: String? = nil, type: String? = nil, url: String? = nil, value: String? = nil, verified: Bool? = nil) {
            
            self.type = type
            
            self.value = value
            
            self.legalName = legalName
            
            self.verified = verified
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    legalName = try container.decode(String.self, forKey: .legalName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: OptinDocument
        Used By: Catalog
    */

    class OptinDocument: Codable {
        
        
        public var type: String?
        
        public var value: String?
        
        public var legalName: String?
        
        public var verified: Bool?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case legalName = "legal_name"
            
            case verified = "verified"
            
            case url = "url"
            
        }

        public init(legalName: String? = nil, type: String? = nil, url: String? = nil, value: String? = nil, verified: Bool? = nil) {
            
            self.type = type
            
            self.value = value
            
            self.legalName = legalName
            
            self.verified = verified
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    legalName = try container.decode(String.self, forKey: .legalName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}


