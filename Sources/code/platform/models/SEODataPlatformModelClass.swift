

import Foundation
public extension PlatformClient {
    /*
         Model: SEOData
         Used By: Catalog
     */

    class SEOData: Codable {
        public var description: [String: Any]?

        public var title: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case description

            case title
        }

        public init(description: [String: Any]? = nil, title: [String: Any]? = nil) {
            self.description = description

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode([String: Any].self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode([String: Any].self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
