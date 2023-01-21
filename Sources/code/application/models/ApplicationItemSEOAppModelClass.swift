

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationItemSEO
         Used By: Catalog
     */
    class ApplicationItemSEO: Codable {
        public var title: [String: Any]?

        public var description: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case title

            case description
        }

        public init(description: [String: Any]? = nil, title: [String: Any]? = nil) {
            self.title = title

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode([String: Any].self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode([String: Any].self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
