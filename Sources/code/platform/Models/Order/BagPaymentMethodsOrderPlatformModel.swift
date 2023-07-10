

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagPaymentMethods
         Used By: Order
     */

    class BagPaymentMethods: Codable {
        public var amount: Double?

        public var mode: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case mode
        }

        public init(amount: Double? = nil, mode: String? = nil) {
            self.amount = amount

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagPaymentMethods
         Used By: Order
     */

    class BagPaymentMethods: Codable {
        public var amount: Double?

        public var mode: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case mode
        }

        public init(amount: Double? = nil, mode: String? = nil) {
            self.amount = amount

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
