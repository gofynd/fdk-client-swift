

import Foundation
public extension PlatformClient {
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

        public init(application: String? = nil, company: String? = nil, date: String? = nil, deviceInfo: DeviceInfo? = nil, entity: EntityObj? = nil, location: Location? = nil, logs: [String: Any]? = nil, modifier: Modifier? = nil, sessions: String? = nil, id: String? = nil) {
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
}
