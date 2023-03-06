

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManualAssignDPToShipment
         Used By: Order
     */

    class ManualAssignDPToShipment: Codable {
        public var orderType: String

        public var shipmentIds: [String]?

        public var qcRequired: String

        public var dpId: Int

        public enum CodingKeys: String, CodingKey {
            case orderType = "order_type"

            case shipmentIds = "shipment_ids"

            case qcRequired = "qc_required"

            case dpId = "dp_id"
        }

        public init(dpId: Int, orderType: String, qcRequired: String, shipmentIds: [String]? = nil) {
            self.orderType = orderType

            self.shipmentIds = shipmentIds

            self.qcRequired = qcRequired

            self.dpId = dpId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            qcRequired = try container.decode(String.self, forKey: .qcRequired)

            dpId = try container.decode(Int.self, forKey: .dpId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)

            try? container.encodeIfPresent(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(dpId, forKey: .dpId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManualAssignDPToShipment
         Used By: Order
     */

    class ManualAssignDPToShipment: Codable {
        public var orderType: String

        public var shipmentIds: [String]?

        public var qcRequired: String

        public var dpId: Int

        public enum CodingKeys: String, CodingKey {
            case orderType = "order_type"

            case shipmentIds = "shipment_ids"

            case qcRequired = "qc_required"

            case dpId = "dp_id"
        }

        public init(dpId: Int, orderType: String, qcRequired: String, shipmentIds: [String]? = nil) {
            self.orderType = orderType

            self.shipmentIds = shipmentIds

            self.qcRequired = qcRequired

            self.dpId = dpId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            qcRequired = try container.decode(String.self, forKey: .qcRequired)

            dpId = try container.decode(Int.self, forKey: .dpId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)

            try? container.encodeIfPresent(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(dpId, forKey: .dpId)
        }
    }
}
