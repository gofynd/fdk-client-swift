

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: SubscriptionRequest
         Used By: Partner
     */

    class SubscriptionRequest: Codable {
        public var approved: String?

        public var clientId: String?

        public var companyId: String?

        public var creditBalance: String?

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case approved

            case clientId = "client_id"

            case companyId = "company_id"

            case creditBalance = "credit_balance"

            case requestId = "request_id"
        }

        public init(approved: String? = nil, clientId: String? = nil, companyId: String? = nil, creditBalance: String? = nil, requestId: String? = nil) {
            self.approved = approved

            self.clientId = clientId

            self.companyId = companyId

            self.creditBalance = creditBalance

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                approved = try container.decode(String.self, forKey: .approved)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                clientId = try container.decode(String.self, forKey: .clientId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditBalance = try container.decode(String.self, forKey: .creditBalance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(approved, forKey: .approved)

            try? container.encodeIfPresent(clientId, forKey: .clientId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(creditBalance, forKey: .creditBalance)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: SubscriptionRequest
         Used By: Partner
     */

    class SubscriptionRequest: Codable {
        public var approved: String?

        public var clientId: String?

        public var companyId: String?

        public var creditBalance: String?

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case approved

            case clientId = "client_id"

            case companyId = "company_id"

            case creditBalance = "credit_balance"

            case requestId = "request_id"
        }

        public init(approved: String? = nil, clientId: String? = nil, companyId: String? = nil, creditBalance: String? = nil, requestId: String? = nil) {
            self.approved = approved

            self.clientId = clientId

            self.companyId = companyId

            self.creditBalance = creditBalance

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                approved = try container.decode(String.self, forKey: .approved)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                clientId = try container.decode(String.self, forKey: .clientId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditBalance = try container.decode(String.self, forKey: .creditBalance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(approved, forKey: .approved)

            try? container.encodeIfPresent(clientId, forKey: .clientId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(creditBalance, forKey: .creditBalance)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
