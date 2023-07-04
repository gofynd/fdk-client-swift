

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBagsDetails
         Used By: Order
     */

    class AffiliateBagsDetails: Codable {
        public var couponCode: String?

        public var affiliateBagId: String?

        public enum CodingKeys: String, CodingKey {
            case couponCode = "coupon_code"

            case affiliateBagId = "affiliate_bag_id"
        }

        public init(affiliateBagId: String? = nil, couponCode: String? = nil) {
            self.couponCode = couponCode

            self.affiliateBagId = affiliateBagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

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

            try? container.encode(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBagsDetails
         Used By: Order
     */

    class AffiliateBagsDetails: Codable {
        public var couponCode: String?

        public var affiliateBagId: String?

        public enum CodingKeys: String, CodingKey {
            case couponCode = "coupon_code"

            case affiliateBagId = "affiliate_bag_id"
        }

        public init(affiliateBagId: String? = nil, couponCode: String? = nil) {
            self.couponCode = couponCode

            self.affiliateBagId = affiliateBagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

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

            try? container.encode(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
        }
    }
}
