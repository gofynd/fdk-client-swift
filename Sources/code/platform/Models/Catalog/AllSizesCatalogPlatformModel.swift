

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var size: String

        public var itemWeightUnitOfMeasure: String

        public var itemWeight: Double

        public var itemLength: Double

        public var itemWidth: Double

        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public var itemHeight: Double

        public enum CodingKeys: String, CodingKey {
            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWeight = "item_weight"

            case itemLength = "item_length"

            case itemWidth = "item_width"

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemHeight = "item_height"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWeight = itemWeight

            self.itemLength = itemLength

            self.itemWidth = itemWidth

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemHeight = itemHeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var size: String

        public var itemWeightUnitOfMeasure: String

        public var itemWeight: Double

        public var itemLength: Double

        public var itemWidth: Double

        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public var itemHeight: Double

        public enum CodingKeys: String, CodingKey {
            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWeight = "item_weight"

            case itemLength = "item_length"

            case itemWidth = "item_width"

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemHeight = "item_height"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWeight = itemWeight

            self.itemLength = itemLength

            self.itemWidth = itemWidth

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemHeight = itemHeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
        }
    }
}
