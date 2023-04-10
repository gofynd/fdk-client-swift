

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBagDetails
         Used By: Order
     */

    class AffiliateBagDetails: Codable {
        public var affiliateBagId: String

        public var affiliateOrderId: String

        public var affiliateMeta: AffiliateMeta

        public var employeeDiscount: Double?

        public var loyaltyDiscount: Double?

        public enum CodingKeys: String, CodingKey {
            case affiliateBagId = "affiliate_bag_id"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateMeta = "affiliate_meta"

            case employeeDiscount = "employee_discount"

            case loyaltyDiscount = "loyalty_discount"
        }

        public init(affiliateBagId: String, affiliateMeta: AffiliateMeta, affiliateOrderId: String, employeeDiscount: Double? = nil, loyaltyDiscount: Double? = nil) {
            self.affiliateBagId = affiliateBagId

            self.affiliateOrderId = affiliateOrderId

            self.affiliateMeta = affiliateMeta

            self.employeeDiscount = employeeDiscount

            self.loyaltyDiscount = loyaltyDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
        }
    }
}
