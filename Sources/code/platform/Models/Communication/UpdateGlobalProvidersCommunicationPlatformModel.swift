

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: UpdateGlobalProviders
         Used By: Communication
     */

    class UpdateGlobalProviders: Codable {
        public var email: UpdateGlobalProvidersObj?

        public var sms: UpdateGlobalProvidersObj?

        public var voice: UpdateGlobalProvidersObj?

        public var id: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice

            case id = "_id"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(createdAt: String? = nil, email: UpdateGlobalProvidersObj? = nil, sms: UpdateGlobalProvidersObj? = nil, updatedAt: String? = nil, voice: UpdateGlobalProvidersObj? = nil, id: String? = nil, v: Int? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice

            self.id = id

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(UpdateGlobalProvidersObj.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(UpdateGlobalProvidersObj.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(UpdateGlobalProvidersObj.self, forKey: .voice)

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

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: UpdateGlobalProviders
         Used By: Communication
     */

    class UpdateGlobalProviders: Codable {
        public var email: UpdateGlobalProvidersObj?

        public var sms: UpdateGlobalProvidersObj?

        public var voice: UpdateGlobalProvidersObj?

        public var id: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case voice

            case id = "_id"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(createdAt: String? = nil, email: UpdateGlobalProvidersObj? = nil, sms: UpdateGlobalProvidersObj? = nil, updatedAt: String? = nil, voice: UpdateGlobalProvidersObj? = nil, id: String? = nil, v: Int? = nil) {
            self.email = email

            self.sms = sms

            self.voice = voice

            self.id = id

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(UpdateGlobalProvidersObj.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(UpdateGlobalProvidersObj.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voice = try container.decode(UpdateGlobalProvidersObj.self, forKey: .voice)

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

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
