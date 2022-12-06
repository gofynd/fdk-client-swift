

import Foundation
public extension PlatformClient {
    /*
         Model: ManualAssignDPToShipment
         Used By: Order
     */

    class ManualAssignDPToShipment: Codable {
        public var dpId: Int

        public var qcRequired: String

        public var orderType: String

        public var shipmentIds: [String]?

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case qcRequired = "qc_required"

            case orderType = "order_type"

            case shipmentIds = "shipment_ids"
        }

        public init(dpId: Int, orderType: String, qcRequired: String, shipmentIds: [String]? = nil) {
            self.dpId = dpId

            self.qcRequired = qcRequired

            self.orderType = orderType

            self.shipmentIds = shipmentIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            qcRequired = try container.decode(String.self, forKey: .qcRequired)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)
        }
    }
}
