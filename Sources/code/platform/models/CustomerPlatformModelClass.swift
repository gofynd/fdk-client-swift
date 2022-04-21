

import Foundation
public extension PlatformClient {
    /*
         Model: Customer
         Used By: Order
     */

    class Customer: Codable {
        public var createdAt: String?

        public var id: Int?

        public var lastName: String?

        public var state: String?

        public var lastOrderId: Int?

        public var note: String?

        public var verifiedEmail: Bool?

        public var phone: String?

        public var acceptsMarketing: Bool?

        public var firstName: String?

        public var tags: String?

        public var lastOrderName: String?

        public var ordersCount: Int?

        public var totalSpent: String?

        public var taxExempt: Bool?

        public var currency: String?

        public var acceptsMarketingUpdatedAt: String?

        public var email: String?

        public var updatedAt: String?

        public var adminGraphqlApiId: String?

        public var defaultAddress: DefaultAddress?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case id

            case lastName = "last_name"

            case state

            case lastOrderId = "last_order_id"

            case note

            case verifiedEmail = "verified_email"

            case phone

            case acceptsMarketing = "accepts_marketing"

            case firstName = "first_name"

            case tags

            case lastOrderName = "last_order_name"

            case ordersCount = "orders_count"

            case totalSpent = "total_spent"

            case taxExempt = "tax_exempt"

            case currency

            case acceptsMarketingUpdatedAt = "accepts_marketing_updated_at"

            case email

            case updatedAt = "updated_at"

            case adminGraphqlApiId = "admin_graphql_api_id"

            case defaultAddress = "default_address"
        }

        public init(acceptsMarketing: Bool? = nil, acceptsMarketingUpdatedAt: String? = nil, adminGraphqlApiId: String? = nil, createdAt: String? = nil, currency: String? = nil, defaultAddress: DefaultAddress? = nil, email: String? = nil, firstName: String? = nil, id: Int? = nil, lastName: String? = nil, lastOrderId: Int? = nil, lastOrderName: String? = nil, note: String? = nil, ordersCount: Int? = nil, phone: String? = nil, state: String? = nil, tags: String? = nil, taxExempt: Bool? = nil, totalSpent: String? = nil, updatedAt: String? = nil, verifiedEmail: Bool? = nil) {
            self.createdAt = createdAt

            self.id = id

            self.lastName = lastName

            self.state = state

            self.lastOrderId = lastOrderId

            self.note = note

            self.verifiedEmail = verifiedEmail

            self.phone = phone

            self.acceptsMarketing = acceptsMarketing

            self.firstName = firstName

            self.tags = tags

            self.lastOrderName = lastOrderName

            self.ordersCount = ordersCount

            self.totalSpent = totalSpent

            self.taxExempt = taxExempt

            self.currency = currency

            self.acceptsMarketingUpdatedAt = acceptsMarketingUpdatedAt

            self.email = email

            self.updatedAt = updatedAt

            self.adminGraphqlApiId = adminGraphqlApiId

            self.defaultAddress = defaultAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastOrderId = try container.decode(Int.self, forKey: .lastOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                note = try container.decode(String.self, forKey: .note)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedEmail = try container.decode(Bool.self, forKey: .verifiedEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                acceptsMarketing = try container.decode(Bool.self, forKey: .acceptsMarketing)

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
                tags = try container.decode(String.self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastOrderName = try container.decode(String.self, forKey: .lastOrderName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ordersCount = try container.decode(Int.self, forKey: .ordersCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalSpent = try container.decode(String.self, forKey: .totalSpent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxExempt = try container.decode(Bool.self, forKey: .taxExempt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                acceptsMarketingUpdatedAt = try container.decode(String.self, forKey: .acceptsMarketingUpdatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                adminGraphqlApiId = try container.decode(String.self, forKey: .adminGraphqlApiId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultAddress = try container.decode(DefaultAddress.self, forKey: .defaultAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(lastOrderId, forKey: .lastOrderId)

            try? container.encodeIfPresent(note, forKey: .note)

            try? container.encodeIfPresent(verifiedEmail, forKey: .verifiedEmail)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(acceptsMarketing, forKey: .acceptsMarketing)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(lastOrderName, forKey: .lastOrderName)

            try? container.encodeIfPresent(ordersCount, forKey: .ordersCount)

            try? container.encodeIfPresent(totalSpent, forKey: .totalSpent)

            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(acceptsMarketingUpdatedAt, forKey: .acceptsMarketingUpdatedAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(adminGraphqlApiId, forKey: .adminGraphqlApiId)

            try? container.encodeIfPresent(defaultAddress, forKey: .defaultAddress)
        }
    }
}
