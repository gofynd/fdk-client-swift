

import Foundation
public extension ApplicationClient {
    /*
         Model: AnnouncementSchema
         Used By: Content
     */
    class AnnouncementSchema: Codable {
        public var announcement: String?

        public var pageType: String?

        public var schedule: ScheduleStartSchema?

        public enum CodingKeys: String, CodingKey {
            case announcement

            case pageType = "page_type"

            case schedule
        }

        public init(announcement: String? = nil, pageType: String? = nil, schedule: ScheduleStartSchema? = nil) {
            self.announcement = announcement

            self.pageType = pageType

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
                pageType = try container.decode(String.self, forKey: .pageType)

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

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }
}
