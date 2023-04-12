

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Shipment
         Used By: Order
     */

    class Shipment: Codable {
        public var priority: Int?

        public var locationId: Int

        public var processingDates: ProcessingDates?

        public var meta: [String: Any]?

        public var externalShipmentId: String?

        public var lineItems: [LineItem]

        public enum CodingKeys: String, CodingKey {
            case priority

            case locationId = "location_id"

            case processingDates = "processing_dates"

            case meta

            case externalShipmentId = "external_shipment_id"

            case lineItems = "line_items"
        }

        public init(externalShipmentId: String? = nil, lineItems: [LineItem], locationId: Int, meta: [String: Any]? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil) {
            self.priority = priority

            self.locationId = locationId

            self.processingDates = processingDates

            self.meta = meta

            self.externalShipmentId = externalShipmentId

            self.lineItems = lineItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationId = try container.decode(Int.self, forKey: .locationId)

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

            do {
                externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lineItems = try container.decode([LineItem].self, forKey: .lineItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(locationId, forKey: .locationId)

            try? container.encodeIfPresent(processingDates, forKey: .processingDates)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)

            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Shipment
         Used By: Order
     */

    class Shipment: Codable {
        public var priority: Int?

        public var locationId: Int

        public var processingDates: ProcessingDates?

        public var meta: [String: Any]?

        public var externalShipmentId: String?

        public var lineItems: [LineItem]

        public enum CodingKeys: String, CodingKey {
            case priority

            case locationId = "location_id"

            case processingDates = "processing_dates"

            case meta

            case externalShipmentId = "external_shipment_id"

            case lineItems = "line_items"
        }

        public init(externalShipmentId: String? = nil, lineItems: [LineItem], locationId: Int, meta: [String: Any]? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil) {
            self.priority = priority

            self.locationId = locationId

            self.processingDates = processingDates

            self.meta = meta

            self.externalShipmentId = externalShipmentId

            self.lineItems = lineItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationId = try container.decode(Int.self, forKey: .locationId)

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

            do {
                externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lineItems = try container.decode([LineItem].self, forKey: .lineItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(locationId, forKey: .locationId)

            try? container.encodeIfPresent(processingDates, forKey: .processingDates)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)

            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
        }
    }
}
