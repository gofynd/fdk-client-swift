

import Foundation
public extension PlatformClient {
    /*
         Model: Log
         Used By: Communication
     */

    class Log: Codable {
        public var email: LogEmail?

        public var pushnotification: LogPushnotification?

        public var meta: LogMeta?

        public var id: String?

        public var application: String?

        public var service: String?

        public var step: String?

        public var status: String?

        public var data: [String: Any]?

        public var expireAt: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case pushnotification

            case meta

            case id = "_id"

            case application

            case service

            case step

            case status

            case data

            case expireAt = "expire_at"

            case createdAt = "created_at"
        }

        public init(application: String? = nil, createdAt: String? = nil, data: [String: Any]? = nil, email: LogEmail? = nil, expireAt: String? = nil, meta: LogMeta? = nil, pushnotification: LogPushnotification? = nil, service: String? = nil, status: String? = nil, step: String? = nil, id: String? = nil) {
            self.email = email

            self.pushnotification = pushnotification

            self.meta = meta

            self.id = id

            self.application = application

            self.service = service

            self.step = step

            self.status = status

            self.data = data

            self.expireAt = expireAt

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(LogEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pushnotification = try container.decode(LogPushnotification.self, forKey: .pushnotification)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(LogMeta.self, forKey: .meta)

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
                service = try container.decode(String.self, forKey: .service)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                step = try container.decode(String.self, forKey: .step)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expireAt = try container.decode(String.self, forKey: .expireAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(service, forKey: .service)

            try? container.encodeIfPresent(step, forKey: .step)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
