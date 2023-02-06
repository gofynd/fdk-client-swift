

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentMethod
         Used By: OrderManage
     */

    class PaymentMethod: Codable {
        public var name: String

        public var meta: [String: Any]?

        public var amount: Double

        public var transactionData: [String: Any]?

        public var collectBy: String

        public var refundBy: String

        public var mode: String

        public enum CodingKeys: String, CodingKey {
            case name

            case meta

            case amount

            case transactionData = "transaction_data"

            case collectBy = "collect_by"

            case refundBy = "refund_by"

            case mode
        }

        public init(amount: Double, collectBy: String, meta: [String: Any]? = nil, mode: String, name: String, refundBy: String, transactionData: [String: Any]? = nil) {
            self.name = name

            self.meta = meta

            self.amount = amount

            self.transactionData = transactionData

            self.collectBy = collectBy

            self.refundBy = refundBy

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                transactionData = try container.decode([String: Any].self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectBy = try container.decode(String.self, forKey: .collectBy)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mode = try container.decode(String.self, forKey: .mode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
