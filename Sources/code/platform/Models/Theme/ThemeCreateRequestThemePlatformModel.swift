

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: ThemeCreateRequest
         Used By: Theme
     */

    class ThemeCreateRequest: Codable {
        public var src: String?

        public var release: Release?

        public enum CodingKeys: String, CodingKey {
            case src

            case release
        }

        public init(release: Release? = nil, src: String? = nil) {
            self.src = src

            self.release = release
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                src = try container.decode(String.self, forKey: .src)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                release = try container.decode(Release.self, forKey: .release)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(src, forKey: .src)

            try? container.encodeIfPresent(release, forKey: .release)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: ThemeCreateRequest
         Used By: Theme
     */

    class ThemeCreateRequest: Codable {
        public var src: String?

        public var release: Release?

        public enum CodingKeys: String, CodingKey {
            case src

            case release
        }

        public init(release: Release? = nil, src: String? = nil) {
            self.src = src

            self.release = release
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                src = try container.decode(String.self, forKey: .src)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                release = try container.decode(Release.self, forKey: .release)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(src, forKey: .src)

            try? container.encodeIfPresent(release, forKey: .release)
        }
    }
}
