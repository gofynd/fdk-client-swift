

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatePasswordRequestSchema
         Used By: User
     */

    class UpdatePasswordRequestSchema: Codable {
        public var oldPassword: String?

        public var newPassword: String?

        public enum CodingKeys: String, CodingKey {
            case oldPassword = "old_password"

            case newPassword = "new_password"
        }

        public init(newPassword: String? = nil, oldPassword: String? = nil) {
            self.oldPassword = oldPassword

            self.newPassword = newPassword
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                oldPassword = try container.decode(String.self, forKey: .oldPassword)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                newPassword = try container.decode(String.self, forKey: .newPassword)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(oldPassword, forKey: .oldPassword)

            try? container.encodeIfPresent(newPassword, forKey: .newPassword)
        }
    }
}
