

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchDetails
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchDetails: Codable {
        
        
        public var items: [ZoneProductsAtomicPatchItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [ZoneProductsAtomicPatchItem]) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ZoneProductsAtomicPatchItem].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchDetails
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchDetails: Codable {
        
        
        public var items: [ZoneProductsAtomicPatchItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [ZoneProductsAtomicPatchItem]) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ZoneProductsAtomicPatchItem].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


