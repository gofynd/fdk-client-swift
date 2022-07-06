

import Foundation
public extension ApplicationClient {
    /*
         Model: Config
         Used By: Theme
     */
    class Config: Codable {
        public var preset: Preset?

        public var globalSchema: GlobalSchema?

        public var current: String?

        public var list: [ListSchemaItem]?

        public enum CodingKeys: String, CodingKey {
            case preset

            case globalSchema = "global_schema"

            case current

            case list
        }

        public init(current: String? = nil, globalSchema: GlobalSchema? = nil, list: [ListSchemaItem]? = nil, preset: Preset? = nil) {
            self.preset = preset

            self.globalSchema = globalSchema

            self.current = current

            self.list = list
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                preset = try container.decode(Preset.self, forKey: .preset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                globalSchema = try container.decode(GlobalSchema.self, forKey: .globalSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(String.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([ListSchemaItem].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(preset, forKey: .preset)

            try? container.encodeIfPresent(globalSchema, forKey: .globalSchema)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(list, forKey: .list)
        }
    }
}
