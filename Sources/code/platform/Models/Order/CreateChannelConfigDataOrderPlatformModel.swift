

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreateChannelConfigData
         Used By: Order
     */

    class CreateChannelConfigData: Codable {
        public var configData: CreateChannelConfig?

        public enum CodingKeys: String, CodingKey {
            case configData = "config_data"
        }

        public init(configData: CreateChannelConfig? = nil) {
            self.configData = configData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configData = try container.decode(CreateChannelConfig.self, forKey: .configData)

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

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreateChannelConfigData
         Used By: Order
     */

    class CreateChannelConfigData: Codable {
        public var configData: CreateChannelConfig?

        public enum CodingKeys: String, CodingKey {
            case configData = "config_data"
        }

        public init(configData: CreateChannelConfig? = nil) {
            self.configData = configData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                configData = try container.decode(CreateChannelConfig.self, forKey: .configData)

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
