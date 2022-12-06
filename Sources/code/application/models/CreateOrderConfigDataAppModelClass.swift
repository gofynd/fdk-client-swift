

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderConfigData
         Used By: Order
     */
    class CreateOrderConfigData: Codable {
        public var configData: CreateOrderConfig?

        public enum CodingKeys: String, CodingKey {
            case configData = "config_data"
        }

        public init(configData: CreateOrderConfig? = nil) {
            self.configData = configData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configData = try container.decode(CreateOrderConfig.self, forKey: .configData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configData, forKey: .configData)
        }
    }
}
