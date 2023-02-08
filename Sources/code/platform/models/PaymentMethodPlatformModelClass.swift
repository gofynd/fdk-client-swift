

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var mode: String

        public var meta: [String: Any]?

        public var refundBy: String

        public var collectBy: String

        public var transactionData: [String: Any]?

        public var amount: Double

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case mode

            case meta

            case refundBy = "refund_by"

            case collectBy = "collect_by"

            case transactionData = "transaction_data"

            case amount

            case name
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.mode = mode

            self.meta = meta

            self.refundBy = refundBy

            self.collectBy = collectBy

            self.transactionData = transactionData

            self.amount = amount

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
