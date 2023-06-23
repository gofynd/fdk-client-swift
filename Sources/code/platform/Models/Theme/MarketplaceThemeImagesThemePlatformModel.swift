

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: MarketplaceThemeImages
         Used By: Theme
     */

    class MarketplaceThemeImages: Codable {
        public var desktop: String?

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case desktop

            case mobile
        }

        public init(desktop: String? = nil, mobile: String? = nil) {
            self.desktop = desktop

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                desktop = try container.decode(String.self, forKey: .desktop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(desktop, forKey: .desktop)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: MarketplaceThemeImages
         Used By: Theme
     */

    class MarketplaceThemeImages: Codable {
        public var desktop: String?

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case desktop

            case mobile
        }

        public init(desktop: String? = nil, mobile: String? = nil) {
            self.desktop = desktop

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                desktop = try container.decode(String.self, forKey: .desktop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(desktop, forKey: .desktop)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
