

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: PasswordValidatorErrorMessage
         Used By: Communication
     */
    class PasswordValidatorErrorMessage: Codable {
        public var password: ValidatorErrorBody?

        public enum CodingKeys: String, CodingKey {
            case password
        }

        public init(password: ValidatorErrorBody? = nil) {
            self.password = password
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                password = try container.decode(ValidatorErrorBody.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(password, forKey: .password)
        }
    }
}
