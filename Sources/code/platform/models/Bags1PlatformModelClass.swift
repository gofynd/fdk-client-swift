

import Foundation
public extension PlatformClient {
    /*
         Model: Bags1
         Used By: Order
     */

    class Bags1: Codable {
        public var affiliateOrderId: String?

        public var bagId: Int?

        public var isLocked: Bool?

        public var affiliateBagId: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateOrderId = "affiliate_order_id"

            case bagId = "bag_id"

            case isLocked = "is_locked"

            case affiliateBagId = "affiliate_bag_id"
        }

        public init(affiliateBagId: String? = nil, affiliateOrderId: String? = nil, bagId: Int? = nil, isLocked: Bool? = nil) {
            self.affiliateOrderId = affiliateOrderId

            self.bagId = bagId

            self.isLocked = isLocked

            self.affiliateBagId = affiliateBagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isLocked = try container.decode(Bool.self, forKey: .isLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(isLocked, forKey: .isLocked)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
        }
    }
}
