

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Collecttion
         Used By: Cart
     */

    class Collecttion: Codable {
        public var collectedBy: String

        public var refundBy: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case refundBy = "refund_by"
        }

        public init(collectedBy: String, refundBy: String) {
            self.collectedBy = collectedBy

            self.refundBy = refundBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundBy = try container.decode(String.self, forKey: .refundBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
        }
    }
}
