

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: UsernameValidatorErrorMessage
         Used By: Communication
     */
    class UsernameValidatorErrorMessage: Codable {
        public var username: ValidatorErrorBody?

        public enum CodingKeys: String, CodingKey {
            case username
        }

        public init(username: ValidatorErrorBody? = nil) {
            self.username = username
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                username = try container.decode(ValidatorErrorBody.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}
