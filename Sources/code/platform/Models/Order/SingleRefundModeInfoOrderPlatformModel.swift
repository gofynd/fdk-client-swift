

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SingleRefundModeInfo
         Used By: Order
     */

    class SingleRefundModeInfo: Codable {
        public var slug: String?

        public var isActive: Bool?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case isActive = "is_active"

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, isActive: Bool? = nil, slug: String? = nil) {
            self.slug = slug

            self.isActive = isActive

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SingleRefundModeInfo
         Used By: Order
     */

    class SingleRefundModeInfo: Codable {
        public var slug: String?

        public var isActive: Bool?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case isActive = "is_active"

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, isActive: Bool? = nil, slug: String? = nil) {
            self.slug = slug

            self.isActive = isActive

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
