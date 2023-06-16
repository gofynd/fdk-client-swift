

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: AppProviderAdmin
         Used By: Communication
     */

    class AppProviderAdmin: Codable {
        public var email: AppProviderAdminObj?

        public var sms: AppProviderAdminObj?

        public var voice: AppProviderAdminObj?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice
        }

        public init(email: AppProviderAdminObj? = nil, sms: AppProviderAdminObj? = nil, voice: AppProviderAdminObj? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(AppProviderAdminObj.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(AppProviderAdminObj.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(AppProviderAdminObj.self, forKey: .voice)

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

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: AppProviderAdmin
         Used By: Communication
     */

    class AppProviderAdmin: Codable {
        public var email: AppProviderAdminObj?

        public var sms: AppProviderAdminObj?

        public var voice: AppProviderAdminObj?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice
        }

        public init(email: AppProviderAdminObj? = nil, sms: AppProviderAdminObj? = nil, voice: AppProviderAdminObj? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(AppProviderAdminObj.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(AppProviderAdminObj.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(AppProviderAdminObj.self, forKey: .voice)

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
