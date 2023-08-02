

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: GetLocalities
         Used By: Logistic
     */
    class GetLocalities: Codable {
        public var page: Page?

        public var regions: [Locality]?

        public enum CodingKeys: String, CodingKey {
            case page

            case regions
        }

        public init(page: Page? = nil, regions: [Locality]? = nil) {
            self.page = page

            self.regions = regions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                regions = try container.decode([Locality].self, forKey: .regions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(regions, forKey: .regions)
        }
    }
}
