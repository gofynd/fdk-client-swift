

import Foundation
public extension PlatformClient {
    /*
         Model: PostHistoryFilters
         Used By: Order
     */

    class PostHistoryFilters: Codable {
        public var identifier: String?

        public var lineNumber: String?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case lineNumber = "line_number"

            case shipmentId = "shipment_id"
        }

        public init(identifier: String? = nil, lineNumber: String? = nil, shipmentId: String) {
            self.identifier = identifier

            self.lineNumber = lineNumber

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineNumber = try container.decode(String.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
