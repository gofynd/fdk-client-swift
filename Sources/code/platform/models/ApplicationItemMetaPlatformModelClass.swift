

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemMeta
         Used By: Catalog
     */

    class ApplicationItemMeta: Codable {
        public var customMeta: [MetaFields]

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case customMeta = "_custom_meta"

            case customJson = "_custom_json"
        }

        public init(customJson: [String: Any]? = nil, customMeta: [MetaFields]) {
            self.customMeta = customMeta

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
