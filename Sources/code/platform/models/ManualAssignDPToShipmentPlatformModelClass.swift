

import Foundation
public extension PlatformClient {
    /*
         Model: ManualAssignDPToShipment
         Used By: Order
     */

    class ManualAssignDPToShipment: Codable {
        public var shipmentIds: [String]?

        public var orderType: String

        public var dpId: Int

        public var qcRequired: String

        public enum CodingKeys: String, CodingKey {
            case shipmentIds = "shipment_ids"

            case orderType = "order_type"

            case dpId = "dp_id"

            case qcRequired = "qc_required"
        }

        public init(dpId: Int, orderType: String, qcRequired: String, shipmentIds: [String]? = nil) {
            self.shipmentIds = shipmentIds

            self.orderType = orderType

            self.dpId = dpId

            self.qcRequired = qcRequired
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            dpId = try container.decode(Int.self, forKey: .dpId)

            qcRequired = try container.decode(String.self, forKey: .qcRequired)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(qcRequired, forKey: .qcRequired)
        }
    }
}
