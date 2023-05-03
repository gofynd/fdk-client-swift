

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SuperLane
         Used By: Order
     */

    class SuperLane: Codable {
        public var value: String

        public var totalItems: Int?

        public var options: [SubLane]?

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case value

            case totalItems = "total_items"

            case options

            case text
        }

        public init(options: [SubLane]? = nil, text: String, totalItems: Int? = nil, value: String) {
            self.value = value

            self.totalItems = totalItems

            self.options = options

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SuperLane
         Used By: Order
     */

    class SuperLane: Codable {
        public var value: String

        public var totalItems: Int?

        public var options: [SubLane]?

        public var text: String

        public enum CodingKeys: String, CodingKey {
            case value

            case totalItems = "total_items"

            case options

            case text
        }

        public init(options: [SubLane]? = nil, text: String, totalItems: Int? = nil, value: String) {
            self.value = value

            self.totalItems = totalItems

            self.options = options

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                options = try container.decode([SubLane].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}
