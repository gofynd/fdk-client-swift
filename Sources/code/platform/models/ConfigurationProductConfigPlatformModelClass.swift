

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductConfig
         Used By: Catalog
     */

    class ConfigurationProductConfig: Codable {
        public var size: ProductSize?

        public var priority: Int

        public var isActive: Bool

        public var logo: String?

        public var subtitle: String?

        public var key: String

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case priority

            case isActive = "is_active"

            case logo

            case subtitle

            case key

            case title
        }

        public init(isActive: Bool, key: String, logo: String? = nil, priority: Int, size: ProductSize? = nil, subtitle: String? = nil, title: String? = nil) {
            self.size = size

            self.priority = priority

            self.isActive = isActive

            self.logo = logo

            self.subtitle = subtitle

            self.key = key

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(ProductSize.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
