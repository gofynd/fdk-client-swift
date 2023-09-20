

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderBagArticle
        Used By: Order
    */

    class OrderBagArticle: Codable {
        
        
        public var identifiers: [String: Any]?
        
        public var returnConfig: ReturnConfig1?
        
        public var uid: String?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case returnConfig = "return_config"
            
            case uid = "uid"
            
            case size = "size"
            
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, size: String? = nil, uid: String? = nil) {
            
            self.identifiers = identifiers
            
            self.returnConfig = returnConfig
            
            self.uid = uid
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifiers = try container.decode([String: Any].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encode(uid, forKey: .uid)
            
            
            
            
            try? container.encode(size, forKey: .size)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderBagArticle
        Used By: Order
    */

    class OrderBagArticle: Codable {
        
        
        public var identifiers: [String: Any]?
        
        public var returnConfig: ReturnConfig1?
        
        public var uid: String?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case returnConfig = "return_config"
            
            case uid = "uid"
            
            case size = "size"
            
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, size: String? = nil, uid: String? = nil) {
            
            self.identifiers = identifiers
            
            self.returnConfig = returnConfig
            
            self.uid = uid
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifiers = try container.decode([String: Any].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encode(uid, forKey: .uid)
            
            
            
            
            try? container.encode(size, forKey: .size)
            
            
        }
        
    }
}


