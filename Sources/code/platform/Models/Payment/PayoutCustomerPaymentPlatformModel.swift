

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutCustomer
         Used By: Payment
     */

    class PayoutCustomer: Codable {
        public var id: Int?

        public var name: String?

        public var uniqueExternalId: String?

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case uniqueExternalId = "unique_external_id"

            case mobile
        }

        public init(id: Int? = nil, mobile: String? = nil, name: String? = nil, uniqueExternalId: String? = nil) {
            self.id = id

            self.name = name

            self.uniqueExternalId = uniqueExternalId

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(id, forKey: .id)

            try? container.encode(name, forKey: .name)

            try? container.encode(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encode(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutCustomer
         Used By: Payment
     */

    class PayoutCustomer: Codable {
        public var id: Int?

        public var name: String?

        public var uniqueExternalId: String?

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case uniqueExternalId = "unique_external_id"

            case mobile
        }

        public init(id: Int? = nil, mobile: String? = nil, name: String? = nil, uniqueExternalId: String? = nil) {
            self.id = id

            self.name = name

            self.uniqueExternalId = uniqueExternalId

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(id, forKey: .id)

            try? container.encode(name, forKey: .name)

            try? container.encode(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encode(mobile, forKey: .mobile)
        }
    }
}
