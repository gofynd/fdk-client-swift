

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OriginalFilter
         Used By: Order
     */

    class OriginalFilter: Codable {
        public var affiliateId: String?

        public var affiliateShipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case affiliateShipmentId = "affiliate_shipment_id"
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil) {
            self.affiliateId = affiliateId

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
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OriginalFilter
         Used By: Order
     */

    class OriginalFilter: Codable {
        public var affiliateId: String?

        public var affiliateShipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case affiliateShipmentId = "affiliate_shipment_id"
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil) {
            self.affiliateId = affiliateId

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
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
        }
    }
}
