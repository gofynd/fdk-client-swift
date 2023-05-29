

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeight: Double

        public var itemLength: Double

        public var size: String

        public var itemHeight: Double

        public var itemWeightUnitOfMeasure: String

        public var itemWidth: Double

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeight = "item_weight"

            case itemLength = "item_length"

            case size

            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWidth = "item_width"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeight = itemWeight

            self.itemLength = itemLength

            self.size = size

            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            size = try container.decode(String.self, forKey: .size)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeight: Double

        public var itemLength: Double

        public var size: String

        public var itemHeight: Double

        public var itemWeightUnitOfMeasure: String

        public var itemWidth: Double

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeight = "item_weight"

            case itemLength = "item_length"

            case size

            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWidth = "item_width"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeight = itemWeight

            self.itemLength = itemLength

            self.size = size

            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            size = try container.decode(String.self, forKey: .size)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
        }
    }
}
