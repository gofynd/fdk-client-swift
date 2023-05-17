

import Foundation

public extension PlatformClient.Order {
    /*
         Model: InvalidateShipmentCachePayload
         Used By: Order
     */

    class InvalidateShipmentCachePayload: Codable {
        public var shipmentIds: [String]?

        public var bagIds: [String]?

        public var affiliateBagIds: [String]?

        public enum CodingKeys: String, CodingKey {
            case shipmentIds = "shipment_ids"

            case bagIds = "bag_ids"

            case affiliateBagIds = "affiliate_bag_ids"
        }

        public init(affiliateBagIds: [String]? = nil, bagIds: [String]? = nil, shipmentIds: [String]? = nil) {
            self.shipmentIds = shipmentIds

            self.bagIds = bagIds

            self.affiliateBagIds = affiliateBagIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagIds = try container.decode([String].self, forKey: .bagIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagIds = try container.decode([String].self, forKey: .affiliateBagIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)

            try? container.encodeIfPresent(bagIds, forKey: .bagIds)

            try? container.encodeIfPresent(affiliateBagIds, forKey: .affiliateBagIds)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: InvalidateShipmentCachePayload
         Used By: Order
     */

    class InvalidateShipmentCachePayload: Codable {
        public var shipmentIds: [String]?

        public var bagIds: [String]?

        public var affiliateBagIds: [String]?

        public enum CodingKeys: String, CodingKey {
            case shipmentIds = "shipment_ids"

            case bagIds = "bag_ids"

            case affiliateBagIds = "affiliate_bag_ids"
        }

        public init(affiliateBagIds: [String]? = nil, bagIds: [String]? = nil, shipmentIds: [String]? = nil) {
            self.shipmentIds = shipmentIds

            self.bagIds = bagIds

            self.affiliateBagIds = affiliateBagIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagIds = try container.decode([String].self, forKey: .bagIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagIds = try container.decode([String].self, forKey: .affiliateBagIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)

            try? container.encodeIfPresent(bagIds, forKey: .bagIds)

            try? container.encodeIfPresent(affiliateBagIds, forKey: .affiliateBagIds)
        }
    }
}
