

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var session: [String: Any]

        public var redirectUrl: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case session

            case redirectUrl = "redirect_url"

            case status
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            self.session = session

            self.redirectUrl = redirectUrl

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            session = try container.decode([String: Any].self, forKey: .session)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(session, forKey: .session)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
