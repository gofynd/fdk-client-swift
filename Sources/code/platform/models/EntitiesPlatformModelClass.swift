

import Foundation
public extension PlatformClient {
    /*
         Model: Entities
         Used By: Order
     */

    class Entities: Codable {
        public var affiliateShipmentId: String?

        public var affiliateId: String?

        public var reasonText: String

        public var id: String?

        public var affiliateBagId: String?

        public var affiliateOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateId = "affiliate_id"

            case reasonText = "reason_text"

            case id

            case affiliateBagId = "affiliate_bag_id"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(affiliateBagId: String? = nil, affiliateId: String? = nil, affiliateOrderId: String? = nil, affiliateShipmentId: String? = nil, id: String? = nil, reasonText: String) {
            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateId = affiliateId

            self.reasonText = reasonText

            self.id = id

            self.affiliateBagId = affiliateBagId

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

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

            reasonText = try container.decode(String.self, forKey: .reasonText)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(reasonText, forKey: .reasonText)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}