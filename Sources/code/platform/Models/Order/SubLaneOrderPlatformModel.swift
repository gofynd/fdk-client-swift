

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SubLane
         Used By: Order
     */

    class SubLane: Codable {
        public var text: String?

        public var value: String?

        public var totalItems: Int?

        public var index: Int?

        public var actions: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case totalItems = "total_items"

            case index

            case actions
        }

        public init(actions: [[String: Any]]? = nil, index: Int? = nil, text: String? = nil, totalItems: Int? = nil, value: String? = nil) {
            self.text = text

            self.value = value

            self.totalItems = totalItems

            self.index = index

            self.actions = actions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

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

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                actions = try container.decode([[String: Any]].self, forKey: .actions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(actions, forKey: .actions)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SubLane
         Used By: Order
     */

    class SubLane: Codable {
        public var text: String?

        public var value: String?

        public var totalItems: Int?

        public var index: Int?

        public var actions: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case text

            case value

            case totalItems = "total_items"

            case index

            case actions
        }

        public init(actions: [[String: Any]]? = nil, index: Int? = nil, text: String? = nil, totalItems: Int? = nil, value: String? = nil) {
            self.text = text

            self.value = value

            self.totalItems = totalItems

            self.index = index

            self.actions = actions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

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

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                actions = try container.decode([[String: Any]].self, forKey: .actions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(actions, forKey: .actions)
        }
    }
}
