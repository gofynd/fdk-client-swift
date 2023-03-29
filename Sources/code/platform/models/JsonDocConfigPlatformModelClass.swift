

import Foundation
public extension PlatformClient {
    /*
         Model: JsonDocConfig
         Used By: Inventory
     */

    class JsonDocConfig: Codable {
        public var propBeanConfigs: [PropBeanConfig]?

        public enum CodingKeys: String, CodingKey {
            case propBeanConfigs = "prop_bean_configs"
        }

        public init(propBeanConfigs: [PropBeanConfig]? = nil) {
            self.propBeanConfigs = propBeanConfigs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                propBeanConfigs = try container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
        }
    }
}
