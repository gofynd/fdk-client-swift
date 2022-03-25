import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: RequestBodyAuditLog
         Used By: AuditTrail
     */

    class RequestBodyAuditLog: Codable {
        public var logMeta: LogMetaObj

        public var logPayload: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case logMeta = "log_meta"

            case logPayload = "log_payload"
        }

        public init(logMeta: LogMetaObj, logPayload: [String: Any]) {
            self.logMeta = logMeta

            self.logPayload = logPayload
        }

        public func duplicate() -> RequestBodyAuditLog {
            let dict = self.dictionary!
            let copy = RequestBodyAuditLog(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logMeta = try container.decode(LogMetaObj.self, forKey: .logMeta)

            logPayload = try container.decode([String: Any].self, forKey: .logPayload)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logMeta, forKey: .logMeta)

            try? container.encodeIfPresent(logPayload, forKey: .logPayload)
        }
    }

    /*
         Model: CreateLogResponse
         Used By: AuditTrail
     */

    class CreateLogResponse: Codable {
        public var message: String?

        public var internalMessage: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case internalMessage = "internal_message"
        }

        public init(internalMessage: String?, message: String?) {
            self.message = message

            self.internalMessage = internalMessage
        }

        public func duplicate() -> CreateLogResponse {
            let dict = self.dictionary!
            let copy = CreateLogResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                internalMessage = try container.decode(String.self, forKey: .internalMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(internalMessage, forKey: .internalMessage)
        }
    }

    /*
         Model: LogMetaObj
         Used By: AuditTrail
     */

    class LogMetaObj: Codable {
        public var modifier: [String: Any]?

        public var application: String?

        public var entity: EntityObject?

        public var deviceInfo: [String: Any]?

        public var location: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case modifier

            case application

            case entity

            case deviceInfo = "device_info"

            case location
        }

        public init(application: String?, deviceInfo: [String: Any]?, entity: EntityObject?, location: [String: Any]?, modifier: [String: Any]?) {
            self.modifier = modifier

            self.application = application

            self.entity = entity

            self.deviceInfo = deviceInfo

            self.location = location
        }

        public func duplicate() -> LogMetaObj {
            let dict = self.dictionary!
            let copy = LogMetaObj(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifier = try container.decode([String: Any].self, forKey: .modifier)

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
                entity = try container.decode(EntityObject.self, forKey: .entity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceInfo = try container.decode([String: Any].self, forKey: .deviceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                location = try container.decode([String: Any].self, forKey: .location)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifier, forKey: .modifier)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(deviceInfo, forKey: .deviceInfo)

            try? container.encodeIfPresent(location, forKey: .location)
        }
    }

    /*
         Model: EntityObject
         Used By: AuditTrail
     */

    class EntityObject: Codable {
        public var type: String?

        public var action: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case action
        }

        public init(action: String?, type: String?) {
            self.type = type

            self.action = action
        }

        public func duplicate() -> EntityObject {
            let dict = self.dictionary!
            let copy = EntityObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }

    /*
         Model: LogSchemaResponse
         Used By: AuditTrail
     */

    class LogSchemaResponse: Codable {
        public var docs: [LogDocs]?

        public enum CodingKeys: String, CodingKey {
            case docs
        }

        public init(docs: [LogDocs]?) {
            self.docs = docs
        }

        public func duplicate() -> LogSchemaResponse {
            let dict = self.dictionary!
            let copy = LogSchemaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                docs = try container.decode([LogDocs].self, forKey: .docs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(docs, forKey: .docs)
        }
    }

    /*
         Model: LogDocs
         Used By: AuditTrail
     */

    class LogDocs: Codable {
        public var entity: EntityObj?

        public var modifier: Modifier?

        public var deviceInfo: DeviceInfo?

        public var location: Location?

        public var id: String?

        public var company: String?

        public var application: String?

        public var sessions: String?

        public var date: String?

        public var logs: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case entity

            case modifier

            case deviceInfo = "device_info"

            case location

            case id = "_id"

            case company

            case application

            case sessions

            case date

            case logs
        }

        public init(application: String?, company: String?, date: String?, deviceInfo: DeviceInfo?, entity: EntityObj?, location: Location?, logs: [String: Any]?, modifier: Modifier?, sessions: String?, id: String?) {
            self.entity = entity

            self.modifier = modifier

            self.deviceInfo = deviceInfo

            self.location = location

            self.id = id

            self.company = company

            self.application = application

            self.sessions = sessions

            self.date = date

            self.logs = logs
        }

        public func duplicate() -> LogDocs {
            let dict = self.dictionary!
            let copy = LogDocs(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entity = try container.decode(EntityObj.self, forKey: .entity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifier = try container.decode(Modifier.self, forKey: .modifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceInfo = try container.decode(DeviceInfo.self, forKey: .deviceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                location = try container.decode(Location.self, forKey: .location)

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
                company = try container.decode(String.self, forKey: .company)

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
                sessions = try container.decode(String.self, forKey: .sessions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                date = try container.decode(String.self, forKey: .date)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logs = try container.decode([String: Any].self, forKey: .logs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(modifier, forKey: .modifier)

            try? container.encodeIfPresent(deviceInfo, forKey: .deviceInfo)

            try? container.encodeIfPresent(location, forKey: .location)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(sessions, forKey: .sessions)

            try? container.encodeIfPresent(date, forKey: .date)

            try? container.encodeIfPresent(logs, forKey: .logs)
        }
    }

    /*
         Model: EntityObj
         Used By: AuditTrail
     */

    class EntityObj: Codable {
        public var id: String?

        public var type: String?

        public var action: String?

        public var entityDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case type

            case action

            case entityDetails = "entity_details"
        }

        public init(action: String?, entityDetails: [String: Any]?, id: String?, type: String?) {
            self.id = id

            self.type = type

            self.action = action

            self.entityDetails = entityDetails
        }

        public func duplicate() -> EntityObj {
            let dict = self.dictionary!
            let copy = EntityObj(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityDetails = try container.decode([String: Any].self, forKey: .entityDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entityDetails, forKey: .entityDetails)
        }
    }

    /*
         Model: Modifier
         Used By: AuditTrail
     */

    class Modifier: Codable {
        public var userId: String?

        public var asAdministrator: Bool?

        public var userDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case asAdministrator = "as_administrator"

            case userDetails = "user_details"
        }

        public init(asAdministrator: Bool?, userDetails: [String: Any]?, userId: String?) {
            self.userId = userId

            self.asAdministrator = asAdministrator

            self.userDetails = userDetails
        }

        public func duplicate() -> Modifier {
            let dict = self.dictionary!
            let copy = Modifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                asAdministrator = try container.decode(Bool.self, forKey: .asAdministrator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userDetails = try container.decode([String: Any].self, forKey: .userDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(asAdministrator, forKey: .asAdministrator)

            try? container.encodeIfPresent(userDetails, forKey: .userDetails)
        }
    }

    /*
         Model: DeviceInfo
         Used By: AuditTrail
     */

    class DeviceInfo: Codable {
        public var userAgent: String?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case userAgent = "user_agent"

            case extraMeta = "extra_meta"
        }

        public init(extraMeta: [String: Any]?, userAgent: String?) {
            self.userAgent = userAgent

            self.extraMeta = extraMeta
        }

        public func duplicate() -> DeviceInfo {
            let dict = self.dictionary!
            let copy = DeviceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userAgent = try container.decode(String.self, forKey: .userAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }

    /*
         Model: Location
         Used By: AuditTrail
     */

    class Location: Codable {
        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"
        }

        public init(extraMeta: [String: Any]?) {
            self.extraMeta = extraMeta
        }

        public func duplicate() -> Location {
            let dict = self.dictionary!
            let copy = Location(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
