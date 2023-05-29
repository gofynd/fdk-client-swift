

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Bags
         Used By: Order
     */

    class Bags: Codable {
        public var bagId: Int?

        public var affiliateOrderId: String?

        public var affiliateBagId: String?

        public var isLocked: Bool?

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateBagId = "affiliate_bag_id"

            case isLocked = "is_locked"
        }

        public init(affiliateBagId: String? = nil, affiliateOrderId: String? = nil, bagId: Int? = nil, isLocked: Bool? = nil) {
            self.bagId = bagId

            self.affiliateOrderId = affiliateOrderId

            self.affiliateBagId = affiliateBagId

            self.isLocked = isLocked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            do {
                isLocked = try container.decode(Bool.self, forKey: .isLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(isLocked, forKey: .isLocked)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Bags
         Used By: Order
     */

    class Bags: Codable {
        public var bagId: Int?

        public var affiliateOrderId: String?

        public var affiliateBagId: String?

        public var isLocked: Bool?

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateBagId = "affiliate_bag_id"

            case isLocked = "is_locked"
        }

        public init(affiliateBagId: String? = nil, affiliateOrderId: String? = nil, bagId: Int? = nil, isLocked: Bool? = nil) {
            self.bagId = bagId

            self.affiliateOrderId = affiliateOrderId

            self.affiliateBagId = affiliateBagId

            self.isLocked = isLocked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            do {
                isLocked = try container.decode(Bool.self, forKey: .isLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(isLocked, forKey: .isLocked)
        }
    }
}
