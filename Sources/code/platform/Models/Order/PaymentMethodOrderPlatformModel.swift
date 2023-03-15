

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var amount: Double

        public var collectBy: String

        public var refundBy: String

        public var name: String

        public var mode: String

        public var meta: [String: Any]?

        public var transactionData: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amount

            case collectBy = "collect_by"

            case refundBy = "refund_by"

            case name

            case mode

            case meta

            case transactionData = "transaction_data"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.collectBy = collectBy

            self.refundBy = refundBy

            self.name = name

            self.mode = mode

            self.meta = meta

            self.transactionData = transactionData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            name = try container.decode(String.self, forKey: .name)

            mode = try container.decode(String.self, forKey: .mode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
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

        public var collectBy: String

        public var refundBy: String

        public var name: String

        public var mode: String

        public var meta: [String: Any]?

        public var transactionData: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amount

            case collectBy = "collect_by"

            case refundBy = "refund_by"

            case name

            case mode

            case meta

            case transactionData = "transaction_data"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.collectBy = collectBy

            self.refundBy = refundBy

            self.name = name

            self.mode = mode

            self.meta = meta

            self.transactionData = transactionData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            name = try container.decode(String.self, forKey: .name)

            mode = try container.decode(String.self, forKey: .mode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
        }
    }
}
