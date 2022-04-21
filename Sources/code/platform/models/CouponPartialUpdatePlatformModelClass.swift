

import Foundation
public extension PlatformClient {
    /*
         Model: CouponPartialUpdate
         Used By: Cart
     */

    class CouponPartialUpdate: Codable {
        public var schedule: CouponSchedule?

        public var archive: Bool?

        public enum CodingKeys: String, CodingKey {
            case schedule

            case archive
        }

        public init(archive: Bool? = nil, schedule: CouponSchedule? = nil) {
            self.schedule = schedule

            self.archive = archive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(archive, forKey: .archive)
        }
    }
}
