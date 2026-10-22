

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryTransaction
        Used By: Catalog
    */

    class InventoryTransaction: Codable {
        
        
        public var type: String?
        
        public var referenceId: String?
        
        public var reason: String?
        
        public var source: String?
        
        public var userRef: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case referenceId = "reference_id"
            
            case reason = "reason"
            
            case source = "source"
            
            case userRef = "user_ref"
            
        }

        public init(reason: String? = nil, referenceId: String? = nil, source: String? = nil, type: String? = nil, userRef: String? = nil) {
            
            self.type = type
            
            self.referenceId = referenceId
            
            self.reason = reason
            
            self.source = source
            
            self.userRef = userRef
            
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
                    referenceId = try container.decode(String.self, forKey: .referenceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userRef = try container.decode(String.self, forKey: .userRef)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(referenceId, forKey: .referenceId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(userRef, forKey: .userRef)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryTransaction
        Used By: Catalog
    */

    class InventoryTransaction: Codable {
        
        
        public var type: String?
        
        public var referenceId: String?
        
        public var reason: String?
        
        public var source: String?
        
        public var userRef: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case referenceId = "reference_id"
            
            case reason = "reason"
            
            case source = "source"
            
            case userRef = "user_ref"
            
        }

        public init(reason: String? = nil, referenceId: String? = nil, source: String? = nil, type: String? = nil, userRef: String? = nil) {
            
            self.type = type
            
            self.referenceId = referenceId
            
            self.reason = reason
            
            self.source = source
            
            self.userRef = userRef
            
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
                    referenceId = try container.decode(String.self, forKey: .referenceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userRef = try container.decode(String.self, forKey: .userRef)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(referenceId, forKey: .referenceId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(userRef, forKey: .userRef)
            
            
        }
        
    }
}


