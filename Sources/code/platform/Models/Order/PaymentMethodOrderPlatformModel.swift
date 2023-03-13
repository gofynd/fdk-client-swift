

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var name: String

        public var collectBy: String

        public var transactionData: [String: Any]?

        public var meta: [String: Any]?

        public var refundBy: String

        public var mode: String

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case name

            case collectBy = "collect_by"

            case transactionData = "transaction_data"

            case meta

            case refundBy = "refund_by"

            case mode

            case amount
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.name = name

            self.collectBy = collectBy

            self.transactionData = transactionData

            self.meta = meta

            self.refundBy = refundBy

            self.mode = mode

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mode = try container.decode(String.self, forKey: .mode)

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var name: String

        public var collectBy: String

        public var transactionData: [String: Any]?

        public var meta: [String: Any]?

        public var refundBy: String

        public var mode: String

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case name

            case collectBy = "collect_by"

            case transactionData = "transaction_data"

            case meta

            case refundBy = "refund_by"

            case mode

            case amount
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.name = name

            self.collectBy = collectBy

            self.transactionData = transactionData

            self.meta = meta

            self.refundBy = refundBy

            self.mode = mode

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mode = try container.decode(String.self, forKey: .mode)

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
