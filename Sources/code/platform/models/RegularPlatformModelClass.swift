

import Foundation
public extension PlatformClient {
    /*
         Model: Regular
         Used By: Theme
     */

    class Regular: Codable {
        public var name: String?

        public var file: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String? = nil, name: String? = nil) {
            self.name = name

            self.file = file
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(String.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }
}
