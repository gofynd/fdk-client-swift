

import Foundation
public extension PlatformClient {
    /*
         Model: OrderItems
         Used By: Order
     */

    class OrderItems: Codable {
        public var user: PlatformOrderUserInfo?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var channel: Channel?

        public var id: String?

        public var application: PlatformApplication?

        public var shipments: PlatformShipment?

        public var createdAt: String?

        public var totalShipmentsInOrder: Int?

        public enum CodingKeys: String, CodingKey {
            case user

            case deliveryAddress = "delivery_address"

            case channel

            case id

            case application

            case shipments

            case createdAt = "created_at"

            case totalShipmentsInOrder = "total_shipments_in_order"
        }

        public init(application: PlatformApplication? = nil, channel: Channel? = nil, createdAt: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, id: String? = nil, shipments: PlatformShipment? = nil, totalShipmentsInOrder: Int? = nil, user: PlatformOrderUserInfo? = nil) {
            self.user = user

            self.deliveryAddress = deliveryAddress

            self.channel = channel

            self.id = id

            self.application = application

            self.shipments = shipments

            self.createdAt = createdAt

            self.totalShipmentsInOrder = totalShipmentsInOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(PlatformOrderUserInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(Channel.self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(PlatformApplication.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode(PlatformShipment.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
        }
    }
}
