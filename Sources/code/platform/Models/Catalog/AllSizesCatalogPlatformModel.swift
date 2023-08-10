

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AllSizes
        Used By: Catalog
    */

    class AllSizes: Codable {
        
        
        public var itemWidth: Double
        
        public var size: [String: Any]
        
        public var itemWeight: Double
        
        public var identifiers: [ValidateIdentifier]?
        
        public var itemWeightUnitOfMeasure: [String: Any]
        
        public var itemLength: Double
        
        public var itemHeight: Double
        
        public var itemDimensionsUnitOfMeasure: String
        

        public enum CodingKeys: String, CodingKey {
            
            case itemWidth = "item_width"
            
            case size = "size"
            
            case itemWeight = "item_weight"
            
            case identifiers = "identifiers"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case itemLength = "item_length"
            
            case itemHeight = "item_height"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            
            self.itemWidth = itemWidth
            
            self.size = size
            
            self.itemWeight = itemWeight
            
            self.identifiers = identifiers
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.itemLength = itemLength
            
            self.itemHeight = itemHeight
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)
                
            
            
            
                size = try container.decode([String: Any].self, forKey: .size)
                
            
            
            
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
            
            
            
                do {
                    identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)
                
            
            
            
                itemLength = try container.decode(Double.self, forKey: .itemLength)
                
            
            
            
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)
                
            
            
            
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AllSizes
        Used By: Catalog
    */

    class AllSizes: Codable {
        
        
        public var itemWidth: Double
        
        public var size: [String: Any]
        
        public var itemWeight: Double
        
        public var identifiers: [ValidateIdentifier]?
        
        public var itemWeightUnitOfMeasure: [String: Any]
        
        public var itemLength: Double
        
        public var itemHeight: Double
        
        public var itemDimensionsUnitOfMeasure: String
        

        public enum CodingKeys: String, CodingKey {
            
            case itemWidth = "item_width"
            
            case size = "size"
            
            case itemWeight = "item_weight"
            
            case identifiers = "identifiers"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case itemLength = "item_length"
            
            case itemHeight = "item_height"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            
            self.itemWidth = itemWidth
            
            self.size = size
            
            self.itemWeight = itemWeight
            
            self.identifiers = identifiers
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.itemLength = itemLength
            
            self.itemHeight = itemHeight
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)
                
            
            
            
                size = try container.decode([String: Any].self, forKey: .size)
                
            
            
            
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
            
            
            
                do {
                    identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)
                
            
            
            
                itemLength = try container.decode(Double.self, forKey: .itemLength)
                
            
            
            
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)
                
            
            
            
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
        }
        
    }
}


