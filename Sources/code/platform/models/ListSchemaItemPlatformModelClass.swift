import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ListSchemaItem
         Used By: Theme
     */

    class ListSchemaItem: Codable {
        public var globalConfig: [String: Any]?

        public var page: [ConfigPage]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case globalConfig = "global_config"

            case page

            case name
        }

        public init(globalConfig: [String: Any]?, name: String?, page: [ConfigPage]?) {
            self.globalConfig = globalConfig

            self.page = page

            self.name = name
        }

        public func duplicate() -> ListSchemaItem {
            let dict = self.dictionary!
            let copy = ListSchemaItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalConfig = try container.decode([String: Any].self, forKey: .globalConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode([ConfigPage].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalConfig, forKey: .globalConfig)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
