

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var shipmentDetails: [RepaymentRequestDetails]?

        public var extensionOrderId: String

        public var aggregatorOrderId: String

        public var totalAmount: Double

        public var aggregatorTransactionId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentDetails = "shipment_details"

            case extensionOrderId = "extension_order_id"

            case aggregatorOrderId = "aggregator_order_id"

            case totalAmount = "total_amount"

            case aggregatorTransactionId = "aggregator_transaction_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.shipmentDetails = shipmentDetails

            self.extensionOrderId = extensionOrderId

            self.aggregatorOrderId = aggregatorOrderId

            self.totalAmount = totalAmount

            self.aggregatorTransactionId = aggregatorTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
        }
    }
}
