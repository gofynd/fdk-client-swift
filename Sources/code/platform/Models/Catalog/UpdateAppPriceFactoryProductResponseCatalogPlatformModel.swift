

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdateAppPriceFactoryProductResponse
        Used By: Catalog
    */

    class UpdateAppPriceFactoryProductResponse: Codable {
        
        
        public var itemId: Int?
        
        public var zoneId: String?
        
        public var media: [Media]?
        
        public var companySizes: [CompanySizes]?
        
        public var sizes: [PriceFactorySizes]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case zoneId = "zone_id"
            
            case media = "media"
            
            case companySizes = "company_sizes"
            
            case sizes = "sizes"
            
        }

        public init(companySizes: [CompanySizes]? = nil, itemId: Int? = nil, media: [Media]? = nil, sizes: [PriceFactorySizes]? = nil, zoneId: String? = nil) {
            
            self.itemId = itemId
            
            self.zoneId = zoneId
            
            self.media = media
            
            self.companySizes = companySizes
            
            self.sizes = sizes
            
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
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([Media].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companySizes = try container.decode([CompanySizes].self, forKey: .companySizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([PriceFactorySizes].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(companySizes, forKey: .companySizes)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdateAppPriceFactoryProductResponse
        Used By: Catalog
    */

    class UpdateAppPriceFactoryProductResponse: Codable {
        
        
        public var itemId: Int?
        
        public var zoneId: String?
        
        public var media: [Media]?
        
        public var companySizes: [CompanySizes]?
        
        public var sizes: [PriceFactorySizes]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case zoneId = "zone_id"
            
            case media = "media"
            
            case companySizes = "company_sizes"
            
            case sizes = "sizes"
            
        }

        public init(companySizes: [CompanySizes]? = nil, itemId: Int? = nil, media: [Media]? = nil, sizes: [PriceFactorySizes]? = nil, zoneId: String? = nil) {
            
            self.itemId = itemId
            
            self.zoneId = zoneId
            
            self.media = media
            
            self.companySizes = companySizes
            
            self.sizes = sizes
            
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
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([Media].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companySizes = try container.decode([CompanySizes].self, forKey: .companySizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([PriceFactorySizes].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(companySizes, forKey: .companySizes)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}


