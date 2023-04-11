

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var aggregatorOrderId: String

        public var extensionOrderId: String

        public var shipmentDetails: [RepaymentRequestDetails]?

        public var aggregatorTransactionId: String

        public var totalAmount: Double

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case extensionOrderId = "extension_order_id"

            case shipmentDetails = "shipment_details"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case totalAmount = "total_amount"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.aggregatorOrderId = aggregatorOrderId

            self.extensionOrderId = extensionOrderId

            self.shipmentDetails = shipmentDetails

            self.aggregatorTransactionId = aggregatorTransactionId

            self.totalAmount = totalAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentDetailsSerialiserPayAll
         Used By: Payment
     */

    class RepaymentDetailsSerialiserPayAll: Codable {
        public var aggregatorOrderId: String

        public var extensionOrderId: String

        public var shipmentDetails: [RepaymentRequestDetails]?

        public var aggregatorTransactionId: String

        public var totalAmount: Double

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case extensionOrderId = "extension_order_id"

            case shipmentDetails = "shipment_details"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case totalAmount = "total_amount"
        }

        public init(aggregatorOrderId: String, aggregatorTransactionId: String, extensionOrderId: String, shipmentDetails: [RepaymentRequestDetails]? = nil, totalAmount: Double) {
            self.aggregatorOrderId = aggregatorOrderId

            self.extensionOrderId = extensionOrderId

            self.shipmentDetails = shipmentDetails

            self.aggregatorTransactionId = aggregatorTransactionId

            self.totalAmount = totalAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            extensionOrderId = try container.decode(String.self, forKey: .extensionOrderId)

            do {
                shipmentDetails = try container.decode([RepaymentRequestDetails].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(extensionOrderId, forKey: .extensionOrderId)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        }
    }
}