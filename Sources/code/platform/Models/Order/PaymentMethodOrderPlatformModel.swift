

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var refundBy: String

        public var mode: String

        public var name: String

        public var transactionData: [String: Any]?

        public var meta: [String: Any]?

        public var amount: Double

        public var collectBy: String

        public enum CodingKeys: String, CodingKey {
            case refundBy = "refund_by"

            case mode

            case name

            case transactionData = "transaction_data"

            case meta

            case amount

            case collectBy = "collect_by"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.refundBy = refundBy

            self.mode = mode

            self.name = name

            self.transactionData = transactionData

            self.meta = meta

            self.amount = amount

            self.collectBy = collectBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mode = try container.decode(String.self, forKey: .mode)

            name = try container.decode(String.self, forKey: .name)

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

            amount = try container.decode(Double.self, forKey: .amount)

            collectBy = try container.decode(String.self, forKey: .collectBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var refundBy: String

        public var mode: String

        public var name: String

        public var transactionData: [String: Any]?

        public var meta: [String: Any]?

        public var amount: Double

        public var collectBy: String

        public enum CodingKeys: String, CodingKey {
            case refundBy = "refund_by"

            case mode

            case name

            case transactionData = "transaction_data"

            case meta

            case amount

            case collectBy = "collect_by"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.refundBy = refundBy

            self.mode = mode

            self.name = name

            self.transactionData = transactionData

            self.meta = meta

            self.amount = amount

            self.collectBy = collectBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mode = try container.decode(String.self, forKey: .mode)

            name = try container.decode(String.self, forKey: .name)

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

            amount = try container.decode(Double.self, forKey: .amount)

            collectBy = try container.decode(String.self, forKey: .collectBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
        }
    }
}
