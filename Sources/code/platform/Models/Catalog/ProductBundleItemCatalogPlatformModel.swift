

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductBundleItem
        Used By: Catalog
    */

    class ProductBundleItem: Codable {
        
        
        public var maxQuantity: Int
        
        public var minQuantity: Int
        
        public var productUid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case maxQuantity = "max_quantity"
            
            case minQuantity = "min_quantity"
            
            case productUid = "product_uid"
            
        }

        public init(maxQuantity: Int, minQuantity: Int, productUid: Int) {
            
            self.maxQuantity = maxQuantity
            
            self.minQuantity = minQuantity
            
            self.productUid = productUid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
            
            
            
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
            
            
            
                productUid = try container.decode(Int.self, forKey: .productUid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
            
            
            
            
            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
            
            
            
            
            try? container.encodeIfPresent(productUid, forKey: .productUid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductBundleItem
        Used By: Catalog
    */

    class ProductBundleItem: Codable {
        
        
        public var maxQuantity: Int
        
        public var minQuantity: Int
        
        public var productUid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case maxQuantity = "max_quantity"
            
            case minQuantity = "min_quantity"
            
            case productUid = "product_uid"
            
        }

        public init(maxQuantity: Int, minQuantity: Int, productUid: Int) {
            
            self.maxQuantity = maxQuantity
            
            self.minQuantity = minQuantity
            
            self.productUid = productUid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
            
            
            
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
            
            
            
                productUid = try container.decode(Int.self, forKey: .productUid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
            
            
            
            
            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
            
            
            
            
            try? container.encodeIfPresent(productUid, forKey: .productUid)
            
            
        }
        
    }
}


