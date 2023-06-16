

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: NameValidatorErrorMessage
         Used By: Communication
     */
    class NameValidatorErrorMessage: Codable {
        public var name: ValidatorErrorBody?

        public enum CodingKeys: String, CodingKey {
            case name
        }

        public init(name: ValidatorErrorBody? = nil) {
            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(ValidatorErrorBody.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
