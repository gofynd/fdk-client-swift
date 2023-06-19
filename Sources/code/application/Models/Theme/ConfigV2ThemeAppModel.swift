

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ConfigV2
         Used By: Theme
     */
    class ConfigV2: Codable {
        public var current: String

        public var list: [ConfigurationV2]

        public var globalSchema: GlobalSchemaV2?

        public var preset: PresetV2?

        public enum CodingKeys: String, CodingKey {
            case current

            case list

            case globalSchema = "global_schema"

            case preset
        }

        public init(current: String, globalSchema: GlobalSchemaV2? = nil, list: [ConfigurationV2], preset: PresetV2? = nil) {
            self.current = current

            self.list = list

            self.globalSchema = globalSchema

            self.preset = preset
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(String.self, forKey: .current)

            list = try container.decode([ConfigurationV2].self, forKey: .list)

            do {
                globalSchema = try container.decode(GlobalSchemaV2.self, forKey: .globalSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                preset = try container.decode(PresetV2.self, forKey: .preset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(globalSchema, forKey: .globalSchema)

            try? container.encodeIfPresent(preset, forKey: .preset)
        }
    }
}
