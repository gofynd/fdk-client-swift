

import Foundation
public extension PlatformClient {
    /*
         Model: CheckResponse
         Used By: Order
     */

    class CheckResponse: Codable {
        public var affiliateId: String?

        public var originalFilter: OriginalFilter?

        public var shipmentId: String?

        public var status: String?

        public var isShipmentLocked: Bool?

        public var isBagLocked: Bool?

        public var bags: [Bags]?

        public var lockStatus: Bool?

        public var affiliateShipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case originalFilter = "original_filter"

            case shipmentId = "shipment_id"

            case status

            case isShipmentLocked = "is_shipment_locked"

            case isBagLocked = "is_bag_locked"

            case bags

            case lockStatus = "lock_status"

            case affiliateShipmentId = "affiliate_shipment_id"
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, bags: [Bags]? = nil, isBagLocked: Bool? = nil, isShipmentLocked: Bool? = nil, lockStatus: Bool? = nil, originalFilter: OriginalFilter? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.affiliateId = affiliateId

            self.originalFilter = originalFilter

            self.shipmentId = shipmentId

            self.status = status

            self.isShipmentLocked = isShipmentLocked

            self.isBagLocked = isBagLocked

            self.bags = bags

            self.lockStatus = lockStatus

            self.affiliateShipmentId = affiliateShipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                originalFilter = try container.decode(OriginalFilter.self, forKey: .originalFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShipmentLocked = try container.decode(Bool.self, forKey: .isShipmentLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isBagLocked = try container.decode(Bool.self, forKey: .isBagLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([Bags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(originalFilter, forKey: .originalFilter)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isShipmentLocked, forKey: .isShipmentLocked)

            try? container.encodeIfPresent(isBagLocked, forKey: .isBagLocked)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
        }
    }
}
