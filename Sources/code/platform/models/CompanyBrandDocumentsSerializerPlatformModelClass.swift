

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandDocumentsSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandDocumentsSerializer: Codable {
        public var type: String

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case type

            case url
        }

        public init(type: String, url: String) {
            self.type = type

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
