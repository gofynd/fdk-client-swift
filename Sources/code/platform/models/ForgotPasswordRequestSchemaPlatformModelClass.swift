

import Foundation
public extension PlatformClient {
    /*
         Model: ForgotPasswordRequestSchema
         Used By: User
     */

    class ForgotPasswordRequestSchema: Codable {
        public var code: String?

        public var password: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case password
        }

        public init(code: String? = nil, password: String? = nil) {
            self.code = code

            self.password = password
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(password, forKey: .password)
        }
    }
}
