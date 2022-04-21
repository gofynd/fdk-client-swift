

import Foundation
public extension ApplicationClient {
    /*
         Model: AppStaffResponse
         Used By: Configuration
     */
    class AppStaffResponse: Codable {
        public var staffUsers: [AppStaff]?

        public enum CodingKeys: String, CodingKey {
            case staffUsers = "staff_users"
        }

        public init(staffUsers: [AppStaff]? = nil) {
            self.staffUsers = staffUsers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                staffUsers = try container.decode([AppStaff].self, forKey: .staffUsers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staffUsers, forKey: .staffUsers)
        }
    }
}
