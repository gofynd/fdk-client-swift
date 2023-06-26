

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var aggregatorTransactionId: String

        public var extensionOrderId: String

        public var totalAmount: Double

        public var shipmentDetails: [RepaymentRequestDetails]?

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorTransactionId = "aggregator_transaction_id"

            case extensionOrderId = "extension_order_id"

            case totalAmount = "total_amount"

            case shipmentDetails = "shipment_details"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.aggregatorTransactionId = aggregatorTransactionId

            self.extensionOrderId = extensionOrderId

            self.totalAmount = totalAmount

            self.shipmentDetails = shipmentDetails

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

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
        public var aggregatorTransactionId: String

        public var extensionOrderId: String

        public var totalAmount: Double

        public var shipmentDetails: [RepaymentRequestDetails]?

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorTransactionId = "aggregator_transaction_id"

            case extensionOrderId = "extension_order_id"

            case totalAmount = "total_amount"

            case shipmentDetails = "shipment_details"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.aggregatorTransactionId = aggregatorTransactionId

            self.extensionOrderId = extensionOrderId

            self.totalAmount = totalAmount

            self.shipmentDetails = shipmentDetails

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}
