

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryReason
         Used By: Order
     */

    class HistoryReason: Codable {
        public var state: String?

        public var text: String?

        public var dislayName: String?

        public var quantity: Int?

        public var category: String?

        public var code: Int?

        public enum CodingKeys: String, CodingKey {
            case state

            case text

            case dislayName = "dislay_name"

            case quantity

            case category

            case code
        }

        public init(category: String? = nil, code: Int? = nil, dislayName: String? = nil, quantity: Int? = nil, state: String? = nil, text: String? = nil) {
            self.state = state

            self.text = text

            self.dislayName = dislayName

            self.quantity = quantity

            self.category = category

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dislayName = try container.decode(String.self, forKey: .dislayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(state, forKey: .state)

            try? container.encode(text, forKey: .text)

            try? container.encode(dislayName, forKey: .dislayName)

            try? container.encode(quantity, forKey: .quantity)

            try? container.encode(category, forKey: .category)

            try? container.encode(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryReason
         Used By: Order
     */

    class HistoryReason: Codable {
        public var state: String?

        public var text: String?

        public var dislayName: String?

        public var quantity: Int?

        public var category: String?

        public var code: Int?

        public enum CodingKeys: String, CodingKey {
            case state

            case text

            case dislayName = "dislay_name"

            case quantity

            case category

            case code
        }

        public init(category: String? = nil, code: Int? = nil, dislayName: String? = nil, quantity: Int? = nil, state: String? = nil, text: String? = nil) {
            self.state = state

            self.text = text

            self.dislayName = dislayName

            self.quantity = quantity

            self.category = category

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dislayName = try container.decode(String.self, forKey: .dislayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(state, forKey: .state)

            try? container.encode(text, forKey: .text)

            try? container.encode(dislayName, forKey: .dislayName)

            try? container.encode(quantity, forKey: .quantity)

            try? container.encode(category, forKey: .category)

            try? container.encode(code, forKey: .code)
        }
    }
}
