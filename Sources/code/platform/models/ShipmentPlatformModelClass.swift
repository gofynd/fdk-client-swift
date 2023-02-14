

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Order
     */

    class Shipment: Codable {
        public var externalShipmentId: String?

        public var priority: Int?

        public var processingDates: ProcessingDates?

        public var meta: [String: Any]?

        public var locationId: Int

        public var lineItems: [LineItem]

        public enum CodingKeys: String, CodingKey {
            case externalShipmentId = "external_shipment_id"

            case priority

            case processingDates = "processing_dates"

            case meta

            case locationId = "location_id"

            case lineItems = "line_items"
        }

        public init(externalShipmentId: String? = nil, lineItems: [LineItem], locationId: Int, meta: [String: Any]? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil) {
            self.externalShipmentId = externalShipmentId

            self.priority = priority

            self.processingDates = processingDates

            self.meta = meta

            self.locationId = locationId

            self.lineItems = lineItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processingDates = try container.decode(ProcessingDates.self, forKey: .processingDates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationId = try container.decode(Int.self, forKey: .locationId)

            lineItems = try container.decode([LineItem].self, forKey: .lineItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(processingDates, forKey: .processingDates)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(locationId, forKey: .locationId)

            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
        }
    }
}
