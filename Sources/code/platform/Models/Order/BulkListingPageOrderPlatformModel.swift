

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BulkListingPage
         Used By: Order
     */

    class BulkListingPage: Codable {
        public var size: Int?

        public var total: Int?

        public var current: Int?

        public var hasPrevious: Bool?

        public var type: String?

        public var hasNext: Bool?

        public enum CodingKeys: String, CodingKey {
            case size

            case total

            case current

            case hasPrevious = "has_previous"

            case type

            case hasNext = "has_next"
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, size: Int? = nil, total: Int? = nil, type: String? = nil) {
            self.size = size

            self.total = total

            self.current = current

            self.hasPrevious = hasPrevious

            self.type = type

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BulkListingPage
         Used By: Order
     */

    class BulkListingPage: Codable {
        public var size: Int?

        public var total: Int?

        public var current: Int?

        public var hasPrevious: Bool?

        public var type: String?

        public var hasNext: Bool?

        public enum CodingKeys: String, CodingKey {
            case size

            case total

            case current

            case hasPrevious = "has_previous"

            case type

            case hasNext = "has_next"
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, size: Int? = nil, total: Int? = nil, type: String? = nil) {
            self.size = size

            self.total = total

            self.current = current

            self.hasPrevious = hasPrevious

            self.type = type

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
