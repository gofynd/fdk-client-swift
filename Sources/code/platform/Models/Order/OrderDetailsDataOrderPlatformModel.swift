

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderDetailsData
         Used By: Order
     */

    class OrderDetailsData: Codable {
        public var taxDetails: [String: Any]?

        public var codCharges: String?

        public var source: String?

        public var fyndOrderId: String

        public var orderValue: String?

        public var orderingChannel: String?

        public var affiliateId: String?

        public var orderDate: String?

        public var orderingChannelLogo: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case taxDetails = "tax_details"

            case codCharges = "cod_charges"

            case source

            case fyndOrderId = "fynd_order_id"

            case orderValue = "order_value"

            case orderingChannel = "ordering_channel"

            case affiliateId = "affiliate_id"

            case orderDate = "order_date"

            case orderingChannelLogo = "ordering_channel_logo"
        }

        public init(affiliateId: String? = nil, codCharges: String? = nil, fyndOrderId: String, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderDate: String? = nil, orderValue: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            self.taxDetails = taxDetails

            self.codCharges = codCharges

            self.source = source

            self.fyndOrderId = fyndOrderId

            self.orderValue = orderValue

            self.orderingChannel = orderingChannel

            self.affiliateId = affiliateId

            self.orderDate = orderDate

            self.orderingChannelLogo = orderingChannelLogo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxDetails = try container.decode([String: Any].self, forKey: .taxDetails)

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

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                orderValue = try container.decode(String.self, forKey: .orderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

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
                orderDate = try container.decode(String.self, forKey: .orderDate)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderDetailsData
         Used By: Order
     */

    class OrderDetailsData: Codable {
        public var taxDetails: [String: Any]?

        public var codCharges: String?

        public var source: String?

        public var fyndOrderId: String

        public var orderValue: String?

        public var orderingChannel: String?

        public var affiliateId: String?

        public var orderDate: String?

        public var orderingChannelLogo: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case taxDetails = "tax_details"

            case codCharges = "cod_charges"

            case source

            case fyndOrderId = "fynd_order_id"

            case orderValue = "order_value"

            case orderingChannel = "ordering_channel"

            case affiliateId = "affiliate_id"

            case orderDate = "order_date"

            case orderingChannelLogo = "ordering_channel_logo"
        }

        public init(affiliateId: String? = nil, codCharges: String? = nil, fyndOrderId: String, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderDate: String? = nil, orderValue: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            self.taxDetails = taxDetails

            self.codCharges = codCharges

            self.source = source

            self.fyndOrderId = fyndOrderId

            self.orderValue = orderValue

            self.orderingChannel = orderingChannel

            self.affiliateId = affiliateId

            self.orderDate = orderDate

            self.orderingChannelLogo = orderingChannelLogo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxDetails = try container.decode([String: Any].self, forKey: .taxDetails)

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

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                orderValue = try container.decode(String.self, forKey: .orderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

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
                orderDate = try container.decode(String.self, forKey: .orderDate)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
        }
    }
}
