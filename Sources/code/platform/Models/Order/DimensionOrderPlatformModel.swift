

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Dimension
         Used By: Order
     */

    class Dimension: Codable {
        public var width: Double?

        public var height: String?

        public var weight: String?

        public var length: Double?

        public var packagingType: String?

        public enum CodingKeys: String, CodingKey {
            case width

            case height

            case weight

            case length

            case packagingType = "packaging_type"
        }

        public init(height: String? = nil, length: Double? = nil, packagingType: String? = nil, weight: String? = nil, width: Double? = nil) {
            self.width = width

            self.height = height

            self.weight = weight

            self.length = length

            self.packagingType = packagingType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                width = try container.decode(Double.self, forKey: .width)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Dimension
         Used By: Order
     */

    class Dimension: Codable {
        public var width: Double?

        public var height: String?

        public var weight: String?

        public var length: Double?

        public var packagingType: String?

        public enum CodingKeys: String, CodingKey {
            case width

            case height

            case weight

            case length

            case packagingType = "packaging_type"
        }

        public init(height: String? = nil, length: Double? = nil, packagingType: String? = nil, weight: String? = nil, width: Double? = nil) {
            self.width = width

            self.height = height

            self.weight = weight

            self.length = length

            self.packagingType = packagingType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                width = try container.decode(Double.self, forKey: .width)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
        }
    }
}
