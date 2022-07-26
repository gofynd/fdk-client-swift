

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryFiles
         Used By: CompanyProfile
     */

    class RestrictedCategoryFiles: Codable {
        public var url: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case url

            case type
        }

        public init(type: String, url: String) {
            self.url = url

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
