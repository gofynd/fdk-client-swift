

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventorySetSchema
        Used By: Catalog
    */

    class InventorySetSchema: Codable {
        
        
        public var quantity: Int?
        
        public var sizeDistribution: SizeDistributionSchema?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case sizeDistribution = "size_distribution"
            
            case name = "name"
            
        }

        public init(name: String? = nil, quantity: Int? = nil, sizeDistribution: SizeDistributionSchema? = nil) {
            
            self.quantity = quantity
            
            self.sizeDistribution = sizeDistribution
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizeDistribution = try container.decode(SizeDistributionSchema.self, forKey: .sizeDistribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventorySetSchema
        Used By: Catalog
    */

    class InventorySetSchema: Codable {
        
        
        public var quantity: Int?
        
        public var sizeDistribution: SizeDistributionSchema?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case sizeDistribution = "size_distribution"
            
            case name = "name"
            
        }

        public init(name: String? = nil, quantity: Int? = nil, sizeDistribution: SizeDistributionSchema? = nil) {
            
            self.quantity = quantity
            
            self.sizeDistribution = sizeDistribution
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizeDistribution = try container.decode(SizeDistributionSchema.self, forKey: .sizeDistribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


