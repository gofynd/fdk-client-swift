

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: CompanySocialAccounts
         Used By: CompanyProfile
     */

    class CompanySocialAccounts: Codable {
        public var url: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case url

            case name
        }

        public init(name: String, url: String) {
            self.url = url

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
