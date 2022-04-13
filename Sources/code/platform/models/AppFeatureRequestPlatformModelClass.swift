import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AppFeatureRequest
         Used By: Configuration
     */

    class AppFeatureRequest: Codable {
        public var feature: AppFeature?

        public enum CodingKeys: String, CodingKey {
            case feature
        }

        public init(feature: AppFeature?) {
            self.feature = feature
        }

        public func duplicate() -> AppFeatureRequest {
            let dict = self.dictionary!
            let copy = AppFeatureRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                feature = try container.decode(AppFeature.self, forKey: .feature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(feature, forKey: .feature)
        }
    }
}
