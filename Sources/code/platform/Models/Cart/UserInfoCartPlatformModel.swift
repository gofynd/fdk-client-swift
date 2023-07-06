

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: UserInfo
         Used By: Cart
     */

    class UserInfo: Codable {
        public var id: String?

        public var lastName: String?

        public var externalId: String?

        public var uid: String?

        public var gender: String?

        public var createdAt: String?

        public var mobile: String?

        public var modifiedOn: String?

        public var firstName: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case lastName = "last_name"

            case externalId = "external_id"

            case uid

            case gender

            case createdAt = "created_at"

            case mobile

            case modifiedOn = "modified_on"

            case firstName = "first_name"
        }

        public init(createdAt: String? = nil, externalId: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, mobile: String? = nil, modifiedOn: String? = nil, uid: String? = nil, id: String? = nil) {
            self.id = id

            self.lastName = lastName

            self.externalId = externalId

            self.uid = uid

            self.gender = gender

            self.createdAt = createdAt

            self.mobile = mobile

            self.modifiedOn = modifiedOn

            self.firstName = firstName
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
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalId = try container.decode(String.self, forKey: .externalId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(externalId, forKey: .externalId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
