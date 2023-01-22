

import Foundation
public extension PlatformClient {
    /*
        Model: ALLSizes
        Used By: Catalog
    */

    class ALLSizes: Codable {
        
        
        public var size: [String: Any]
        
        public var itemWeightUnitOfMeasure: [String: Any]
        
        public var itemLength: Double
        
        public var itemHeight: Double
        
        public var identifiers: [ValidateIdentifier]?
        
        public var itemWidth: Double
        
        public var itemWeight: Double
        
        public var itemDimensionsUnitOfMeasure: String
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case itemLength = "item_length"
            
            case itemHeight = "item_height"
            
            case identifiers = "identifiers"
            
            case itemWidth = "item_width"
            
            case itemWeight = "item_weight"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            
            self.size = size
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.itemLength = itemLength
            
            self.itemHeight = itemHeight
            
            self.identifiers = identifiers
            
            self.itemWidth = itemWidth
            
            self.itemWeight = itemWeight
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode([String: Any].self, forKey: .size)
                
            
            
            
                itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)
                
            
            
            
                itemLength = try container.decode(Double.self, forKey: .itemLength)
                
            
            
            
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)
                
            
            
            
                do {
                    identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)
                
            
            
            
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
            
            
            
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
        }
        
    }
}
