import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiFiles
         Used By: Cart
     */

    class OpenApiFiles: Codable {
        public var key: String

        public var values: [String]

        public enum CodingKeys: String, CodingKey {
            case key

            case values
        }

        public init(key: String, values: [String]) {
            self.key = key

            self.values = values
        }

        public func duplicate() -> OpenApiFiles {
            let dict = self.dictionary!
            let copy = OpenApiFiles(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            values = try container.decode([String].self, forKey: .values)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(values, forKey: .values)
        }
    }
}
