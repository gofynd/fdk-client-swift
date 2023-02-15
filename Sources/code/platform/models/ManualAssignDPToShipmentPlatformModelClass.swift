

import Foundation
public extension PlatformClient {
    /*
         Model: ManualAssignDPToShipment
         Used By: Order
     */

    class ManualAssignDPToShipment: Codable {
        public var dpId: Int

        public var shipmentIds: [String]?

        public var qcRequired: String

        public var orderType: String

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case shipmentIds = "shipment_ids"

            case qcRequired = "qc_required"

            case orderType = "order_type"
        }

        public init(dpId: Int, orderType: String, qcRequired: String, shipmentIds: [String]? = nil) {
            self.dpId = dpId

            self.shipmentIds = shipmentIds

            self.qcRequired = qcRequired

            self.orderType = orderType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpId = try container.decode(Int.self, forKey: .dpId)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            qcRequired = try container.decode(String.self, forKey: .qcRequired)

            orderType = try container.decode(String.self, forKey: .orderType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpId, forKey: .dpId)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)

            try? container.encodeIfPresent(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(orderType, forKey: .orderType)
        }
    }
}
