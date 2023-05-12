

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemWeightUnitOfMeasure: [String: Any]

        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeight: Double

        public var itemHeight: Double

        public var itemLength: Double

        public var itemWidth: Double

        public var size: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemLength = "item_length"

            case itemWidth = "item_width"

            case size
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemLength = itemLength

            self.itemWidth = itemWidth

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            size = try container.decode([String: Any].self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

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
        public var itemWeightUnitOfMeasure: [String: Any]

        public var identifiers: [ValidateIdentifier]?

        public var itemDimensionsUnitOfMeasure: String

        public var itemWeight: Double

        public var itemHeight: Double

        public var itemLength: Double

        public var itemWidth: Double

        public var size: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemLength = "item_length"

            case itemWidth = "item_width"

            case size
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemLength = itemLength

            self.itemWidth = itemWidth

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            size = try container.decode([String: Any].self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
