

import Foundation
public extension ApplicationClient {
    /*
         Model: Debug
         Used By: Lead
     */
    class Debug: Codable {
        public var source: String?

        public var platform: String?

        public enum CodingKeys: String, CodingKey {
            case source

            case platform
        }

        public init(platform: String? = nil, source: String? = nil) {
            self.source = source

            self.platform = platform
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }
}
