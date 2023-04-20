

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemHeight: Double

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemLength: Double

        public var itemDimensionsUnitOfMeasure: String

        public var identifiers: [ValidateIdentifier]?

        public var size: [String: Any]

        public var itemWidth: Double

        public var itemWeight: Double

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case size

            case itemWidth = "item_width"

            case itemWeight = "item_weight"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.size = size

            self.itemWidth = itemWidth

            self.itemWeight = itemWeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AllSizes
         Used By: Catalog
     */

    class AllSizes: Codable {
        public var itemHeight: Double

        public var itemWeightUnitOfMeasure: [String: Any]

        public var itemLength: Double

        public var itemDimensionsUnitOfMeasure: String

        public var identifiers: [ValidateIdentifier]?

        public var size: [String: Any]

        public var itemWidth: Double

        public var itemWeight: Double

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemLength = "item_length"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case size

            case itemWidth = "item_width"

            case itemWeight = "item_weight"
        }

        public init(identifiers: [ValidateIdentifier]? = nil, itemDimensionsUnitOfMeasure: String, itemHeight: Double, itemLength: Double, itemWeight: Double, itemWeightUnitOfMeasure: [String: Any], itemWidth: Double, size: [String: Any]) {
            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemLength = itemLength

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.size = size

            self.itemWidth = itemWidth

            self.itemWeight = itemWeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            itemWeightUnitOfMeasure = try container.decode([String: Any].self, forKey: .itemWeightUnitOfMeasure)

            itemLength = try container.decode(Double.self, forKey: .itemLength)

            itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            do {
                identifiers = try container.decode([ValidateIdentifier].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)

            itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            itemWeight = try container.decode(Double.self, forKey: .itemWeight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
        }
    }
}
