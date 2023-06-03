

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Dimension
         Used By: Order
     */

    class Dimension: Codable {
        public var length: Double?

        public var packagingType: String?

        public var height: String?

        public var weight: String?

        public var width: Double?

        public enum CodingKeys: String, CodingKey {
            case length

            case packagingType = "packaging_type"

            case height

            case weight

            case width
        }

        public init(height: String? = nil, length: Double? = nil, packagingType: String? = nil, weight: String? = nil, width: Double? = nil) {
            self.length = length

            self.packagingType = packagingType

            self.height = height

            self.weight = weight

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                length = try container.decode(Double.self, forKey: .length)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingType = try container.decode(String.self, forKey: .packagingType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                height = try container.decode(String.self, forKey: .height)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(String.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                width = try container.decode(Double.self, forKey: .width)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Dimension
         Used By: Order
     */

    class Dimension: Codable {
        public var length: Double?

        public var packagingType: String?

        public var height: String?

        public var weight: String?

        public var width: Double?

        public enum CodingKeys: String, CodingKey {
            case length

            case packagingType = "packaging_type"

            case height

            case weight

            case width
        }

        public init(height: String? = nil, length: Double? = nil, packagingType: String? = nil, weight: String? = nil, width: Double? = nil) {
            self.length = length

            self.packagingType = packagingType

            self.height = height

            self.weight = weight

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                length = try container.decode(Double.self, forKey: .length)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingType = try container.decode(String.self, forKey: .packagingType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                height = try container.decode(String.self, forKey: .height)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(String.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                width = try container.decode(Double.self, forKey: .width)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}
