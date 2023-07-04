

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var totalAmount: Double

        public var extensionOrderId: String

        public var shipmentDetails: [RepaymentRequestDetails]?

        public var aggregatorTransactionId: String

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case totalAmount = "total_amount"

            case extensionOrderId = "extension_order_id"

            case shipmentDetails = "shipment_details"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.totalAmount = totalAmount

            self.extensionOrderId = extensionOrderId

            self.shipmentDetails = shipmentDetails

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var totalAmount: Double

        public var extensionOrderId: String

        public var shipmentDetails: [RepaymentRequestDetails]?

        public var aggregatorTransactionId: String

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case totalAmount = "total_amount"

            case extensionOrderId = "extension_order_id"

            case shipmentDetails = "shipment_details"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.totalAmount = totalAmount

            self.extensionOrderId = extensionOrderId

            self.shipmentDetails = shipmentDetails

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}
