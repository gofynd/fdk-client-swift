

import Foundation
public extension ApplicationClient {
    /*
         Model: Social
         Used By: User
     */
    class Social: Codable {
        public var accountKit: Bool?

        public var facebook: Bool?

        public var google: Bool?

        public var apple: Bool?

        public enum CodingKeys: String, CodingKey {
            case accountKit = "account_kit"

            case facebook

            case google

            case apple
        }

        public init(accountKit: Bool? = nil, apple: Bool? = nil, facebook: Bool? = nil, google: Bool? = nil) {
            self.accountKit = accountKit

            self.facebook = facebook

            self.google = google

            self.apple = apple
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                accountKit = try container.decode(Bool.self, forKey: .accountKit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                facebook = try container.decode(Bool.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                google = try container.decode(Bool.self, forKey: .google)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apple = try container.decode(Bool.self, forKey: .apple)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountKit, forKey: .accountKit)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(google, forKey: .google)

            try? container.encodeIfPresent(apple, forKey: .apple)
        }
    }
}
