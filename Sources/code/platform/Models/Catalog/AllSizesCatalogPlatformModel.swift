

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemDimensionsUnitOfMeasure: String

        public var itemWidth: Double

        public var itemLength: Double

        public var itemWeight: Double

        public var itemWeightUnitOfMeasure: String

        public var itemHeight: Double

        public var identifiers: [ValidateIdentifier]?

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemHeight = "item_height"

            case identifiers

            case size
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemDimensionsUnitOfMeasure: String

        public var itemWidth: Double

        public var itemLength: Double

        public var itemWeight: Double

        public var itemWeightUnitOfMeasure: String

        public var itemHeight: Double

        public var identifiers: [ValidateIdentifier]?

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemHeight = "item_height"

            case identifiers

            case size
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
