

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentMode: String

        public var outstandingDetailsId: Int

        public var aggregator: String

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var amount: Double

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public var aggregatorOrderId: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case outstandingDetailsId = "outstanding_details_id"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case amount

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentMode = paymentMode

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.amount = amount

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId

            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentMode: String

        public var outstandingDetailsId: Int

        public var aggregator: String

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var amount: Double

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public var aggregatorOrderId: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case outstandingDetailsId = "outstanding_details_id"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case amount

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentMode = paymentMode

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.amount = amount

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId

            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
