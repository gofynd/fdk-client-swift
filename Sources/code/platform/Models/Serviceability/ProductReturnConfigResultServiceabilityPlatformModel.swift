

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ProductReturnConfigResult
        Used By: Serviceability
    */

    class ProductReturnConfigResult: Codable {
        
        
        public var onSameStore: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case onSameStore = "on_same_store"
            
        }

        public init(onSameStore: Bool? = nil) {
            
            self.onSameStore = onSameStore
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    onSameStore = try container.decode(Bool.self, forKey: .onSameStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ProductReturnConfigResult
        Used By: Serviceability
    */

    class ProductReturnConfigResult: Codable {
        
        
        public var onSameStore: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case onSameStore = "on_same_store"
            
        }

        public init(onSameStore: Bool? = nil) {
            
            self.onSameStore = onSameStore
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    onSameStore = try container.decode(Bool.self, forKey: .onSameStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
            
            
        }
        
    }
}


