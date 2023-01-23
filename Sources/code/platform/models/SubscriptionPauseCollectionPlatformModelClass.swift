

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionPauseCollection
         Used By: Billing
     */

    class SubscriptionPauseCollection: Codable {
        public var behavior: String?

        public var resumeAt: String?

        public enum CodingKeys: String, CodingKey {
            case behavior

            case resumeAt = "resume_at"
        }

        public init(behavior: String? = nil, resumeAt: String? = nil) {
            self.behavior = behavior

            self.resumeAt = resumeAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                behavior = try container.decode(String.self, forKey: .behavior)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                resumeAt = try container.decode(String.self, forKey: .resumeAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(behavior, forKey: .behavior)

            try? container.encodeIfPresent(resumeAt, forKey: .resumeAt)
        }
    }
}
