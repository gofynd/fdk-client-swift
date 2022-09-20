

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductConfig
         Used By: Catalog
     */

    class ConfigurationProductConfig: Codable {
        public var priority: Int

        public var size: ProductSize?

        public var logo: String?

        public var title: String?

        public var subtitle: String?

        public var key: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case priority

            case size

            case logo

            case title

            case subtitle

            case key

            case isActive = "is_active"
        }

        public init(isActive: Bool, key: String, logo: String? = nil, priority: Int, size: ProductSize? = nil, subtitle: String? = nil, title: String? = nil) {
            self.priority = priority

            self.size = size

            self.logo = logo

            self.title = title

            self.subtitle = subtitle

            self.key = key

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                size = try container.decode(ProductSize.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
