

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var status: Bool

        public var redirectUrl: String

        public var session: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case status

            case redirectUrl = "redirect_url"

            case session
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            self.status = status

            self.redirectUrl = redirectUrl

            self.session = session
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            session = try container.decode([String: Any].self, forKey: .session)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(session, forKey: .session)
        }
    }
}
