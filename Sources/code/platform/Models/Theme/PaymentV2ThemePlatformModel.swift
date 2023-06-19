

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: PaymentV2
         Used By: Theme
     */

    class PaymentV2: Codable {
        public var isPaid: Bool?

        public var amount: Double?

        public enum CodingKeys: String, CodingKey {
            case isPaid = "is_paid"

            case amount
        }

        public init(amount: Double? = nil, isPaid: Bool? = nil) {
            self.isPaid = isPaid

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPaid = try container.decode(Bool.self, forKey: .isPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPaid, forKey: .isPaid)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: PaymentV2
         Used By: Theme
     */

    class PaymentV2: Codable {
        public var isPaid: Bool?

        public var amount: Double?

        public enum CodingKeys: String, CodingKey {
            case isPaid = "is_paid"

            case amount
        }

        public init(amount: Double? = nil, isPaid: Bool? = nil) {
            self.isPaid = isPaid

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPaid = try container.decode(Bool.self, forKey: .isPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPaid, forKey: .isPaid)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
