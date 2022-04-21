

import Foundation
public extension PlatformClient {
    /*
         Model: OrderValidator
         Used By: Configuration
     */

    class OrderValidator: Codable {
        public var jsonSchema: [JsonSchema]?

        public var browserScript: String?

        public enum CodingKeys: String, CodingKey {
            case jsonSchema = "json_schema"

            case browserScript = "browser_script"
        }

        public init(browserScript: String? = nil, jsonSchema: [JsonSchema]? = nil) {
            self.jsonSchema = jsonSchema

            self.browserScript = browserScript
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jsonSchema = try container.decode([JsonSchema].self, forKey: .jsonSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                browserScript = try container.decode(String.self, forKey: .browserScript)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jsonSchema, forKey: .jsonSchema)

            try? container.encodeIfPresent(browserScript, forKey: .browserScript)
        }
    }
}
