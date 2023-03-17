

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var amount: Double

        public var collectBy: String

        public var meta: [String: Any]?

        public var refundBy: String

        public var mode: String

        public var name: String

        public var transactionData: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amount

            case collectBy = "collect_by"

            case meta

            case refundBy = "refund_by"

            case mode

            case name

            case transactionData = "transaction_data"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.collectBy = collectBy

            self.meta = meta

            self.refundBy = refundBy

            self.mode = mode

            self.name = name

            self.transactionData = transactionData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mode = try container.decode(String.self, forKey: .mode)

            name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)

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

        public var meta: [String: Any]?

        public var refundBy: String

        public var mode: String

        public var name: String

        public var transactionData: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amount

            case collectBy = "collect_by"

            case meta

            case refundBy = "refund_by"

            case mode

            case name

            case transactionData = "transaction_data"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.amount = amount

            self.collectBy = collectBy

            self.meta = meta

            self.refundBy = refundBy

            self.mode = mode

            self.name = name

            self.transactionData = transactionData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mode = try container.decode(String.self, forKey: .mode)

            name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
        }
    }
}
