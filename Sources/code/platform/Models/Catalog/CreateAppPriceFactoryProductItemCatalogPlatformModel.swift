

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductItem
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductItem: Codable {
        
        
        public var name: String?
        
        public var itemId: Int?
        
        public var sellerIdentifier: String?
        
        public var markedPrice: Double?
        
        public var sellingPrice: Double?
        
        public var zone: String?
        
        public var command: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case itemId = "item_id"
            
            case sellerIdentifier = "seller_identifier"
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case zone = "zone"
            
            case command = "command"
            
        }

        public init(command: String? = nil, itemId: Int? = nil, markedPrice: Double? = nil, name: String? = nil, sellerIdentifier: String? = nil, sellingPrice: Double? = nil, zone: String? = nil) {
            
            self.name = name
            
            self.itemId = itemId
            
            self.sellerIdentifier = sellerIdentifier
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.zone = zone
            
            self.command = command
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
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
                    zone = try container.decode(String.self, forKey: .zone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    command = try container.decode(String.self, forKey: .command)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
            
            
            try? container.encodeIfPresent(command, forKey: .command)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductItem
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductItem: Codable {
        
        
        public var name: String?
        
        public var itemId: Int?
        
        public var sellerIdentifier: String?
        
        public var markedPrice: Double?
        
        public var sellingPrice: Double?
        
        public var zone: String?
        
        public var command: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case itemId = "item_id"
            
            case sellerIdentifier = "seller_identifier"
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case zone = "zone"
            
            case command = "command"
            
        }

        public init(command: String? = nil, itemId: Int? = nil, markedPrice: Double? = nil, name: String? = nil, sellerIdentifier: String? = nil, sellingPrice: Double? = nil, zone: String? = nil) {
            
            self.name = name
            
            self.itemId = itemId
            
            self.sellerIdentifier = sellerIdentifier
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.zone = zone
            
            self.command = command
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
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
                    zone = try container.decode(String.self, forKey: .zone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    command = try container.decode(String.self, forKey: .command)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
            
            
            try? container.encodeIfPresent(command, forKey: .command)
            
            
        }
        
    }
}


