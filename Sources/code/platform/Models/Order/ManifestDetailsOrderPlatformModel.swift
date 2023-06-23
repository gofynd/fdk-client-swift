

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestDetails
         Used By: Order
     */

    class ManifestDetails: Codable {
        public var manifestDetails: [Manifest]?

        public var additionalShipmentCount: Int?

        public var page: ManifestPageInfo?

        public var items: [ManifestItemDetails]?

        public enum CodingKeys: String, CodingKey {
            case manifestDetails = "manifest_details"

            case additionalShipmentCount = "additional_shipment_count"

            case page

            case items
        }

        public init(additionalShipmentCount: Int? = nil, items: [ManifestItemDetails]? = nil, manifestDetails: [Manifest]? = nil, page: ManifestPageInfo? = nil) {
            self.manifestDetails = manifestDetails

            self.additionalShipmentCount = additionalShipmentCount

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manifestDetails = try container.decode([Manifest].self, forKey: .manifestDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                additionalShipmentCount = try container.decode(Int.self, forKey: .additionalShipmentCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(ManifestPageInfo.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestDetails, forKey: .manifestDetails)

            try? container.encodeIfPresent(additionalShipmentCount, forKey: .additionalShipmentCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestDetails
         Used By: Order
     */

    class ManifestDetails: Codable {
        public var manifestDetails: [Manifest]?

        public var additionalShipmentCount: Int?

        public var page: ManifestPageInfo?

        public var items: [ManifestItemDetails]?

        public enum CodingKeys: String, CodingKey {
            case manifestDetails = "manifest_details"

            case additionalShipmentCount = "additional_shipment_count"

            case page

            case items
        }

        public init(additionalShipmentCount: Int? = nil, items: [ManifestItemDetails]? = nil, manifestDetails: [Manifest]? = nil, page: ManifestPageInfo? = nil) {
            self.manifestDetails = manifestDetails

            self.additionalShipmentCount = additionalShipmentCount

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manifestDetails = try container.decode([Manifest].self, forKey: .manifestDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                additionalShipmentCount = try container.decode(Int.self, forKey: .additionalShipmentCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(ManifestPageInfo.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestDetails, forKey: .manifestDetails)

            try? container.encodeIfPresent(additionalShipmentCount, forKey: .additionalShipmentCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
