

import Foundation
public extension PlatformClient {
    /*
         Model: ManifestDetailResponse
         Used By: Orders
     */

    class ManifestDetailResponse: Codable {
        public var manifestDetails: [ManifestDetail]?

        public var items: [ManifestDetailItem]?

        public var page: ManifestPage?

        public var additionalShipmentCount: Int?

        public enum CodingKeys: String, CodingKey {
            case manifestDetails = "manifest_details"

            case items

            case page

            case additionalShipmentCount = "additional_shipment_count"
        }

        public init(additionalShipmentCount: Int? = nil, items: [ManifestDetailItem]? = nil, manifestDetails: [ManifestDetail]? = nil, page: ManifestPage? = nil) {
            self.manifestDetails = manifestDetails

            self.items = items

            self.page = page

            self.additionalShipmentCount = additionalShipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manifestDetails = try container.decode([ManifestDetail].self, forKey: .manifestDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ManifestDetailItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(ManifestPage.self, forKey: .page)

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

            try? container.encodeIfPresent(manifestDetails, forKey: .manifestDetails)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(additionalShipmentCount, forKey: .additionalShipmentCount)
        }
    }
}
