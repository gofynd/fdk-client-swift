

import Foundation
public extension ApplicationClient {
    /*
         Model: OS
         Used By: Configuration
     */
    class OS: Codable {
        public var name: String

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case version
        }

        public init(name: String, version: String? = nil) {
            self.name = name

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
