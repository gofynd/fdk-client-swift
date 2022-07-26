

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemMeta
         Used By: Catalog
     */

    class ApplicationItemMeta: Codable {
        public var customMeta: [MetaFields]

        public enum CodingKeys: String, CodingKey {
            case customMeta = "_custom_meta"
        }

        public init(customMeta: [MetaFields]) {
            self.customMeta = customMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customMeta = try container.decode([MetaFields].self, forKey: .customMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
        }
    }
}
