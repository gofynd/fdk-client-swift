

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var payload: String?

        public var phoneNumber: String

        public var orderItems: [[String: Any]]?

        public var billingAddress: [String: Any]?

        public var shipmentAddress: [String: Any]?

        public var merchantParams: [String: Any]?

        public var aggregator: String

        public var transactionAmountInPaise: Int

        public enum CodingKeys: String, CodingKey {
            case payload

            case phoneNumber = "phone_number"

            case orderItems = "order_items"

            case billingAddress = "billing_address"

            case shipmentAddress = "shipment_address"

            case merchantParams = "merchant_params"

            case aggregator

            case transactionAmountInPaise = "transaction_amount_in_paise"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, merchantParams: [String: Any]? = nil, orderItems: [[String: Any]]? = nil, payload: String? = nil, phoneNumber: String, shipmentAddress: [String: Any]? = nil, transactionAmountInPaise: Int) {
            self.payload = payload

            self.phoneNumber = phoneNumber

            self.orderItems = orderItems

            self.billingAddress = billingAddress

            self.shipmentAddress = shipmentAddress

            self.merchantParams = merchantParams

            self.aggregator = aggregator

            self.transactionAmountInPaise = transactionAmountInPaise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payload = try container.decode(String.self, forKey: .payload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                orderItems = try container.decode([[String: Any]].self, forKey: .orderItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentAddress = try container.decode([String: Any].self, forKey: .shipmentAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderItems, forKey: .orderItems)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipmentAddress, forKey: .shipmentAddress)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
        }
    }
}
