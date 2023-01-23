

import Foundation
public extension ApplicationClient {
    /*
         Model: PageSpec
         Used By: Content
     */
    class PageSpec: Codable {
        public var specifications: [PageSpecItem]?

        public enum CodingKeys: String, CodingKey {
            case specifications
        }

        public init(specifications: [PageSpecItem]? = nil) {
            self.specifications = specifications
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                specifications = try container.decode([PageSpecItem].self, forKey: .specifications)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(specifications, forKey: .specifications)
        }
    }
}
