

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod1
         Used By: Order
     */

    class PaymentMethod1: Codable {
        public var transactionData: [String: Any]?

        public var refundBy: String

        public var amount: Double

        public var meta: [String: Any]?

        public var collectBy: String

        public var name: String

        public var mode: String

        public enum CodingKeys: String, CodingKey {
            case transactionData = "transaction_data"

            case refundBy = "refund_by"

            case amount

            case meta

            case collectBy = "collect_by"

            case name

            case mode
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.transactionData = transactionData

            self.refundBy = refundBy

            self.amount = amount

            self.meta = meta

            self.collectBy = collectBy

            self.name = name

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectBy = try container.decode(String.self, forKey: .collectBy)

            name = try container.decode(String.self, forKey: .name)

            mode = try container.decode(String.self, forKey: .mode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentMethod1
         Used By: Order
     */

    class PaymentMethod1: Codable {
        public var transactionData: [String: Any]?

        public var refundBy: String

        public var amount: Double

        public var meta: [String: Any]?

        public var collectBy: String

        public var name: String

        public var mode: String

        public enum CodingKeys: String, CodingKey {
            case transactionData = "transaction_data"

            case refundBy = "refund_by"

            case amount

            case meta

            case collectBy = "collect_by"

            case name

            case mode
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.transactionData = transactionData

            self.refundBy = refundBy

            self.amount = amount

            self.meta = meta

            self.collectBy = collectBy

            self.name = name

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectBy = try container.decode(String.self, forKey: .collectBy)

            name = try container.decode(String.self, forKey: .name)

            mode = try container.decode(String.self, forKey: .mode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
