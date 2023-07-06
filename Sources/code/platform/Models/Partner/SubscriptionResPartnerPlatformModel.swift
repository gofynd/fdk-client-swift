

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: SubscriptionRes
         Used By: Partner
     */

    class SubscriptionRes: Codable {
        public var redirectUrl: String?

        public enum CodingKeys: String, CodingKey {
            case redirectUrl = "redirect_url"
        }

        public init(redirectUrl: String? = nil) {
            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: SubscriptionRes
         Used By: Partner
     */

    class SubscriptionRes: Codable {
        public var redirectUrl: String?

        public enum CodingKeys: String, CodingKey {
            case redirectUrl = "redirect_url"
        }

        public init(redirectUrl: String? = nil) {
            self.redirectUrl = redirectUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        }
    }
}
