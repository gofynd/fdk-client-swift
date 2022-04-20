

import Foundation
public extension PlatformClient {
    /*
         Model: SessionListSuccess
         Used By: User
     */

    class SessionListSuccess: Codable {
        public var sessions: [String]?

        public enum CodingKeys: String, CodingKey {
            case sessions
        }

        public init(sessions: [String]? = nil) {
            self.sessions = sessions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sessions = try container.decode([String].self, forKey: .sessions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sessions, forKey: .sessions)
        }
    }
}
