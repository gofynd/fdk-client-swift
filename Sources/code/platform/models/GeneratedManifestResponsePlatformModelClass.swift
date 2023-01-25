

import Foundation
public extension PlatformClient {
    /*
         Model: GeneratedManifestResponse
         Used By: Order
     */

    class GeneratedManifestResponse: Codable {
        public var items: [GeneratedManifestItem]?

        public var page: ManifestPage?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [GeneratedManifestItem]? = nil, page: ManifestPage? = nil) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([GeneratedManifestItem].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
