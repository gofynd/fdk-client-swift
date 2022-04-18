import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: RegisterRequiredFieldsEmail
         Used By: User
     */
    class RegisterRequiredFieldsEmail: Codable {
        public var isRequired: Bool?

        public var level: String?

        public enum CodingKeys: String, CodingKey {
            case isRequired = "is_required"

            case level
        }

        public init(isRequired: Bool?, level: String?) {
            self.isRequired = isRequired

            self.level = level
        }

        public func duplicate() -> RegisterRequiredFieldsEmail {
            let dict = self.dictionary!
            let copy = RegisterRequiredFieldsEmail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isRequired = try container.decode(Bool.self, forKey: .isRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isRequired, forKey: .isRequired)

            try? container.encodeIfPresent(level, forKey: .level)
        }
    }
}
