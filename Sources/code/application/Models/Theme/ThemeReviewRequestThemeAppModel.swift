

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ThemeReviewRequest
         Used By: Theme
     */
    class ThemeReviewRequest: Codable {
        public var dynamicProperties: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case dynamicProperties = "dynamic_properties"
        }

        public init(dynamicProperties: [String: Any]? = nil) {
            self.dynamicProperties = dynamicProperties
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dynamicProperties = try container.decode([String: Any].self, forKey: .dynamicProperties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dynamicProperties, forKey: .dynamicProperties)
        }
    }
}
