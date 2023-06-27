

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var shipmentDetails: [RepaymentRequestDetails]?

        public var totalAmount: Double

        public var aggregatorOrderId: String

        public var extensionOrderId: String

        public var aggregatorTransactionId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentDetails = "shipment_details"

            case totalAmount = "total_amount"

            case aggregatorOrderId = "aggregator_order_id"

            case extensionOrderId = "extension_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.shipmentDetails = shipmentDetails

            self.totalAmount = totalAmount

            self.aggregatorOrderId = aggregatorOrderId

            self.extensionOrderId = extensionOrderId

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

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var shipmentDetails: [RepaymentRequestDetails]?

        public var totalAmount: Double

        public var aggregatorOrderId: String

        public var extensionOrderId: String

        public var aggregatorTransactionId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentDetails = "shipment_details"

            case totalAmount = "total_amount"

            case aggregatorOrderId = "aggregator_order_id"

            case extensionOrderId = "extension_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.shipmentDetails = shipmentDetails

            self.totalAmount = totalAmount

            self.aggregatorOrderId = aggregatorOrderId

            self.extensionOrderId = extensionOrderId

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

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
        }
    }
}
