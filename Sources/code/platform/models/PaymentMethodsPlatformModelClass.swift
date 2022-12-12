

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentMethods
         Used By: OrderManage
     */

    class PaymentMethods: Codable {
        public var collectBy: String?

        public var refundBy: String?

        public var mode: String?

        public enum CodingKeys: String, CodingKey {
            case collectBy = "collect_by"

            case refundBy = "refund_by"

            case mode
        }

        public init(collectBy: String? = nil, mode: String? = nil, refundBy: String? = nil) {
            self.collectBy = collectBy

            self.refundBy = refundBy

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                collectBy = try container.decode(String.self, forKey: .collectBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundBy = try container.decode(String.self, forKey: .refundBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
