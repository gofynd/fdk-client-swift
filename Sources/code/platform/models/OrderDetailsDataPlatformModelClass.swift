

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDetailsData
         Used By: Order
     */

    class OrderDetailsData: Codable {
        public var fyndOrderId: String

        public var orderingChannel: String?

        public var orderValue: String?

        public var orderingChannelLogo: [String: Any]?

        public var affiliateId: String?

        public var taxDetails: [String: Any]?

        public var orderDate: String?

        public var source: String?

        public var codCharges: String?

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case orderingChannel = "ordering_channel"

            case orderValue = "order_value"

            case orderingChannelLogo = "ordering_channel_logo"

            case affiliateId = "affiliate_id"

            case taxDetails = "tax_details"

            case orderDate = "order_date"

            case source

            case codCharges = "cod_charges"
        }

        public init(affiliateId: String? = nil, codCharges: String? = nil, fyndOrderId: String, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderDate: String? = nil, orderValue: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            self.fyndOrderId = fyndOrderId

            self.orderingChannel = orderingChannel

            self.orderValue = orderValue

            self.orderingChannelLogo = orderingChannelLogo

            self.affiliateId = affiliateId

            self.taxDetails = taxDetails

            self.orderDate = orderDate

            self.source = source

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderValue = try container.decode(String.self, forKey: .orderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannelLogo = try container.decode([String: Any].self, forKey: .orderingChannelLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxDetails = try container.decode([String: Any].self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderDate = try container.decode(String.self, forKey: .orderDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(String.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
