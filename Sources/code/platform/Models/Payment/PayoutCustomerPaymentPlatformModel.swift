

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutCustomer
         Used By: Payment
     */

    class PayoutCustomer: Codable {
        public var name: String?

        public var id: Int?

        public var mobile: String?

        public var uniqueExternalId: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case id

            case mobile

            case uniqueExternalId = "unique_external_id"
        }

        public init(id: Int? = nil, mobile: String? = nil, name: String? = nil, uniqueExternalId: String? = nil) {
            self.name = name

            self.id = id

            self.mobile = mobile

            self.uniqueExternalId = uniqueExternalId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(name, forKey: .name)

            try? container.encode(id, forKey: .id)

            try? container.encode(mobile, forKey: .mobile)

            try? container.encode(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutCustomer
         Used By: Payment
     */

    class PayoutCustomer: Codable {
        public var name: String?

        public var id: Int?

        public var mobile: String?

        public var uniqueExternalId: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case id

            case mobile

            case uniqueExternalId = "unique_external_id"
        }

        public init(id: Int? = nil, mobile: String? = nil, name: String? = nil, uniqueExternalId: String? = nil) {
            self.name = name

            self.id = id

            self.mobile = mobile

            self.uniqueExternalId = uniqueExternalId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(name, forKey: .name)

            try? container.encode(id, forKey: .id)

            try? container.encode(mobile, forKey: .mobile)

            try? container.encode(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }
}
