

import Foundation
public extension PlatformClient {
    /*
         Model: Images
         Used By: Theme
     */

    class Images: Codable {
        public var desktop: [String]?

        public var android: [String]?

        public var ios: [String]?

        public var thumbnail: [String]?

        public enum CodingKeys: String, CodingKey {
            case desktop

            case android

            case ios

            case thumbnail
        }

        public init(android: [String]? = nil, desktop: [String]? = nil, ios: [String]? = nil, thumbnail: [String]? = nil) {
            self.desktop = desktop

            self.android = android

            self.ios = ios

            self.thumbnail = thumbnail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                desktop = try container.decode([String].self, forKey: .desktop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                android = try container.decode([String].self, forKey: .android)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ios = try container.decode([String].self, forKey: .ios)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                thumbnail = try container.decode([String].self, forKey: .thumbnail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(desktop, forKey: .desktop)

            try? container.encodeIfPresent(android, forKey: .android)

            try? container.encodeIfPresent(ios, forKey: .ios)

            try? container.encodeIfPresent(thumbnail, forKey: .thumbnail)
        }
    }
}
