

import Foundation

public extension PlatformClient.Configuration {
    /*
         Model: CommunicationConfig
         Used By: Configuration
     */

    class CommunicationConfig: Codable {
        public var email: CommsConfig?

        public var sms: CommsConfig?

        public var voice: CommsConfig?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice
        }

        public init(email: CommsConfig? = nil, sms: CommsConfig? = nil, voice: CommsConfig? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(CommsConfig.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(CommsConfig.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(CommsConfig.self, forKey: .voice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(voice, forKey: .voice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Configuration {
    /*
         Model: CommunicationConfig
         Used By: Configuration
     */

    class CommunicationConfig: Codable {
        public var email: CommsConfig?

        public var sms: CommsConfig?

        public var voice: CommsConfig?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice
        }

        public init(email: CommsConfig? = nil, sms: CommsConfig? = nil, voice: CommsConfig? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(CommsConfig.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(CommsConfig.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(CommsConfig.self, forKey: .voice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(voice, forKey: .voice)
        }
    }
}
