

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeight: Double

        public var itemHeight: Double

        public var itemWidth: Double

        public var itemLength: Double

        public var itemWeightUnitOfMeasure: String

        public var size: String

        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            size = try container.decode(String.self, forKey: .size)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

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
        public var itemWeight: Double

        public var itemHeight: Double

        public var itemWidth: Double

        public var itemLength: Double

        public var itemWeightUnitOfMeasure: String

        public var size: String

        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: String, itemWidth: Double, size: String) {
            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            size = try container.decode(String.self, forKey: .size)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
        }
    }
}
