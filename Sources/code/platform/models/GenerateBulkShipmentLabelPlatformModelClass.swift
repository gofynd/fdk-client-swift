

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateBulkShipmentLabel
         Used By: DocumentEngine
     */

    class GenerateBulkShipmentLabel: Codable {
        public var labelType: String

        public var uid: String

        public var templateId: Double

        public var shipments: [ShipmentDetails]

        public enum CodingKeys: String, CodingKey {
            case labelType = "label_type"

            case uid

            case templateId = "template_id"

            case shipments
        }

        public init(labelType: String, shipments: [ShipmentDetails], templateId: Double, uid: String) {
            self.labelType = labelType

            self.uid = uid

            self.templateId = templateId

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            labelType = try container.decode(String.self, forKey: .labelType)

            uid = try container.decode(String.self, forKey: .uid)

            templateId = try container.decode(Double.self, forKey: .templateId)

            shipments = try container.decode([ShipmentDetails].self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(labelType, forKey: .labelType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(templateId, forKey: .templateId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
