

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Scores
        Used By: Catalog
    */

    class Scores: Codable {
        
        
        public var popularity: Double?
        
        public var availability: Double?
        
        public var conversion: Double?
        
        public var soldQuantity: Double?
        
        public var depth: Double?
        
        public var discount: Double?
        
        public var revenue: Double?
        
        public var cancelled: Double?
        
        public var returns: Double?
        
        public var catalogue: Double?
        
        public var listing: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case popularity = "popularity"
            
            case availability = "availability"
            
            case conversion = "conversion"
            
            case soldQuantity = "sold_quantity"
            
            case depth = "depth"
            
            case discount = "discount"
            
            case revenue = "revenue"
            
            case cancelled = "cancelled"
            
            case returns = "returns"
            
            case catalogue = "catalogue"
            
            case listing = "listing"
            
        }

        public init(availability: Double? = nil, cancelled: Double? = nil, catalogue: Double? = nil, conversion: Double? = nil, depth: Double? = nil, discount: Double? = nil, listing: Double? = nil, popularity: Double? = nil, returns: Double? = nil, revenue: Double? = nil, soldQuantity: Double? = nil) {
            
            self.popularity = popularity
            
            self.availability = availability
            
            self.conversion = conversion
            
            self.soldQuantity = soldQuantity
            
            self.depth = depth
            
            self.discount = discount
            
            self.revenue = revenue
            
            self.cancelled = cancelled
            
            self.returns = returns
            
            self.catalogue = catalogue
            
            self.listing = listing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    popularity = try container.decode(Double.self, forKey: .popularity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availability = try container.decode(Double.self, forKey: .availability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conversion = try container.decode(Double.self, forKey: .conversion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    soldQuantity = try container.decode(Double.self, forKey: .soldQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    depth = try container.decode(Double.self, forKey: .depth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revenue = try container.decode(Double.self, forKey: .revenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelled = try container.decode(Double.self, forKey: .cancelled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returns = try container.decode(Double.self, forKey: .returns)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    catalogue = try container.decode(Double.self, forKey: .catalogue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listing = try container.decode(Double.self, forKey: .listing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(popularity, forKey: .popularity)
            
            
            
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            
            
            
            try? container.encodeIfPresent(conversion, forKey: .conversion)
            
            
            
            
            try? container.encodeIfPresent(soldQuantity, forKey: .soldQuantity)
            
            
            
            
            try? container.encodeIfPresent(depth, forKey: .depth)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(revenue, forKey: .revenue)
            
            
            
            
            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
            
            
            
            
            try? container.encodeIfPresent(returns, forKey: .returns)
            
            
            
            
            try? container.encodeIfPresent(catalogue, forKey: .catalogue)
            
            
            
            
            try? container.encodeIfPresent(listing, forKey: .listing)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Scores
        Used By: Catalog
    */

    class Scores: Codable {
        
        
        public var popularity: Double?
        
        public var availability: Double?
        
        public var conversion: Double?
        
        public var soldQuantity: Double?
        
        public var depth: Double?
        
        public var discount: Double?
        
        public var revenue: Double?
        
        public var cancelled: Double?
        
        public var returns: Double?
        
        public var catalogue: Double?
        
        public var listing: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case popularity = "popularity"
            
            case availability = "availability"
            
            case conversion = "conversion"
            
            case soldQuantity = "sold_quantity"
            
            case depth = "depth"
            
            case discount = "discount"
            
            case revenue = "revenue"
            
            case cancelled = "cancelled"
            
            case returns = "returns"
            
            case catalogue = "catalogue"
            
            case listing = "listing"
            
        }

        public init(availability: Double? = nil, cancelled: Double? = nil, catalogue: Double? = nil, conversion: Double? = nil, depth: Double? = nil, discount: Double? = nil, listing: Double? = nil, popularity: Double? = nil, returns: Double? = nil, revenue: Double? = nil, soldQuantity: Double? = nil) {
            
            self.popularity = popularity
            
            self.availability = availability
            
            self.conversion = conversion
            
            self.soldQuantity = soldQuantity
            
            self.depth = depth
            
            self.discount = discount
            
            self.revenue = revenue
            
            self.cancelled = cancelled
            
            self.returns = returns
            
            self.catalogue = catalogue
            
            self.listing = listing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    popularity = try container.decode(Double.self, forKey: .popularity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availability = try container.decode(Double.self, forKey: .availability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conversion = try container.decode(Double.self, forKey: .conversion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    soldQuantity = try container.decode(Double.self, forKey: .soldQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    depth = try container.decode(Double.self, forKey: .depth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revenue = try container.decode(Double.self, forKey: .revenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelled = try container.decode(Double.self, forKey: .cancelled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returns = try container.decode(Double.self, forKey: .returns)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    catalogue = try container.decode(Double.self, forKey: .catalogue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listing = try container.decode(Double.self, forKey: .listing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(popularity, forKey: .popularity)
            
            
            
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            
            
            
            try? container.encodeIfPresent(conversion, forKey: .conversion)
            
            
            
            
            try? container.encodeIfPresent(soldQuantity, forKey: .soldQuantity)
            
            
            
            
            try? container.encodeIfPresent(depth, forKey: .depth)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(revenue, forKey: .revenue)
            
            
            
            
            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
            
            
            
            
            try? container.encodeIfPresent(returns, forKey: .returns)
            
            
            
            
            try? container.encodeIfPresent(catalogue, forKey: .catalogue)
            
            
            
            
            try? container.encodeIfPresent(listing, forKey: .listing)
            
            
        }
        
    }
}


