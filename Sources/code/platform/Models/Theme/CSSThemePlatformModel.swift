

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: CSS
         Used By: Theme
     */

    class CSS: Codable {
        public var links: [String]?

        public enum CodingKeys: String, CodingKey {
            case links
        }

        public init(links: [String]? = nil) {
            self.links = links
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                links = try container.decode([String].self, forKey: .links)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(links, forKey: .links)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: CSS
         Used By: Theme
     */

    class CSS: Codable {
        public var links: [String]?

        public enum CodingKeys: String, CodingKey {
            case links
        }

        public init(links: [String]? = nil) {
            self.links = links
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                links = try container.decode([String].self, forKey: .links)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(links, forKey: .links)
        }
    }
}
