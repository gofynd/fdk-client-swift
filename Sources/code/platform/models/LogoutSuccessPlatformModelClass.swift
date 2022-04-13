import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: LogoutSuccess
         Used By: User
     */

    class LogoutSuccess: Codable {
        public var logout: Bool?

        public enum CodingKeys: String, CodingKey {
            case logout
        }

        public init(logout: Bool?) {
            self.logout = logout
        }

        public func duplicate() -> LogoutSuccess {
            let dict = self.dictionary!
            let copy = LogoutSuccess(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logout = try container.decode(Bool.self, forKey: .logout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logout, forKey: .logout)
        }
    }
}
