

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetEngineFilters
         Used By: Finance
     */

    class GetEngineFilters: Codable {
        public var configField: String?

        public enum CodingKeys: String, CodingKey {
            case configField = "config_field"
        }

        public init(configField: String? = nil) {
            self.configField = configField
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configField = try container.decode(String.self, forKey: .configField)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configField, forKey: .configField)
        }
    }
}
