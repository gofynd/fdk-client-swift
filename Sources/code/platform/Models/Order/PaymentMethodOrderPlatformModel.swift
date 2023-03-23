

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var refundBy: String

        public var name: String

        public var collectBy: String

        public var mode: String

        public var amount: Double

        public var meta: [String: Any]?

        public var transactionData: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case refundBy = "refund_by"

            case name

            case collectBy = "collect_by"

            case mode

            case amount

            case meta

            case transactionData = "transaction_data"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.refundBy = refundBy

            self.name = name

            self.collectBy = collectBy

            self.mode = mode

            self.amount = amount

            self.meta = meta

            self.transactionData = transactionData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            name = try container.decode(String.self, forKey: .name)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            mode = try container.decode(String.self, forKey: .mode)

            amount = try container.decode(Double.self, forKey: .amount)

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

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(amount, forKey: .amount)

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
        public var refundBy: String

        public var name: String

        public var collectBy: String

        public var mode: String

        public var amount: Double

        public var meta: [String: Any]?

        public var transactionData: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case refundBy = "refund_by"

            case name

            case collectBy = "collect_by"

            case mode

            case amount

            case meta

            case transactionData = "transaction_data"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.refundBy = refundBy

            self.name = name

            self.collectBy = collectBy

            self.mode = mode

            self.amount = amount

            self.meta = meta

            self.transactionData = transactionData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            name = try container.decode(String.self, forKey: .name)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            mode = try container.decode(String.self, forKey: .mode)

            amount = try container.decode(Double.self, forKey: .amount)

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

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
        }
    }
}
