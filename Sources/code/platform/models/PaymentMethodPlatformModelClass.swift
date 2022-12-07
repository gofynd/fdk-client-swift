

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var transactionData: [String: Any]?

        public var collectBy: String

        public var mode: String

        public var refundBy: String

        public var name: String

        public var meta: [String: Any]?

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case transactionData = "transaction_data"

            case collectBy = "collect_by"

            case mode

            case refundBy = "refund_by"

            case name

            case meta

            case amount
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.transactionData = transactionData

            self.collectBy = collectBy

            self.mode = mode

            self.refundBy = refundBy

            self.name = name

            self.meta = meta

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectBy = try container.decode(String.self, forKey: .collectBy)

            mode = try container.decode(String.self, forKey: .mode)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
