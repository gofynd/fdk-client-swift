

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: ListStoreResponse
        Used By: Configuration
    */

    class ListStoreResponse: Codable {
        
        
        public var stores: [AppInventoryStores]?
        

        public enum CodingKeys: String, CodingKey {
            
            case stores = "stores"
            
        }

        public init(stores: [AppInventoryStores]? = nil) {
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stores = try container.decode([AppInventoryStores].self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: ListStoreResponse
        Used By: Configuration
    */

    class ListStoreResponse: Codable {
        
        
        public var stores: [AppInventoryStores]?
        

        public enum CodingKeys: String, CodingKey {
            
            case stores = "stores"
            
        }

        public init(stores: [AppInventoryStores]? = nil) {
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stores = try container.decode([AppInventoryStores].self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}


