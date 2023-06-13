

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Collecttion
         Used By: Cart
     */

    class Collecttion: Codable {
        public var refundBy: String?

        public var collectedBy: String?

        public enum CodingKeys: String, CodingKey {
            case refundBy = "refund_by"

            case collectedBy = "collected_by"
        }

        public init(collectedBy: String? = nil, refundBy: String? = nil) {
            self.refundBy = refundBy

            self.collectedBy = collectedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundBy = try container.decode(String.self, forKey: .refundBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collectedBy = try container.decode(String.self, forKey: .collectedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)
        }
    }
}
