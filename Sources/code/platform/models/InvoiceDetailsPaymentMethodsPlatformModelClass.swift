

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetailsPaymentMethods
         Used By: Billing
     */

    class InvoiceDetailsPaymentMethods: Codable {
        public var id: Int?

        public var type: String?

        public var pgPaymentMethodId: String?

        public var data: InvoiceDetailsPaymentMethodsData?

        public var isDefault: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case type

            case pgPaymentMethodId = "pg_payment_method_id"

            case data

            case isDefault = "is_default"
        }

        public init(data: InvoiceDetailsPaymentMethodsData? = nil, id: Int? = nil, isDefault: Bool? = nil, pgPaymentMethodId: String? = nil, type: String? = nil) {
            self.id = id

            self.type = type

            self.pgPaymentMethodId = pgPaymentMethodId

            self.data = data

            self.isDefault = isDefault
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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pgPaymentMethodId = try container.decode(String.self, forKey: .pgPaymentMethodId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(InvoiceDetailsPaymentMethodsData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(pgPaymentMethodId, forKey: .pgPaymentMethodId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
