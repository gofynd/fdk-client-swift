

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentListingChannel
         Used By: Order
     */

    class ShipmentListingChannel: Codable {
        public var name: String?

        public var channelShipmentId: String?

        public var logo: String?

        public var isAffiliate: Bool?

        public enum CodingKeys: String, CodingKey {
            case name

            case channelShipmentId = "channel_shipment_id"

            case logo

            case isAffiliate = "is_affiliate"
        }

        public init(channelShipmentId: String? = nil, isAffiliate: Bool? = nil, logo: String? = nil, name: String? = nil) {
            self.name = name

            self.channelShipmentId = channelShipmentId

            self.logo = logo

            self.isAffiliate = isAffiliate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isAffiliate = try container.decode(Bool.self, forKey: .isAffiliate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(channelShipmentId, forKey: .channelShipmentId)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isAffiliate, forKey: .isAffiliate)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentListingChannel
         Used By: Order
     */

    class ShipmentListingChannel: Codable {
        public var name: String?

        public var channelShipmentId: String?

        public var logo: String?

        public var isAffiliate: Bool?

        public enum CodingKeys: String, CodingKey {
            case name

            case channelShipmentId = "channel_shipment_id"

            case logo

            case isAffiliate = "is_affiliate"
        }

        public init(channelShipmentId: String? = nil, isAffiliate: Bool? = nil, logo: String? = nil, name: String? = nil) {
            self.name = name

            self.channelShipmentId = channelShipmentId

            self.logo = logo

            self.isAffiliate = isAffiliate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isAffiliate = try container.decode(Bool.self, forKey: .isAffiliate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(channelShipmentId, forKey: .channelShipmentId)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isAffiliate, forKey: .isAffiliate)
        }
    }
}
