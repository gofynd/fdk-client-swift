

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportJobListResponse
        Used By: Catalog
    */

    class InventoryExportJobListResponse: Codable {
        
        
        public var items: [InventoryExportJobList]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [InventoryExportJobList]? = nil) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([InventoryExportJobList].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportJobListResponse
        Used By: Catalog
    */

    class InventoryExportJobListResponse: Codable {
        
        
        public var items: [InventoryExportJobList]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [InventoryExportJobList]? = nil) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([InventoryExportJobList].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


