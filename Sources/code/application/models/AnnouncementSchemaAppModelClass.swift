

import Foundation
public extension ApplicationClient {
    /*
         Model: AnnouncementSchema
         Used By: Content
     */
    class AnnouncementSchema: Codable {
        public var announcement: String?

        public var schedule: ScheduleStartSchema?

        public enum CodingKeys: String, CodingKey {
            case announcement

            case schedule
        }

        public init(announcement: String? = nil, schedule: ScheduleStartSchema? = nil) {
            self.announcement = announcement

            self.schedule = schedule
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                announcement = try container.decode(String.self, forKey: .announcement)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(ScheduleStartSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(announcement, forKey: .announcement)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }
}
