

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var outstandingDetailsId: Int

        public var aggregatorOrderId: String

        public var fwdShipmentId: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var amount: Double

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var aggregator: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case outstandingDetailsId = "outstanding_details_id"

            case aggregatorOrderId = "aggregator_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case paymentMode = "payment_mode"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.outstandingDetailsId = outstandingDetailsId

            self.aggregatorOrderId = aggregatorOrderId

            self.fwdShipmentId = fwdShipmentId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Double.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var outstandingDetailsId: Int

        public var aggregatorOrderId: String

        public var fwdShipmentId: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var amount: Double

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var aggregator: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case outstandingDetailsId = "outstanding_details_id"

            case aggregatorOrderId = "aggregator_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case paymentMode = "payment_mode"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.outstandingDetailsId = outstandingDetailsId

            self.aggregatorOrderId = aggregatorOrderId

            self.fwdShipmentId = fwdShipmentId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Double.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
