

import Foundation
public extension ApplicationClient {
    /*
         Model: ConfigPage
         Used By: Theme
     */
    class ConfigPage: Codable {
        public var settings: [String: Any]?

        public var page: String?

        public enum CodingKeys: String, CodingKey {
            case settings

            case page
        }

        public init(page: String? = nil, settings: [String: Any]? = nil) {
            self.settings = settings

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                settings = try container.decode([String: Any].self, forKey: .settings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(String.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(settings, forKey: .settings)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
