

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var extensionOrderId: String

        public var shipmentDetails: [RepaymentRequestDetails]?

        public var totalAmount: Double

        public var aggregatorTransactionId: String

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case extensionOrderId = "extension_order_id"

            case shipmentDetails = "shipment_details"

            case totalAmount = "total_amount"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.extensionOrderId = extensionOrderId

            self.shipmentDetails = shipmentDetails

            self.totalAmount = totalAmount

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}
