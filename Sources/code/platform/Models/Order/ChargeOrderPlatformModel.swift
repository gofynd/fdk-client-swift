

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Charge
         Used By: Order
     */

    class Charge: Codable {
        public var name: String

        public var amount: [String: Any]

        public var tax: Tax?

        public var code: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case name

            case amount

            case tax

            case code

            case type
        }

        public init(amount: [String: Any], code: String? = nil, name: String, tax: Tax? = nil, type: String) {
            self.name = name

            self.amount = amount

            self.tax = tax

            self.code = code

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            amount = try container.decode([String: Any].self, forKey: .amount)

            do {
                tax = try container.decode(Tax.self, forKey: .tax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(tax, forKey: .tax)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Charge
         Used By: Order
     */

    class Charge: Codable {
        public var name: String

        public var amount: [String: Any]

        public var tax: Tax?

        public var code: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case name

            case amount

            case tax

            case code

            case type
        }

        public init(amount: [String: Any], code: String? = nil, name: String, tax: Tax? = nil, type: String) {
            self.name = name

            self.amount = amount

            self.tax = tax

            self.code = code

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            amount = try container.decode([String: Any].self, forKey: .amount)

            do {
                tax = try container.decode(Tax.self, forKey: .tax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(tax, forKey: .tax)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
