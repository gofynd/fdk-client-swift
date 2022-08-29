

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemMeta
         Used By: Catalog
     */

    class ApplicationItemMeta: Codable {
        public var moq: ApplicationItemMOQ?

        public var customJson: [String: Any]?

        public var customMeta: [MetaFields]?

        public enum CodingKeys: String, CodingKey {
            case moq

            case customJson = "_custom_json"

            case customMeta = "_custom_meta"
        }

        public init(moq: ApplicationItemMOQ? = nil, customJson: [String: Any]? = nil, customMeta: [MetaFields]? = nil) {
            self.moq = moq

            self.customJson = customJson

            self.customMeta = customMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                moq = try container.decode(ApplicationItemMOQ.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
        }
    }
}
