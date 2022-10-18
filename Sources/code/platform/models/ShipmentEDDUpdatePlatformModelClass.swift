

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentEDDUpdate
         Used By: OrderManage
     */

    class ShipmentEDDUpdate: Codable {
        public var edd: String

        public var reasonText: String?

        public var shipmentId: String

        public var reasonId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case edd

            case reasonText = "reason_text"

            case shipmentId = "shipment_id"

            case reasonId = "reason_id"
        }

        public init(edd: String, reasonId: [Int]? = nil, reasonText: String? = nil, shipmentId: String) {
            self.edd = edd

            self.reasonText = reasonText

            self.shipmentId = shipmentId

            self.reasonId = reasonId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            edd = try container.decode(String.self, forKey: .edd)

            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                reasonId = try container.decode([Int].self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(edd, forKey: .edd)

            try? container.encode(reasonText, forKey: .reasonText)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(reasonId, forKey: .reasonId)
        }
    }
}
