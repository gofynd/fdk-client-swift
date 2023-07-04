

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestDetails
         Used By: Order
     */

    class ManifestDetails: Codable {
        public var page: ManifestPageInfo?

        public var items: [ManifestItemDetails]?

        public var manifestDetails: [Manifest]?

        public var additionalShipmentCount: Int?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case manifestDetails = "manifest_details"

            case additionalShipmentCount = "additional_shipment_count"
        }

        public init(additionalShipmentCount: Int? = nil, items: [ManifestItemDetails]? = nil, manifestDetails: [Manifest]? = nil, page: ManifestPageInfo? = nil) {
            self.page = page

            self.items = items

            self.manifestDetails = manifestDetails

            self.additionalShipmentCount = additionalShipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(manifestDetails, forKey: .manifestDetails)

            try? container.encodeIfPresent(additionalShipmentCount, forKey: .additionalShipmentCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestDetails
         Used By: Order
     */

    class ManifestDetails: Codable {
        public var page: ManifestPageInfo?

        public var items: [ManifestItemDetails]?

        public var manifestDetails: [Manifest]?

        public var additionalShipmentCount: Int?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case manifestDetails = "manifest_details"

            case additionalShipmentCount = "additional_shipment_count"
        }

        public init(additionalShipmentCount: Int? = nil, items: [ManifestItemDetails]? = nil, manifestDetails: [Manifest]? = nil, page: ManifestPageInfo? = nil) {
            self.page = page

            self.items = items

            self.manifestDetails = manifestDetails

            self.additionalShipmentCount = additionalShipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(manifestDetails, forKey: .manifestDetails)

            try? container.encodeIfPresent(additionalShipmentCount, forKey: .additionalShipmentCount)
        }
    }
}
