

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CustomerDetails
         Used By: Order
     */

    class CustomerDetails: Codable {
        public var customerId: String?

        public var customerPhone: String?

        public var customerEmail: String?

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case customerPhone = "customer_phone"

            case customerEmail = "customer_email"
        }

        public init(customerEmail: String? = nil, customerId: String? = nil, customerPhone: String? = nil) {
            self.customerId = customerId

            self.customerPhone = customerPhone

            self.customerEmail = customerEmail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerPhone = try container.decode(String.self, forKey: .customerPhone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerEmail = try container.decode(String.self, forKey: .customerEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(customerPhone, forKey: .customerPhone)

            try? container.encodeIfPresent(customerEmail, forKey: .customerEmail)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CustomerDetails
         Used By: Order
     */

    class CustomerDetails: Codable {
        public var customerId: String?

        public var customerPhone: String?

        public var customerEmail: String?

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case customerPhone = "customer_phone"

            case customerEmail = "customer_email"
        }

        public init(customerEmail: String? = nil, customerId: String? = nil, customerPhone: String? = nil) {
            self.customerId = customerId

            self.customerPhone = customerPhone

            self.customerEmail = customerEmail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerPhone = try container.decode(String.self, forKey: .customerPhone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerEmail = try container.decode(String.self, forKey: .customerEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(customerPhone, forKey: .customerPhone)

            try? container.encodeIfPresent(customerEmail, forKey: .customerEmail)
        }
    }
}
