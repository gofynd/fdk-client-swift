

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var amount: Double

        public var mode: String

        public var transactionData: [String: Any]?

        public var name: String

        public var refundBy: String

        public var meta: [String: Any]?

        public var collectBy: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case mode

            case transactionData = "transaction_data"

            case name

            case refundBy = "refund_by"

            case meta

            case collectBy = "collect_by"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.mode = mode

            self.transactionData = transactionData

            self.name = name

            self.refundBy = refundBy

            self.meta = meta

            self.collectBy = collectBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectBy = try container.decode(String.self, forKey: .collectBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

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
        public var amount: Double

        public var mode: String

        public var transactionData: [String: Any]?

        public var name: String

        public var refundBy: String

        public var meta: [String: Any]?

        public var collectBy: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case mode

            case transactionData = "transaction_data"

            case name

            case refundBy = "refund_by"

            case meta

            case collectBy = "collect_by"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.mode = mode

            self.transactionData = transactionData

            self.name = name

            self.refundBy = refundBy

            self.meta = meta

            self.collectBy = collectBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectBy = try container.decode(String.self, forKey: .collectBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
        }
    }
}
