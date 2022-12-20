

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var collectBy: String

        public var amount: Double

        public var transactionData: [String: Any]?

        public var meta: [String: Any]?

        public var mode: String

        public var name: String

        public var refundBy: String

        public enum CodingKeys: String, CodingKey {
            case collectBy = "collect_by"

            case amount

            case transactionData = "transaction_data"

            case meta

            case mode

            case name

            case refundBy = "refund_by"
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.collectBy = collectBy

            self.amount = amount

            self.transactionData = transactionData

            self.meta = meta

            self.mode = mode

            self.name = name

            self.refundBy = refundBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            amount = try container.decode(Double.self, forKey: .amount)

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

            mode = try container.decode(String.self, forKey: .mode)

            name = try container.decode(String.self, forKey: .name)

            refundBy = try container.decode(String.self, forKey: .refundBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
        }
    }
}
