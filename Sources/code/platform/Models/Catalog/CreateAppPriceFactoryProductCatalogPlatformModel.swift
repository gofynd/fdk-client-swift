

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProduct
        Used By: Catalog
    */

    class CreateAppPriceFactoryProduct: Codable {
        
        
        public var itemId: Int?
        
        public var markedPrice: Double?
        
        public var sellingPrice: Double?
        
        public var sellerIdentifier: String?
        
        public var zone: String?
        
        public var action: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case sellerIdentifier = "seller_identifier"
            
            case zone = "zone"
            
            case action = "action"
            
        }

        public init(action: String? = nil, itemId: Int? = nil, markedPrice: Double? = nil, sellerIdentifier: String? = nil, sellingPrice: Double? = nil, zone: String? = nil) {
            
            self.itemId = itemId
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.sellerIdentifier = sellerIdentifier
            
            self.zone = zone
            
            self.action = action
            
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
                    markedPrice = try container.decode(Double.self, forKey: .markedPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
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
                
            
            
                do {
                    zone = try container.decode(String.self, forKey: .zone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
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
        
        public var markedPrice: Double?
        
        public var sellingPrice: Double?
        
        public var sellerIdentifier: String?
        
        public var zone: String?
        
        public var action: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case sellerIdentifier = "seller_identifier"
            
            case zone = "zone"
            
            case action = "action"
            
        }

        public init(action: String? = nil, itemId: Int? = nil, markedPrice: Double? = nil, sellerIdentifier: String? = nil, sellingPrice: Double? = nil, zone: String? = nil) {
            
            self.itemId = itemId
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.sellerIdentifier = sellerIdentifier
            
            self.zone = zone
            
            self.action = action
            
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
                    markedPrice = try container.decode(Double.self, forKey: .markedPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
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
                
            
            
                do {
                    zone = try container.decode(String.self, forKey: .zone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}


