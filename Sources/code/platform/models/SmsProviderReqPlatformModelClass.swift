

import Foundation
public extension PlatformClient {
    /*
         Model: SmsProviderReq
         Used By: Communication
     */

    class SmsProviderReq: Codable {
        public var name: String?

        public var description: String?

        public var sender: String?

        public var username: String?

        public var authkey: String?

        public var type: String?

        public var provider: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case sender

            case username

            case authkey

            case type

            case provider
        }

        public init(authkey: String? = nil, description: String? = nil, name: String? = nil, provider: String? = nil, sender: String? = nil, type: String? = nil, username: String? = nil) {
            self.name = name

            self.description = description

            self.sender = sender

            self.username = username

            self.authkey = authkey

            self.type = type

            self.provider = provider
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sender = try container.decode(String.self, forKey: .sender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authkey = try container.decode(String.self, forKey: .authkey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(sender, forKey: .sender)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(authkey, forKey: .authkey)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(provider, forKey: .provider)
        }
    }
}
