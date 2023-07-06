

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBagDetails
         Used By: Order
     */

    class AffiliateBagDetails: Codable {
        public var loyaltyDiscount: Double?

        public var affiliateBagId: String

        public var employeeDiscount: Double?

        public var affiliateOrderId: String

        public var affiliateMeta: AffiliateMeta

        public enum CodingKeys: String, CodingKey {
            case loyaltyDiscount = "loyalty_discount"

            case affiliateBagId = "affiliate_bag_id"

            case employeeDiscount = "employee_discount"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateBagId: String, affiliateMeta: AffiliateMeta, affiliateOrderId: String, employeeDiscount: Double? = nil, loyaltyDiscount: Double? = nil) {
            self.loyaltyDiscount = loyaltyDiscount

            self.affiliateBagId = affiliateBagId

            self.employeeDiscount = employeeDiscount

            self.affiliateOrderId = affiliateOrderId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBagDetails
         Used By: Order
     */

    class AffiliateBagDetails: Codable {
        public var loyaltyDiscount: Double?

        public var affiliateBagId: String

        public var employeeDiscount: Double?

        public var affiliateOrderId: String

        public var affiliateMeta: AffiliateMeta

        public enum CodingKeys: String, CodingKey {
            case loyaltyDiscount = "loyalty_discount"

            case affiliateBagId = "affiliate_bag_id"

            case employeeDiscount = "employee_discount"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateBagId: String, affiliateMeta: AffiliateMeta, affiliateOrderId: String, employeeDiscount: Double? = nil, loyaltyDiscount: Double? = nil) {
            self.loyaltyDiscount = loyaltyDiscount

            self.affiliateBagId = affiliateBagId

            self.employeeDiscount = employeeDiscount

            self.affiliateOrderId = affiliateOrderId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
