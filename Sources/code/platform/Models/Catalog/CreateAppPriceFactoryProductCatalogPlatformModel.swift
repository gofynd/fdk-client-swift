

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProduct
        Used By: Catalog
    */

    class CreateAppPriceFactoryProduct: Codable {
        
        
        public var itemId: Int?
        
        public var brand: String?
        
        public var sellerIdentifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case brand = "brand"
            
            case sellerIdentifier = "seller_identifier"
            
        }

        public init(brand: String? = nil, itemId: Int? = nil, sellerIdentifier: String? = nil) {
            
            self.itemId = itemId
            
            self.brand = brand
            
            self.sellerIdentifier = sellerIdentifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(String.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProduct
        Used By: Catalog
    */

    class CreateAppPriceFactoryProduct: Codable {
        
        
        public var itemId: Int?
        
        public var brand: String?
        
        public var sellerIdentifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case brand = "brand"
            
            case sellerIdentifier = "seller_identifier"
            
        }

        public init(brand: String? = nil, itemId: Int? = nil, sellerIdentifier: String? = nil) {
            
            self.itemId = itemId
            
            self.brand = brand
            
            self.sellerIdentifier = sellerIdentifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(String.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
        }
        
    }
}


