

import Foundation
public extension PlatformClient {
    /*
         Model: DocMappingConfig
         Used By: Inventory
     */

    class DocMappingConfig: Codable {
        public var properties: [String: Any]?

        public var junkDataThresholdCount: Int?

        public var propBeanConfigs: [PropBeanConfig]?

        public var unwindField: String?

        public var defaultHeaders: DefaultHeadersDTO?

        public enum CodingKeys: String, CodingKey {
            case properties

            case junkDataThresholdCount = "junk_data_threshold_count"

            case propBeanConfigs = "prop_bean_configs"

            case unwindField = "unwind_field"

            case defaultHeaders = "default_headers"
        }

        public init(defaultHeaders: DefaultHeadersDTO? = nil, junkDataThresholdCount: Int? = nil, properties: [String: Any]? = nil, propBeanConfigs: [PropBeanConfig]? = nil, unwindField: String? = nil) {
            self.properties = properties

            self.junkDataThresholdCount = junkDataThresholdCount

            self.propBeanConfigs = propBeanConfigs

            self.unwindField = unwindField

            self.defaultHeaders = defaultHeaders
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                properties = try container.decode([String: Any].self, forKey: .properties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                junkDataThresholdCount = try container.decode(Int.self, forKey: .junkDataThresholdCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                propBeanConfigs = try container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unwindField = try container.decode(String.self, forKey: .unwindField)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultHeaders = try container.decode(DefaultHeadersDTO.self, forKey: .defaultHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(junkDataThresholdCount, forKey: .junkDataThresholdCount)

            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)

            try? container.encodeIfPresent(unwindField, forKey: .unwindField)

            try? container.encodeIfPresent(defaultHeaders, forKey: .defaultHeaders)
        }
    }
}
