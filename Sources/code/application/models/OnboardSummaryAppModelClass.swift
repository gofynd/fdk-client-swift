

import Foundation
public extension ApplicationClient {
    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var session: [String: Any]

        public var status: Bool

        public var redirectUrl: String

        public enum CodingKeys: String, CodingKey {
            case session

            case status

            case redirectUrl = "redirect_url"
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            self.session = session

            self.status = status

            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            session = try container.decode([String: Any].self, forKey: .session)

            status = try container.decode(Bool.self, forKey: .status)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(session, forKey: .session)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        }
    }
}
