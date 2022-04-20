

import Foundation
public extension PlatformClient {
    /*
         Model: StatGroup
         Used By: Analytics
     */

    class StatGroup: Codable {
        public var key: String?

        public var url: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case url

            case title
        }

        public init(key: String? = nil, title: String? = nil, url: String? = nil) {
            self.key = key

            self.url = url

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
