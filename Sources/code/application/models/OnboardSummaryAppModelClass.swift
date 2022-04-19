import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var status: Bool

        public var session: [String: Any]

        public var redirectUrl: String

        public enum CodingKeys: String, CodingKey {
            case status

            case session

            case redirectUrl = "redirect_url"
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            self.status = status

            self.session = session

            self.redirectUrl = redirectUrl
        }

        public func duplicate() -> OnboardSummary {
            let dict = self.dictionary!
            let copy = OnboardSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            session = try container.decode([String: Any].self, forKey: .session)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(session, forKey: .session)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        }
    }
}
