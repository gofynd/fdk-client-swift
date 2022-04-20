

import Foundation
public extension ApplicationClient {
    /*
         Model: AppStaff
         Used By: Configuration
     */
    class AppStaff: Codable {
        public var id: String?

        public var orderIncent: Bool?

        public var stores: [Int]?

        public var application: String?

        public var title: String?

        public var user: String?

        public var employeeCode: String?

        public var firstName: String?

        public var lastName: String?

        public var profilePicUrl: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case orderIncent = "order_incent"

            case stores

            case application

            case title

            case user

            case employeeCode = "employee_code"

            case firstName = "first_name"

            case lastName = "last_name"

            case profilePicUrl = "profile_pic_url"
        }

        public init(application: String? = nil, employeeCode: String? = nil, firstName: String? = nil, lastName: String? = nil, orderIncent: Bool? = nil, profilePicUrl: String? = nil, stores: [Int]? = nil, title: String? = nil, user: String? = nil, id: String? = nil) {
            self.id = id

            self.orderIncent = orderIncent

            self.stores = stores

            self.application = application

            self.title = title

            self.user = user

            self.employeeCode = employeeCode

            self.firstName = firstName

            self.lastName = lastName

            self.profilePicUrl = profilePicUrl
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
                orderIncent = try container.decode(Bool.self, forKey: .orderIncent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode([Int].self, forKey: .stores)

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
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeCode = try container.decode(String.self, forKey: .employeeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(orderIncent, forKey: .orderIncent)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
        }
    }
}
