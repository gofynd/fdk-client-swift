

import Foundation
public extension PlatformClient {
    /*
         Model: StatsProcessed
         Used By: Communication
     */

    class StatsProcessed: Codable {
        public var email: StatsProcessedEmail?

        public var sms: StatsProcessedSms?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms
        }

        public init(email: StatsProcessedEmail? = nil, sms: StatsProcessedSms? = nil) {
            self.email = email

            self.sms = sms
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(StatsProcessedEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(StatsProcessedSms.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(sms, forKey: .sms)
        }
    }
}
