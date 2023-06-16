

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: ApikeyValidatorErrorMessage
         Used By: Communication
     */
    class ApikeyValidatorErrorMessage: Codable {
        public var apiKey: ValidatorErrorBody?

        public enum CodingKeys: String, CodingKey {
            case apiKey = "api_key"
        }

        public init(apiKey: ValidatorErrorBody? = nil) {
            self.apiKey = apiKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                apiKey = try container.decode(ValidatorErrorBody.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }
}
