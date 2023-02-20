

import Foundation
public extension PlatformClient {
    /*
         Model: PostHistoryFilters
         Used By: Order
     */

    class PostHistoryFilters: Codable {
        public var identifier: String?

        public var shipmentId: String

        public var lineNumber: String?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case shipmentId = "shipment_id"

            case lineNumber = "line_number"
        }

        public init(identifier: String? = nil, lineNumber: String? = nil, shipmentId: String) {
            self.identifier = identifier

            self.shipmentId = shipmentId

            self.lineNumber = lineNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                lineNumber = try container.decode(String.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
        }
    }
}
