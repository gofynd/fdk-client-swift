

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: NameValidatorError
         Used By: Communication
     */
    class NameValidatorError: Codable {
        public var message: NameValidatorErrorMessage?

        public var sentry: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case sentry
        }

        public init(message: NameValidatorErrorMessage? = nil, sentry: String? = nil) {
            self.message = message

            self.sentry = sentry
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(NameValidatorErrorMessage.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sentry = try container.decode(String.self, forKey: .sentry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(sentry, forKey: .sentry)
        }
    }
}
