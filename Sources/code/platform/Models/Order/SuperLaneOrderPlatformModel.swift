

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SuperLane
         Used By: Order
     */

    class SuperLane: Codable {
        public var text: String

        public var options: [SubLane]?

        public var totalItems: Int?

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case text

            case options

            case totalItems = "total_items"

            case value
        }

        public init(options: [SubLane]? = nil, text: String, totalItems: Int? = nil, value: String) {
            self.text = text

            self.options = options

            self.totalItems = totalItems

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SuperLane
         Used By: Order
     */

    class SuperLane: Codable {
        public var text: String

        public var options: [SubLane]?

        public var totalItems: Int?

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case text

            case options

            case totalItems = "total_items"

            case value
        }

        public init(options: [SubLane]? = nil, text: String, totalItems: Int? = nil, value: String) {
            self.text = text

            self.options = options

            self.totalItems = totalItems

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            text = try container.decode(String.self, forKey: .text)

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
