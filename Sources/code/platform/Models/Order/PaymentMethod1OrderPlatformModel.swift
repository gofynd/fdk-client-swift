

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod1
         Used By: Order
     */

    class PaymentMethod1: Codable {
        public var amount: Double

        public var refundBy: String

        public var meta: [String: Any]?

        public var transactionData: [String: Any]?

        public var mode: String

        public var collectBy: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case refundBy = "refund_by"

            case meta

            case transactionData = "transaction_data"

            case mode

            case collectBy = "collect_by"

            case name
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.refundBy = refundBy

            self.meta = meta

            self.transactionData = transactionData

            self.mode = mode

            self.collectBy = collectBy

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentMethod1
         Used By: Order
     */

    class PaymentMethod1: Codable {
        public var amount: Double

        public var refundBy: String

        public var meta: [String: Any]?

        public var transactionData: [String: Any]?

        public var mode: String

        public var collectBy: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case refundBy = "refund_by"

            case meta

            case transactionData = "transaction_data"

            case mode

            case collectBy = "collect_by"

            case name
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.refundBy = refundBy

            self.meta = meta

            self.transactionData = transactionData

            self.mode = mode

            self.collectBy = collectBy

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}