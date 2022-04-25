

import Foundation
public extension ApplicationClient {
    /*
         Model: BusinessHighlights
         Used By: Configuration
     */
    class BusinessHighlights: Codable {
        public var id: String?

        public var title: String?

        public var icon: String?

        public var subTitle: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case title

            case icon

            case subTitle = "sub_title"
        }

        public init(icon: String? = nil, subTitle: String? = nil, title: String? = nil, id: String? = nil) {
            self.id = id

            self.title = title

            self.icon = icon

            self.subTitle = subTitle
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subTitle = try container.decode(String.self, forKey: .subTitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
        }
    }
}
