

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBagDetails
         Used By: Order
     */

    class AffiliateBagDetails: Codable {
        public var employeeDiscount: Double?

        public var affiliateMeta: AffiliateMeta

        public var loyaltyDiscount: Double?

        public var affiliateBagId: String

        public var affiliateOrderId: String

        public enum CodingKeys: String, CodingKey {
            case employeeDiscount = "employee_discount"

            case affiliateMeta = "affiliate_meta"

            case loyaltyDiscount = "loyalty_discount"

            case affiliateBagId = "affiliate_bag_id"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(affiliateBagId: String, affiliateMeta: AffiliateMeta, affiliateOrderId: String, employeeDiscount: Double? = nil, loyaltyDiscount: Double? = nil) {
            self.employeeDiscount = employeeDiscount

            self.affiliateMeta = affiliateMeta

            self.loyaltyDiscount = loyaltyDiscount

            self.affiliateBagId = affiliateBagId

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
