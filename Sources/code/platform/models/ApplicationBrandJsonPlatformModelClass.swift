

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationBrandJson
         Used By: CompanyProfile
     */

    class ApplicationBrandJson: Codable {
        public var customJson: [JsonFields]

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"
        }

        public init(customJson: [JsonFields]) {
            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customJson = try container.decode([JsonFields].self, forKey: .customJson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
