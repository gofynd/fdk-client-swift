

import Foundation
public extension PlatformClient {
    /*
         Model: AllAvailablePageSchema
         Used By: Theme
     */

    class AllAvailablePageSchema: Codable {
        public var pages: [AvailablePageSchema]?

        public enum CodingKeys: String, CodingKey {
            case pages
        }

        public init(pages: [AvailablePageSchema]? = nil) {
            self.pages = pages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pages = try container.decode([AvailablePageSchema].self, forKey: .pages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pages, forKey: .pages)
        }
    }
}
