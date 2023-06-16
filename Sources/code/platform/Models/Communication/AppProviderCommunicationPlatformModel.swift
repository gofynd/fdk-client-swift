

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: AppProvider
         Used By: Communication
     */

    class AppProvider: Codable {
        public var email: AppProviderRes?

        public var sms: AppProviderRes?

        public var voice: AppProviderResVoice?

        public var id: String?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice

            case id = "_id"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(application: String? = nil, createdAt: String? = nil, email: AppProviderRes? = nil, sms: AppProviderRes? = nil, updatedAt: String? = nil, voice: AppProviderResVoice? = nil, id: String? = nil, v: Int? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice

            self.id = id

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(AppProviderRes.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(AppProviderRes.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(AppProviderResVoice.self, forKey: .voice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

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

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: AppProvider
         Used By: Communication
     */

    class AppProvider: Codable {
        public var email: AppProviderRes?

        public var sms: AppProviderRes?

        public var voice: AppProviderResVoice?

        public var id: String?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice

            case id = "_id"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(application: String? = nil, createdAt: String? = nil, email: AppProviderRes? = nil, sms: AppProviderRes? = nil, updatedAt: String? = nil, voice: AppProviderResVoice? = nil, id: String? = nil, v: Int? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice

            self.id = id

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(AppProviderRes.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(AppProviderRes.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(AppProviderResVoice.self, forKey: .voice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

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

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
